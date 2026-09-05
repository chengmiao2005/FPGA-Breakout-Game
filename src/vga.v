module vga(
    input pxl_clk,
    input reset_n,
    output reg [9:0] hcount,
    output reg [9:0] vcount,
    output reg vsync,
    output reg hsync
);

    // 640 x 480 @ 60 Hz timing with an 800 x 525 total raster.
    always @(posedge pxl_clk or negedge reset_n) begin : hcounter
        if (!reset_n)
            hcount <= 10'd0;
        else if (hcount == 10'd799)
            hcount <= 10'd0;
        else
            hcount <= hcount + 1'b1;
    end

    always @(posedge pxl_clk or negedge reset_n) begin : vcounter
        if (!reset_n)
            vcount <= 10'd0;
        else if (hcount == 10'd799) begin
            if (vcount == 10'd524)
                vcount <= 10'd0;
            else
                vcount <= vcount + 1'b1;
        end
    end

    // Active-high sync pulses are retained for compatibility with the
    // repository's C++/OpenGL simulation wrapper.
    always @(posedge pxl_clk) begin : hsync_decoder
        if (hcount >= 10'd656 && hcount < 10'd752)
            hsync <= 1'b1;
        else
            hsync <= 1'b0;
    end

    always @(posedge pxl_clk) begin : vsync_decoder
        if (vcount >= 10'd490 && vcount < 10'd492)
            vsync <= 1'b1;
        else
            vsync <= 1'b0;
    end

endmodule
