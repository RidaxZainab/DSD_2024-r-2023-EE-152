module struct_nums(
    input logic [3:0] nums,
    output logic a, b, c, d, e, f, g
);
    
    wire n4 = nums[0];
    wire n3 = nums[1];
    wire n2 = nums[2];
    wire n1 = nums[3];

    
    assign a = (~n1 & n2 & ~n3 & ~n4) | (~n1 & ~n2 & ~n3 & n4) | (n1 & n2 & ~n3 & n4) | (n1 & ~n2 & n3 & n4);

    
    assign b = (n1 & n2 & ~n4) | (n1 & n2 & n3) | (n2 & n3 & ~n4) | (~n1 & n2 & ~n3 & n4) | (n1 & ~n2 & n3 & n4);

    
    assign c = (n1 & n2 & ~n4) | (n1 & n2 & n3) | (~n1 & ~n2 & n3 & ~n4);

    
    assign d = (n2 & n3 & n4) | (~n1 & ~n2 & ~n3 & n4) | (~n1 & n2 & ~n3 & ~n4) | (n1 & ~n2 & n3 & ~n4);
    
    
    assign e = (~n1 & n4) | (~n1 & n2 & ~n3) | (~n2 & ~n3 & n4);
    
    
    assign f = (~n1 & ~n2 & n4) | (~n1 & ~n2 & n3) | (~n1 & n3 & n4) | (n1 & n2 & ~n3 & n4);
    
    
    assign g = (~n1 & ~n2 & ~n3) | (~n1 & n2 & n3 & n4) | (n1 & n2 & ~n3 & ~n4);
    
endmodule