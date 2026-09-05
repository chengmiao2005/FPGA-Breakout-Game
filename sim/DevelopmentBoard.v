module DevelopmentBoard(
    input wire clk, // 50 MHz
    input wire reset,
    input wire B2,
    input wire B3,
    input wire B4,
    input wire B5,
    output wire h_sync,
    output wire v_sync,
    output wire [15:0] rgb,
    output wire led1,
    output wire led2,
    output wire led3,
    output wire led4,
    output wire led5
);

// Simulator key mapping: reset='a', B2='s', B3='d', B4='f', B5='g'.
reg [3:0] btn;
reg [3:0] btn_d1;
reg [3:0] btn_d2;

always @(posedge clk or negedge reset) begin
    if(!reset) begin
        btn    <= 4'b1111;
        btn_d1 <= 4'b1111;
        btn_d2 <= 4'b1111;
    end else begin
        btn    <= {B5, B4, B3, B2};
        btn_d1 <= btn;
        btn_d2 <= btn_d1;
    end
end

wire b2_fall = ~btn_d1[0] & btn_d2[0];
wire b3_fall = ~btn_d1[1] & btn_d2[1];
wire b5_fall = ~btn_d1[3] & btn_d2[3];

wire [2:0] vgaRgb;
wire [9:0] pix_x;
wire [9:0] pix_y;
wire [15:0] start_rgb;
wire lose;
reg [2:0] mode;

assign rgb = (mode == 3'd0 || mode == 3'd3)
           ? start_rgb
           : {{5{vgaRgb[2]}}, {6{vgaRgb[1]}}, {5{vgaRgb[0]}}};

// LEDs are not used by the Breakout design; keep them inactive in the simulator.
assign {led5, led4, led3, led2, led1} = 5'b11111;

reg clk25m;
always @(posedge clk or negedge reset) begin
    if(!reset)
        clk25m <= 1'b0;
    else
        clk25m <= ~clk25m;
end

always @(posedge clk or negedge reset) begin
    if(!reset) begin
        mode <= 3'd0;
    end else if(b2_fall && mode == 3'd0) begin
        mode <= 3'd1;
    end else if(b5_fall && mode == 3'd0) begin
        mode <= 3'd2;
    end else if(b3_fall && mode == 3'd0) begin
        mode <= 3'd4;
    end else if(lose && (mode == 3'd1 || mode == 3'd2)) begin
        mode <= 3'd3;
    end else if(b2_fall && mode == 3'd3) begin
        mode <= 3'd0;
    end
end

start_end start_end_inst(
    .clk(clk25m),
    .rst(~reset),
    .video_hs(h_sync),
    .video_vs(v_sync),
    .mode(mode[1:0]),
    .pixel_xpos(pix_x),
    .pixel_ypos(pix_y),
    .rgb565(start_rgb)
);

breakout_top breakout_top_inst(
    .clk(clk),
    .reset_n(reset),
    // B2/B5 are active-low selection buttons. AND gives an active-low
    // composite start signal when either selection button is pressed.
    .btn_start(B2 & B5),
    .btn_l(B3),
    .btn_r(B4),
    .mode(mode[2:1]),
    .hcount(pix_x),
    .vcount(pix_y),
    .rgb(vgaRgb),
    .lose(lose),
    .hsync(h_sync),
    .vsync(v_sync)
);

endmodule
