Health:

    Default:
    01411f15da = F3:0F110F
    01411f15de = F345:0F58D8

    New Opcodes:
    01411f15da = 90
    01411f15db = 90
    01411f15dc = 90
    01411f15dd = 90
    01411f15de = 90
    01411f15df = 90
    01411f15d0 = 90
    01411f15d1 = 90
    01411f15d2 = 90

_______________________________________________________________________________________________________________________________________
Primary and Secondary Infinite Ammo:
    Infinite Ammo Default: 
    0000000147CF0A50 | 6644:891C48              | mov word ptr ds:[rax+rcx*2],r11w        | Main weapon descrease ammo

    Infinte Ammo New Opcodes:
    0000000147CF0A50 | 90                       | nop                                     | Main weapon descrease ammo
    0000000147CF0A51 | 90                       | nop                                     |
    0000000147CF0A52 | 90                       | nop                                     |
    0000000147CF0A53 | 90                       | nop                                     |
    0000000147CF0A54 | 90                       | nop                                     |
    
    Max Ammo Display Default:
    000000014629E420 | 46:890418                | mov dword ptr ds:[rax+r11],r8d          |
    000000014629E424 | 46:898C19 84010000       | mov dword ptr ds:[rcx+r11+184],r9d      | Decrement Max Ammo Value

    Max Ammo Display New Opcodes:
    000000014629E420 | 90                       | nop                                     |
    000000014629E421 | 90                       | nop                                     |
    000000014629E422 | 90                       | nop                                     |
    000000014629E423 | 90                       | nop                                     |
    000000014629E424 | 90                       | nop                                     | Decrement Max Ammo Value
    000000014629E425 | 90                       | nop                                     |
    000000014629E426 | 90                       | nop                                     |
    000000014629E427 | 90                       | nop                                     |
    000000014629E428 | 90                       | nop                                     |
    000000014629E429 | 90                       | nop                                     |
    000000014629E42A | 90                       | nop                                     |
    000000014629E42B | 90                       | nop                                     |

____________________________________________________________________________________________________________________________________
Infinite Special Ammo:

    Special Ammo Default: 
    0000000147CF0CF2 | 6641:891400              | mov word ptr ds:[r8+rax],dx             |

    Special Ammo Opcodes: 
    0000000147CF0CF2 | 90                       | nop                                     | Check value of special ammo
    0000000147CF0CF3 | 90                       | nop                                     |
    0000000147CF0CF4 | 90                       | nop                                     |
    0000000147CF0CF5 | 90                       | nop                                     |
    0000000147CF0CF6 | 90                       | nop                                     |

____________________________________________________________________________________________________________________________________
No Recoil
    148432A3B

    No Recoil Default:
    0000000148432A3B | F3:0F1196 B8000000       | movss dword ptr ds:[rsi+B8],xmm2        |

    No Recoil Opcodes:
    0000000148432A3B | 90                       | nop                                     |
    0000000148432A3C | 90                       | nop                                     |
    0000000148432A3D | 90                       | nop                                     |
    0000000148432A3E | 90                       | nop                                     |
    0000000148432A3F | 90                       | nop                                     |
    0000000148432A40 | 90                       | nop                                     |
    0000000148432A41 | 90                       | nop                                     |
    0000000148432A42 | 90                       | nop                                     |

No Sway 
    148437FD6
    
    No Sway Default:
    0000000148437FD6 | F344:0F1196 C8000000     | movss dword ptr ds:[rsi+C8],xmm10       | Sway

    No Sway Opcodes:
    0000000148437FD6 | 90                       | nop                                     | Sway
    0000000148437FD7 | 90                       | nop                                     |
    0000000148437FD8 | 90                       | nop                                     |
    0000000148437FD9 | 90                       | nop                                     |
    0000000148437FDA | 90                       | nop                                     |
    0000000148437FDB | 90                       | nop                                     |
    0000000148437FDC | 90                       | nop                                     |
    0000000148437FDD | 90                       | nop                                     |
    0000000148437FDE | 90                       | nop                                     |