| %eax | Name      | %ebx           | %ecx         | %edx   | %esx | %edi |
| ---- | --------- | -------------- | ------------ | ------ | ---- | ---- |
| 1    | sys_exit  | int            | -            | -      | -    | -    |
| 2    | sys_fork  | struct pt_regs | -            | -      | -    | -    |
| 3    | sys_read  | unsigned int   | char\*       | size_t | -    | -    |
| 4    | sys_write | unsigned int   | const char\* | size_t | -    | -    |
| 5    | sys_open  | const char \*  | int          | int    | -    | -    |
| 6    | sys_close | unsigned int   | -            | -      | -    | -    |
