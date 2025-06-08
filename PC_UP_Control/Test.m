% 原始数据
x = int32(-117);                  % 有符号整数
x_u32 = typecast(x, 'uint32');    % 按位解释为 uint32 补码表示

% 与掩码按位与
mask = uint32(0x0000FF00);
result = bitand(x_u32, mask);

% 打印十六进制结果（32位对齐）
fprintf('原始值 -117 的32位补码十六进制为: 0x%08X\n', x_u32);
fprintf('按位与结果为:                  0x%08X\n', result);