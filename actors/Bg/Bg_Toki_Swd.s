.section .text
func_80918F20:
    sw      a1, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80918F2C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_8091A4D4)      # a1 = 80920000
    addiu   a1, a1, %lo(var_8091A4D4)  # a1 = 8091A4D4
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    lui     a1, %hi(func_8091902C)     # a1 = 80920000
    addiu   a1, a1, %lo(func_8091902C) # a1 = 8091902C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80918F20
    swc1    $f4, 0x00BC(s0)            # 000000BC
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t6, 0x0004(v0)             # 8011A5D4
    addiu   a1, s0, 0x0140             # a1 = 00000140
    bnel    t6, $zero, lbl_80918F8C
    lw      t7, 0x1360(v0)             # 8011B930
    sw      $zero, 0x0134(s0)          # 00000134
    lw      t7, 0x1360(v0)             # 8011B930
lbl_80918F8C:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      t9, 0x0034($sp)
    bne     t7, $at, lbl_80918FA8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t9
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sh      t8, 0x1D30($at)            # 00011D30
lbl_80918FA8:
    lw      a0, 0x0034($sp)
    jal     func_8004AB7C
    sw      a1, 0x0024($sp)
    lui     a3, %hi(var_8091A4A0)      # a3 = 80920000
    addiu   a3, a3, %lo(var_8091A4A0)  # a3 = 8091A4A0
    lw      a0, 0x0034($sp)
    lw      a1, 0x0024($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    lw      a1, 0x0024($sp)
    lui     a2, %hi(var_8091A4CC)      # a2 = 80920000
    addiu   a2, a2, %lo(var_8091A4CC)  # a2 = 8091A4CC
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80919000:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8091902C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0014($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    addiu   s0, s0, 0xA5D0             # s0 = 8011A5D0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lhu     t6, 0x0EDC(s0)             # 8011B4AC
    andi    t7, t6, 0x8000             # t7 = 00000000
    bnel    t7, $zero, lbl_809190B4
    lw      t3, 0x0004(s0)             # 8011A5D4
    lw      t8, 0x1360(s0)             # 8011B930
    lw      a0, 0x0020($sp)
    lui     a1, 0x4448                 # a1 = 44480000
    slti    $at, t8, 0x0004
    beql    $at, $zero, lbl_809190B4
    lw      t3, 0x0004(s0)             # 8011A5D4
    jal     func_80021AD4
    addiu   a2, $zero, 0x7530          # a2 = 00007530
    beql    v0, $zero, lbl_809190B4
    lw      t3, 0x0004(s0)             # 8011A5D4
    jal     func_8009CB08
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_809190B0
    lui     t1, %hi(var_80919E50)      # t1 = 80920000
    lhu     t9, 0x0EDC(s0)             # 8011B4AC
    addiu   t1, t1, %lo(var_80919E50)  # t1 = 80919E50
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    ori     t0, t9, 0x8000             # t0 = 00008000
    sh      t0, 0x0EDC(s0)             # 8011B4AC
    sw      t1, 0x1D68(s1)             # 00001D68
    sb      t2, 0x1414(s0)             # 8011B9E4
lbl_809190B0:
    lw      t3, 0x0004(s0)             # 8011A5D4
lbl_809190B4:
    lw      a0, 0x0020($sp)
    bne     t3, $zero, lbl_809190D0
    nop
    lhu     t4, 0x0EDE(s0)             # 8011B4AE
    andi    t5, t4, 0x0020             # t5 = 00000000
    beql    t5, $zero, lbl_80919164
    lw      t0, 0x1360(s0)             # 8011B930
lbl_809190D0:
    jal     func_80022BB0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80919148
    lw      a0, 0x0020($sp)
    lw      t6, 0x0004(s0)             # 8011A5D4
    lui     t8, %hi(var_80919860)      # t8 = 80920000
    or      a0, s1, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_8091910C
    addiu   t8, t8, %lo(var_80919860)  # t8 = 80919860
    jal     func_8006FDCC
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    lui     t7, %hi(var_809193B0)      # t7 = 80920000
    addiu   t7, t7, %lo(var_809193B0)  # t7 = 809193B0
    b       lbl_80919110
    sw      t7, 0x1D68(s1)             # 00001D68
lbl_8091910C:
    sw      t8, 0x1D68(s1)             # 00001D68
lbl_80919110:
    lui     a0, 0x1000                 # a0 = 10000000
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 100000FF
    jal     func_800CAA70
    addiu   a0, $zero, 0x0053          # a0 = 00000053
    lw      a0, 0x0020($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x1414(s0)             # 8011B9E4
    lui     a1, %hi(func_809191A0)     # a1 = 80920000
    addiu   a1, a1, %lo(func_809191A0) # a1 = 809191A0
    jal     func_80918F20
    sw      $zero, 0x0118(a0)          # 00000118
    b       lbl_80919164
    lw      t0, 0x1360(s0)             # 8011B930
lbl_80919148:
    jal     func_80021A28
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    beq     v0, $zero, lbl_80919160
    lw      a0, 0x0020($sp)
    jal     func_80022D20
    or      a1, s1, $zero              # a1 = 00000000
lbl_80919160:
    lw      t0, 0x1360(s0)             # 8011B930
lbl_80919164:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     t0, $at, lbl_8091918C
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s1, $at
    lh      v1, 0x1D30(v0)             # 00001D30
    blez    v1, lbl_80919188
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    b       lbl_8091918C
    sh      t1, 0x1D30(v0)             # 00001D30
lbl_80919188:
    sh      $zero, 0x1D30(v0)          # 00001D30
lbl_8091918C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_809191A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022BB0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80919204
    lw      a0, 0x0018($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    lui     t7, %hi(func_809192C8)     # t7 = 80920000
    addiu   a1, $zero, 0x182D          # a1 = 0000182D
    beq     t6, $zero, lbl_809191EC
    addiu   t7, t7, %lo(func_809192C8) # t7 = 809192C8
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    b       lbl_809191F0
    sw      $zero, 0x0134(a0)          # 00000134
lbl_809191EC:
    sw      t7, 0x0134(a0)             # 00000134
lbl_809191F0:
    lui     a1, %hi(func_80919220)     # a1 = 80920000
    jal     func_80918F20
    addiu   a1, a1, %lo(func_80919220) # a1 = 80919220
    b       lbl_80919214
    lw      $ra, 0x0014($sp)
lbl_80919204:
    lw      t8, 0x001C($sp)
    lw      v0, 0x1C44(t8)             # 00001C44
    sw      a0, 0x0428(v0)             # 00000428
    lw      $ra, 0x0014($sp)
lbl_80919214:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80919220:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_8005991C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beql    v0, $zero, lbl_80919268
    lw      $ra, 0x0014($sp)
    lw      v0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, v0, $at
    lh      v1, 0x1D30(v0)             # 00001D30
    slti    $at, v1, 0x00FF
    beq     $at, $zero, lbl_80919264
    addiu   t6, v1, 0x0005             # t6 = 00000005
    sh      t6, 0x1D30(v0)             # 00001D30
lbl_80919264:
    lw      $ra, 0x0014($sp)
lbl_80919268:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80919274:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    sw      a3, 0x0018($sp)
    lw      t9, 0x013C(a3)             # 0000013C
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      a0, 0x001C($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, a3, 0x0140             # a2 = 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809192C8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0020($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sw      a0, 0x0050($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      a0, 0x0050($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    lui     a2, 0x0001                 # a2 = 00010000
    addu    a2, a2, s1
    sw      t7, 0x0000(v1)             # 00000000
    lw      a2, 0x1DE4(a2)             # 00011DE4
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    andi    a2, a2, 0x007F             # a2 = 00000000
    subu    a2, $zero, a2
    sw      t8, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    jal     func_8007EB00
    sw      v1, 0x0030($sp)
    lw      t0, 0x0030($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x1BD0             # t4 = 06001BD0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    nop

.section .data

var_809193B0: .word \
0x00000009, 0x000001A9, 0x0000000A, 0x00000001, \
0x000C0000, 0x01000000, 0x00000000, 0x00000000, \
0x00000036, 0x00000034, 0x00000000, 0x00000036, \
0x00000034, 0x00000000, 0x00000000, 0x00000000, \
0x00000004, 0x00000001, 0x0002006E, 0x006F0000, \
0x00000000, 0x00000000, 0xFFFFFFE3, 0xFFFFFFC5, \
0x00000000, 0xFFFFFFE3, 0xFFFFFFC5, 0x00000000, \
0x00000000, 0x00000000, 0x00000003, 0x00000001, \
0x000A006E, 0x006F0000, 0x00000000, 0x00000000, \
0x0000002E, 0xFFFFFFE6, 0x00000000, 0x0000002E, \
0xFFFFFFE6, 0x00000000, 0x00000000, 0x00000000, \
0x000003E8, 0x00000001, 0x000800E6, 0x00E700E7, \
0x0000002D, 0x00000001, 0x000100D2, 0x00E600E6, \
0x00000001, 0x00010000, 0x00F10000, 0x00000000, \
0x42700000, 0xFFD60048, 0xFFD9018C, 0x00000000, \
0x42700000, 0xFFD60048, 0xFFD9019D, 0x00000000, \
0x42700000, 0xFFD60048, 0xFFD901AE, 0x00000000, \
0x42700000, 0xFFD60048, 0xFFD902A8, 0x00000000, \
0x42700000, 0xFFD60048, 0xFFD90000, 0x00000000, \
0x42700000, 0xFFD60048, 0xFFD9007A, 0x00000000, \
0x42700000, 0xFFD60048, 0xFFD90064, 0x00000000, \
0x42700000, 0xFFD60048, 0xFFD90074, 0xFF000000, \
0x42700000, 0xFFD60048, 0xFFD9005F, 0x00000001, \
0x00010050, 0x01960000, 0x00000000, 0x42700000, \
0xFFFF005F, 0xFFED2F73, 0x00000000, 0x42700000, \
0xFFFF005F, 0xFFED6B2F, 0x00000000, 0x42700000, \
0xFFFF005F, 0xFFED6169, 0x00000000, 0x42700000, \
0xFFFF005F, 0xFFED0000, 0x00000000, 0x42700000, \
0xFFFF005F, 0xFFED0005, 0x00000000, 0x42700000, \
0xFFFF0081, 0xFFDE7961, 0x00000000, 0x42700000, \
0xFFFF00AD, 0xFFED742F, 0x00000000, 0x42700000, \
0xFFEF00D9, 0xFFEC2E64, 0x00000000, 0x42700000, \
0xFFE80148, 0xFFF40000, 0x00000000, 0x42700000, \
0xFFE501FD, 0xFFFE2F73, 0x00000000, 0x42700000, \
0xFFD7032D, 0x000A6B2F, 0x00000000, 0x42700000, \
0xFFC40505, 0x00266D61, 0x00000000, 0x42700000, \
0xFFC60776, 0x005B0000, 0x00000000, 0x42700000, \
0xFFCB09DE, 0x00850005, 0x00000000, 0x42700000, \
0xFFDF0D75, 0x00C17961, 0x00000000, 0x42700000, \
0x00000F78, 0x00E1742F, 0x00000000, 0x42700000, \
0x000710DD, 0x00F56565, 0x00000000, 0x42700000, \
0x000710DC, 0x00F50000, 0x00000000, 0x42700000, \
0x000710DC, 0x00F52F73, 0xFF000000, 0x42700000, \
0x000710DC, 0x00F56B2F, 0x00000002, 0x00010000, \
0x010E0000, 0x0000001E, 0x42700000, 0xFFEC0055, \
0xFFF72F73, 0x0000001E, 0x42700000, 0xFFEC0055, \
0xFFF76B2F, 0x0000001E, 0x42700000, 0xFFEC0055, \
0xFFF76169, 0x0000001E, 0x42700000, 0xFFEC0055, \
0xFFF70000, 0x0000001E, 0x42700000, 0xFFEC0055, \
0xFFF70005, 0x0000001E, 0x42700000, 0xFFEC0055, \
0xFFF77961, 0x0000001E, 0x42700000, 0xFFEC0055, \
0xFFF7742F, 0x0000001E, 0x42700000, 0xFFEC0055, \
0xFFF72E64, 0xFF00001E, 0x42700000, 0xFFEC0055, \
0xFFF70000, 0x00000002, 0x00010050, 0x01A90000, \
0x00000005, 0x42700000, 0xFFFF0070, 0x00072F73, \
0x00000005, 0x42700000, 0xFFFF0070, 0x00076B2F, \
0x00000005, 0x42700000, 0xFFFF0070, 0x00076169, \
0x00000005, 0x42700000, 0xFFFF0070, 0x00070000, \
0x0000000F, 0x42700000, 0xFFFF0070, 0x00070005, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00077961, \
0x00000019, 0x42700000, 0xFFFF0075, 0x0007742F, \
0x00000019, 0x42700000, 0xFFFF0075, 0x00072E64, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00070000, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00072F73, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00076B2F, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00076D61, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00070000, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00070005, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00077961, \
0x00000014, 0x42700000, 0xFFFF0075, 0x0007742F, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00076565, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00070000, \
0x00000014, 0x42700000, 0xFFFF0075, 0x00072F73, \
0xFF000014, 0x42700000, 0xFFFF0075, 0x00076B2F, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_80919860: .word \
0x00000009, 0x00000170, 0x00000001, 0x00010000, \
0x007E0000, 0x00000000, 0x42700000, 0xFFFF0065, \
0xFF92616D, 0x00000000, 0x42200000, 0xFFFF0065, \
0xFF926964, 0x00000000, 0x42200000, 0xFFFF0065, \
0xFF9200FB, 0x00000000, 0x42200000, 0xFFFF0065, \
0xFF920111, 0x00000000, 0x42200000, 0xFFFF0065, \
0xFF93012D, 0x00000000, 0x42200000, 0xFFFF0047, \
0xFF920033, 0x00000000, 0x42200000, 0xFFFF0048, \
0xFF9200FB, 0x00000000, 0x42200000, 0xFFFF0048, \
0xFF9200FB, 0x00000000, 0x42200000, 0xFFFF0048, \
0xFF922F68, 0xFF000000, 0x42200000, 0xFFFF0048, \
0xFF92612F, 0x00000001, 0x0001003A, 0x01530000, \
0x00000000, 0x42700001, 0xFFF7006A, 0xFFFDA1BC, \
0x00000000, 0x42700000, 0xFFF7006A, 0xFFFDA5F3, \
0x00000000, 0x42700000, 0xFFF7006A, 0xFFFDA5EB, \
0x00000000, 0x42700000, 0xFFF7006A, 0xFFFDA5A2, \
0x00000000, 0x42700000, 0xFFBD006C, 0xFFCBBAEE, \
0x00000000, 0x42700000, 0xFFBD006C, 0xFFCBC9B8, \
0x00000000, 0x42700000, 0xFFBD006C, 0xFFCB0020, \
0x00000000, 0x42700000, 0xFFBD006C, 0xFFCBA5A4, \
0x00000000, 0x42700000, 0xFFBD006C, 0xFFCB0020, \
0x00000000, 0x42700000, 0xFFAD0066, 0xFFD6A5E1, \
0x00000000, 0x42700000, 0xFF8C0051, 0xFFEDA5D0, \
0x00000000, 0x42700000, 0xFF8A0051, 0x00360020, \
0x00000000, 0x42700000, 0xFF96004E, 0x0074A5A6, \
0x00000000, 0x42700000, 0xFFE5004B, 0x00E2A5E5, \
0x00000000, 0x42700000, 0x00790052, 0x0138C0AE, \
0x00000000, 0x42700000, 0x0128004C, 0x0176A5E5, \
0x00000000, 0x42700000, 0x02350050, 0x01010020, \
0x00000000, 0x42700000, 0x02660050, 0xFFFFA5EB, \
0x00000000, 0x42700000, 0x02520050, 0xFF6FA5E1, \
0x00000000, 0x42700000, 0x01DB0050, 0xFE840020, \
0x00000000, 0x42700000, 0x01430050, 0xFDFFA5E1, \
0x00000000, 0x42700000, 0x00C00050, 0xFDC2A5D0, \
0x00000000, 0x42700000, 0xFFD30050, 0xFDA40020, \
0x00000000, 0x42700000, 0xFF720050, 0xFDB3A5A6, \
0x00000000, 0x42700000, 0xFF1C0050, 0xFDCEA5E5, \
0x00000000, 0x42700000, 0xFE88005D, 0xFE23C0AE, \
0x00000000, 0x42700000, 0xFDB8005F, 0xFF49A5E5, \
0x00000000, 0x42700000, 0xFD9B005F, 0xFFDE0020, \
0xFF000000, 0x42700000, 0xFDAD005F, 0x00A1A5EB, \
0x00000002, 0x00010000, 0x009B0000, 0x00000005, \
0x4221999A, 0xFFFF006F, 0x0005A1BC, 0x00000005, \
0x42200000, 0xFFFF006F, 0x0005A5F3, 0x00000005, \
0x42200000, 0xFFFF006F, 0x0005A5EB, 0x0000000F, \
0x42200000, 0xFFFF006F, 0x0005A5A2, 0x0000000F, \
0x42200000, 0xFFFF006F, 0x0005BAEE, 0x0000000F, \
0x42200000, 0xFFFF0068, 0x0008C9B8, 0x00000005, \
0x42200000, 0xFFFF0068, 0x00080020, 0x0000001E, \
0x42200000, 0xFFFF0068, 0x0008A5A4, 0x0000001E, \
0x42200000, 0xFFFF0068, 0x00080020, 0xFF00001E, \
0x42200000, 0xFFFF0068, 0x0008A5E1, 0x00000002, \
0x0001003A, 0x01700000, 0x00000005, 0x42700001, \
0x00000078, 0x000CA1BC, 0x00000005, 0x42700000, \
0x00000078, 0x000CA5F3, 0x00000005, 0x42700000, \
0x00000078, 0x000CA5EB, 0x0000000A, 0x42700000, \
0x00000078, 0x000CA5A2, 0x00000005, 0x42700000, \
0xFFFF005F, 0x000BBAEE, 0x00000005, 0x42700000, \
0xFFFF005F, 0x000BC9B8, 0x00000005, 0x42700000, \
0xFFFF005F, 0x000B0020, 0x00000005, 0x42700000, \
0xFFFF005F, 0x000BA5A4, 0x00000005, 0x42700000, \
0xFFFF005F, 0x000B0020, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x0008A5E1, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x0008A5D0, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x00080020, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x0008A5A6, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x0008A5E5, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x0008C0AE, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x0008A5E5, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x00080020, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x0008A5EB, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x0008A5E1, 0x0000000A, 0x42700000, \
0xFFFD005F, 0x00080020, 0x0000000F, 0x42700000, \
0xFFFD005F, 0x0008A5E1, 0x0000000F, 0x42700000, \
0xFFFD005F, 0x0008A5D0, 0x0000000F, 0x42700000, \
0xFFFD005F, 0x00080020, 0x0000000F, 0x42700000, \
0xFFFD005F, 0x0008A5A6, 0x0000000F, 0x42700000, \
0xFFFD005F, 0x0008A5E5, 0x0000000F, 0x42700000, \
0xFFFD005F, 0x0008C0AE, 0x0000000F, 0x42700000, \
0xFFFD005F, 0x0008A5E5, 0x0000000F, 0x42700000, \
0xFFFD005F, 0x00080020, 0xFF00001E, 0x42700000, \
0xFFFD005F, 0x0008A5EB, 0x0000000A, 0x00000001, \
0x000C0000, 0x00B40000, 0x00000000, 0x00000000, \
0x0000001C, 0xFFFFFFF6, 0x00000000, 0xFFFFFFF2, \
0x00000009, 0x00000000, 0xBE6EEEEF, 0x00000000, \
0x00000004, 0x00000001, 0x0002005A, 0x005B0000, \
0x00000000, 0x00000000, 0xFFFFFFF2, 0x00000024, \
0x00000000, 0xFFFFFFF2, 0x00000024, 0x00000000, \
0x00000000, 0x00000000, 0x00000003, 0x00000001, \
0x000A005A, 0x005B0000, 0x00000000, 0x00000000, \
0xFFFFFFF8, 0xFFFFFFDD, 0x00000000, 0xFFFFFFF8, \
0xFFFFFFDD, 0x00000000, 0x00000000, 0x00000000, \
0x0000002D, 0x00000001, 0x000100BE, 0x00D200D2, \
0x000003E8, 0x00000001, 0x000800D2, 0x00D300D3, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_80919E50: .word \
0x0000000B, 0x00000BB8, 0x00000021, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFF8, 0xFFFFFFFF, 0x00000000, 0xFFFFFFF8, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000, \
0x0000000A, 0x00000003, 0x00050000, 0x00010000, \
0x80000000, 0x00000000, 0x00000000, 0x00000334, \
0x00000000, 0x00000000, 0x00000334, 0x00000000, \
0x00000000, 0x00000001, 0x00020001, 0x00100000, \
0x80000000, 0x00000000, 0x00000000, 0x00000334, \
0x00000000, 0x00000000, 0x000002D0, 0x00000000, \
0x00000000, 0x00000001, 0x00050010, 0x00B00000, \
0x80000000, 0x00000000, 0x00000000, 0x000002D0, \
0x00000000, 0x00000000, 0x000002D0, 0x00000000, \
0x00000000, 0x00000001, 0x0000003E, 0x00000003, \
0x00040028, 0x00467D74, 0x00000000, 0xFFFFFFFF, \
0x00000031, 0x000002CF, 0x00000001, 0x0000002F, \
0x000002AF, 0x3D888889, 0xBD888889, 0xBD888889, \
0x00040046, 0x00DC8010, 0x00000000, 0x00000001, \
0x0000002F, 0x000002AF, 0x00000000, 0x00000086, \
0x00000015, 0xBBDA740E, 0x3F147AE1, 0x3BDA740E, \
0x000200DC, 0x01108000, 0x00000000, 0x00000000, \
0x00000086, 0x00000015, 0x00000000, 0x00000065, \
0x00000002, 0x00000000, 0xBF227627, 0x00000000, \
0x00000003, 0x00000001, 0x000C0154, 0x01550000, \
0x00000000, 0xFFFFFFFF, 0x00000000, 0xFFFFFFFD, \
0xFFFFFFFF, 0x00000000, 0xFFFFFFFD, 0x00000000, \
0x00000000, 0x00000000, 0x00000013, 0x00000006, \
0xFFFF0000, 0x0032FFFF, 0xFFFFFFFF, 0x70E60032, \
0x003C0000, 0x00000000, 0xFFFF003C, 0x00FAFFFF, \
0xFFFFFFFF, 0x70E700FA, 0x01040000, 0x00000000, \
0xFFFF0104, 0x0122FFFF, 0xFFFFFFFF, 0x70E80122, \
0x01400000, 0x00000000, 0x00000001, 0x00010000, \
0x00FB0000, 0x00000000, 0x42700000, 0xFFC5000C, \
0x02B20222, 0x00000000, 0x42700000, 0xFFC5000C, \
0x02B200FA, 0x00000000, 0x42700000, 0xFFC5000C, \
0x02B20000, 0x00000000, 0x42700000, 0xFFC5000C, \
0x02B20000, 0x00000000, 0x42700000, 0xFFC5000C, \
0x02B20000, 0x00000000, 0x42700000, 0xFFE10018, \
0x02BD0000, 0x00000000, 0x42700000, 0xFFE10018, \
0x02BD0000, 0x00000000, 0x42700000, 0xFFE10018, \
0x02BD0000, 0x00000000, 0x42700000, 0xFFE10018, \
0x02BD2D70, 0x00000000, 0x42700000, 0xFFE10018, \
0x02BD0085, 0x00000000, 0x42700000, 0xFFE10018, \
0x02BD01E6, 0xFF000000, 0x42700000, 0xFFE10018, \
0x02BD0000, 0x00000001, 0x0001005A, 0x014B0000, \
0x00000000, 0x42700000, 0xFF66005C, 0x00EC0222, \
0x00000000, 0x42700000, 0xFF66005C, 0x00EC00FA, \
0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, \
0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, \
0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, \
0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, \
0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, \
0x00000000, 0x42700000, 0xFF66005C, 0x00EC0000, \
0xFF000000, 0x42700000, 0xFF66005C, 0x00EC2D70, \
0x00000001, 0x000100DC, 0x01EB0000, 0x00000000, \
0x42700001, 0xFFFE007A, 0x00270222, 0x00000000, \
0x42700001, 0xFFFE007A, 0x002700FA, 0x00000000, \
0x42700001, 0xFFFE0066, 0x00270000, 0x00000000, \
0x42700001, 0xFFFE005A, 0x00270000, 0x00000000, \
0x42700001, 0xFFFE0051, 0x003E0000, 0x00000000, \
0x42700001, 0xFFFE0051, 0x003E0000, 0x00000000, \
0x42700001, 0xFFFE0051, 0x003E0000, 0x00000000, \
0x42700001, 0xFFFE0051, 0x003E0000, 0x00000000, \
0x42700001, 0xFFFE0051, 0x003E2D70, 0xFF000000, \
0x42700001, 0xFFFE0051, 0x003E0085, 0x00000002, \
0x00010000, 0x01180000, 0x0000001E, 0x42700000, \
0x002B0034, 0x02CC0222, 0x0000001E, 0x42700000, \
0x002B0034, 0x02CC00FA, 0x0000000A, 0x42700000, \
0x002B0034, 0x02CC0000, 0x0000000A, 0x42700000, \
0x002B0034, 0x02CC0000, 0x0000000A, 0x42700000, \
0x002B0034, 0x02CC0000, 0x0000000A, 0x42700000, \
0x003F0056, 0x02D20000, 0x0000001E, 0x42700000, \
0x003F0056, 0x02D20000, 0x0000001E, 0x42700000, \
0x003F0056, 0x02D20000, 0x0000001E, 0x42700000, \
0x003F0056, 0x02D22D70, 0x0000001E, 0x42700000, \
0x003F0055, 0x02D10085, 0x0000001E, 0x42700000, \
0x003F0055, 0x02D101E6, 0xFF00001E, 0x42700000, \
0x003E0055, 0x02D10000, 0x00000002, 0x0001005A, \
0x01680000, 0x0000001E, 0x42700000, 0xFF970053, \
0x016E0222, 0x0000001E, 0x42700000, 0xFF980053, \
0x016C00FA, 0x0000001E, 0x42700000, 0xFFC10053, \
0x01530000, 0x0000001E, 0x42700000, 0xFFF00063, \
0x00FF0000, 0x0000001E, 0x42700000, 0xFFE2006F, \
0x00B10000, 0x0000001E, 0x42700000, 0xFFB00070, \
0x00790000, 0x0000001E, 0x42700000, 0xFFB00070, \
0x00790000, 0x0000001E, 0x42700000, 0xFFB00070, \
0x00790000, 0xFF00001E, 0x42700000, 0xFFB00070, \
0x00792D70, 0x00000002, 0x000100DC, 0x02080000, \
0x0000001E, 0x42700001, 0x00000089, 0xFFC90222, \
0x0000001E, 0x42700001, 0x00000089, 0xFFC900FA, \
0x0000001E, 0x42700001, 0x00000075, 0xFFC90000, \
0x0000001E, 0x42700001, 0x00000069, 0xFFC90000, \
0x0000001E, 0x42700001, 0x00000062, 0xFFE10000, \
0x0000001E, 0x42700001, 0x00000062, 0xFFE10000, \
0x0000001E, 0x42700001, 0x00000062, 0xFFE10000, \
0x0000001E, 0x42700001, 0x00000062, 0xFFE10000, \
0x0000001E, 0x42700001, 0x00000062, 0xFFE12D70, \
0xFF00001E, 0x42700001, 0x00000062, 0xFFE10085, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_8091A480: .word 0x006C0600, 0x00000010, 0x005E0000, 0x0000018C
.word func_80918F2C
.word func_80919000
.word func_80919274
.word func_809192C8
var_8091A4A0: .word \
0x0A000039, 0x12010000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00000100, \
0x000A0046, 0x00000000, 0x00000000
var_8091A4CC: .word 0x0A000023, 0x0064FF00
var_8091A4D4: .word 0x48500019, 0x00000000, 0x00000000

.section .rodata


