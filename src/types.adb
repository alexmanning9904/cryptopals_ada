package body Types is

    function "xor" (Left, Right : Byte_Array) return Byte_Array is
        Output : Byte_Array(1 .. Left'Length);
    begin
        for I in Output'Range loop
            Output(I) := Left(I) xor Right((I - 1) mod Right'Length + 1);
        end loop;

        return Output;
    end "xor";

    function "xor" (Left : Byte_Array; Right : Byte) return Byte_Array is
        Output : Byte_Array(1 .. Left'Length);
    begin
        for I in Output'Range loop
            Output(I) := Left(I) xor Right;
        end loop;

        return Output;
    end "xor";
end Types;