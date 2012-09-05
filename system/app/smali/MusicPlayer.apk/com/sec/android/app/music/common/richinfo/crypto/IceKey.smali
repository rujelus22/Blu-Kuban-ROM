.class public Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;
.super Ljava/lang/Object;
.source "IceKey.java"


# static fields
.field private static final keyrot:[I

.field private static final pBox:[I

.field private static final sMod:[[I

.field private static final sXor:[[I

.field private static spBox:[[I

.field private static spBoxInitialised:Z


# instance fields
.field private keySchedule:[[I

.field private rounds:I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 20
    sput-boolean v3, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBoxInitialised:Z

    .line 22
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_5a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_66

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_72

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_7e

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sMod:[[I

    .line 34
    new-array v0, v2, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_8a

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_96

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_a2

    aput-object v1, v0, v5

    new-array v1, v2, [I

    fill-array-data v1, :array_ae

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sXor:[[I

    .line 46
    const/16 v0, 0x20

    new-array v0, v0, [I

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->pBox:[I

    .line 54
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_fe

    sput-object v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->keyrot:[I

    return-void

    .line 22
    :array_5a
    .array-data 0x4
        0x4dt 0x1t 0x0t 0x0t
        0x39t 0x1t 0x0t 0x0t
        0xf9t 0x1t 0x0t 0x0t
        0x71t 0x1t 0x0t 0x0t
    .end array-data

    :array_66
    .array-data 0x4
        0x7bt 0x1t 0x0t 0x0t
        0x77t 0x1t 0x0t 0x0t
        0x3ft 0x1t 0x0t 0x0t
        0x87t 0x1t 0x0t 0x0t
    .end array-data

    :array_72
    .array-data 0x4
        0x69t 0x1t 0x0t 0x0t
        0xbdt 0x1t 0x0t 0x0t
        0xc3t 0x1t 0x0t 0x0t
        0x8dt 0x1t 0x0t 0x0t
    .end array-data

    :array_7e
    .array-data 0x4
        0x8dt 0x1t 0x0t 0x0t
        0xa9t 0x1t 0x0t 0x0t
        0x8bt 0x1t 0x0t 0x0t
        0xf9t 0x1t 0x0t 0x0t
    .end array-data

    .line 34
    :array_8a
    .array-data 0x4
        0x83t 0x0t 0x0t 0x0t
        0x85t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
    .end array-data

    :array_96
    .array-data 0x4
        0xcct 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
    .end array-data

    :array_a2
    .array-data 0x4
        0x4bt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
    .end array-data

    :array_ae
    .array-data 0x4
        0xeat 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 46
    :array_ba
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x4t 0x0t 0x0t
        0x0t 0x20t 0x0t 0x0t
        0x0t 0x0t 0x8t 0x0t
        0x0t 0x0t 0x20t 0x0t
        0x0t 0x0t 0x0t 0x1t
        0x0t 0x0t 0x0t 0x40t
        0x8t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x80t 0x0t
        0x0t 0x0t 0x0t 0x4t
        0x0t 0x0t 0x0t 0x20t
        0x4t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x40t 0x0t
        0x0t 0x0t 0x0t 0x8t
        0x0t 0x0t 0x0t 0x10t
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x0t 0x8t 0x0t 0x0t
        0x0t 0x10t 0x0t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x10t 0x0t
        0x0t 0x0t 0x0t 0x2t
        0x0t 0x0t 0x0t 0x80t
    .end array-data

    .line 54
    :array_fe
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "level"

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-boolean v0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBoxInitialised:Z

    if-nez v0, :cond_d

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBoxInit()V

    .line 136
    sput-boolean v1, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBoxInitialised:Z

    .line 139
    :cond_d
    if-ge p1, v1, :cond_27

    .line 140
    iput v1, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->size:I

    .line 141
    const/16 v0, 0x8

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->rounds:I

    .line 147
    :goto_15
    iget v0, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->rounds:I

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->keySchedule:[[I

    .line 148
    return-void

    .line 143
    :cond_27
    iput p1, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->size:I

    .line 144
    mul-int/lit8 v0, p1, 0x10

    iput v0, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->rounds:I

    goto :goto_15
.end method

.method private gf_exp7(II)I
    .registers 5
    .parameter "b"
    .parameter "m"

    .prologue
    .line 83
    if-nez p1, :cond_4

    .line 84
    const/4 v1, 0x0

    .line 89
    :goto_3
    return v1

    .line 86
    :cond_4
    invoke-direct {p0, p1, p1, p2}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->gf_mult(III)I

    move-result v0

    .line 87
    .local v0, x:I
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->gf_mult(III)I

    move-result v0

    .line 88
    invoke-direct {p0, v0, v0, p2}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->gf_mult(III)I

    move-result v0

    .line 89
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->gf_mult(III)I

    move-result v1

    goto :goto_3
.end method

.method private gf_mult(III)I
    .registers 6
    .parameter "a"
    .parameter "b"
    .parameter "m"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, res:I
    :cond_1
    :goto_1
    if-eqz p2, :cond_12

    .line 65
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_8

    .line 66
    xor-int/2addr v0, p1

    .line 68
    :cond_8
    shl-int/lit8 p1, p1, 0x1

    .line 69
    ushr-int/lit8 p2, p2, 0x1

    .line 71
    const/16 v1, 0x100

    if-lt p1, v1, :cond_1

    .line 72
    xor-int/2addr p1, p3

    goto :goto_1

    .line 75
    :cond_12
    return v0
.end method

.method private perm32(I)I
    .registers 5
    .parameter "x"

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, res:I
    const/4 v0, 0x0

    .line 97
    .local v0, i:I
    :goto_2
    if-eqz p1, :cond_12

    .line 98
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_d

    .line 99
    sget-object v2, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->pBox:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 100
    :cond_d
    add-int/lit8 v0, v0, 0x1

    .line 101
    ushr-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 104
    :cond_12
    return v1
.end method

.method private roundFunc(I[I)I
    .registers 14
    .parameter "p"
    .parameter "subkey"

    .prologue
    const v10, 0xffc00

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 215
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0x3ff

    ushr-int/lit8 v5, p1, 0xe

    shl-int/lit8 v6, p1, 0x12

    or-int/2addr v5, v6

    and-int/2addr v5, v10

    or-int v2, v4, v5

    .line 216
    .local v2, tl:I
    and-int/lit16 v4, p1, 0x3ff

    shl-int/lit8 v5, p1, 0x2

    and-int/2addr v5, v10

    or-int v3, v4, v5

    .line 220
    .local v3, tr:I
    aget v4, p2, v9

    xor-int v5, v2, v3

    and-int v0, v4, v5

    .line 221
    .local v0, al:I
    xor-int v1, v0, v3

    .line 222
    .local v1, ar:I
    xor-int/2addr v0, v2

    .line 224
    aget v4, p2, v7

    xor-int/2addr v0, v4

    .line 225
    aget v4, p2, v8

    xor-int/2addr v1, v4

    .line 227
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    aget-object v4, v4, v7

    ushr-int/lit8 v5, v0, 0xa

    aget v4, v4, v5

    sget-object v5, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    aget-object v5, v5, v8

    and-int/lit16 v6, v0, 0x3ff

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    aget-object v5, v5, v9

    ushr-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    or-int/2addr v4, v5

    sget-object v5, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    const/4 v6, 0x3

    aget-object v5, v5, v6

    and-int/lit16 v6, v1, 0x3ff

    aget v5, v5, v6

    or-int/2addr v4, v5

    return v4
.end method

.method private scheduleBuild([III)V
    .registers 15
    .parameter "kb"
    .parameter "n"
    .parameter "krot_idx"

    .prologue
    .line 154
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v8, 0x8

    if-ge v3, v8, :cond_51

    .line 156
    sget-object v8, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->keyrot:[I

    add-int v9, p3, v3

    aget v6, v8, v9

    .line 157
    .local v6, kr:I
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->keySchedule:[[I

    add-int v9, p2, v3

    aget-object v7, v8, v9

    .line 159
    .local v7, subkey:[I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_12
    const/4 v8, 0x3

    if-ge v4, v8, :cond_21

    .line 160
    iget-object v8, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->keySchedule:[[I

    add-int v9, p2, v3

    aget-object v8, v8, v9

    const/4 v9, 0x0

    aput v9, v8, v4

    .line 159
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 162
    :cond_21
    const/4 v4, 0x0

    :goto_22
    const/16 v8, 0xf

    if-ge v4, v8, :cond_4e

    .line 164
    rem-int/lit8 v2, v4, 0x3

    .line 166
    .local v2, curr_sk:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_29
    const/4 v8, 0x4

    if-ge v5, v8, :cond_4b

    .line 167
    add-int v8, v6, v5

    and-int/lit8 v8, v8, 0x3

    aget v1, p1, v8

    .line 168
    .local v1, curr_kb:I
    and-int/lit8 v0, v1, 0x1

    .line 170
    .local v0, bit:I
    aget v8, v7, v2

    shl-int/lit8 v8, v8, 0x1

    or-int/2addr v8, v0

    aput v8, v7, v2

    .line 171
    add-int v8, v6, v5

    and-int/lit8 v8, v8, 0x3

    ushr-int/lit8 v9, v1, 0x1

    xor-int/lit8 v10, v0, 0x1

    shl-int/lit8 v10, v10, 0xf

    or-int/2addr v9, v10

    aput v9, p1, v8

    .line 166
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 162
    .end local v0           #bit:I
    .end local v1           #curr_kb:I
    :cond_4b
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 154
    .end local v2           #curr_sk:I
    .end local v5           #k:I
    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    .end local v4           #j:I
    .end local v6           #kr:I
    .end local v7           #subkey:[I
    :cond_51
    return-void
.end method

.method private spBoxInit()V
    .registers 12

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    const/4 v4, 0x4

    filled-new-array {v4, v10}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    sput-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    .line 113
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v10, :cond_9a

    .line 114
    ushr-int/lit8 v4, v1, 0x1

    and-int/lit16 v0, v4, 0xff

    .line 115
    .local v0, col:I
    and-int/lit8 v4, v1, 0x1

    and-int/lit16 v5, v1, 0x200

    ushr-int/lit8 v5, v5, 0x8

    or-int v2, v4, v5

    .line 118
    .local v2, row:I
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sXor:[[I

    aget-object v4, v4, v6

    aget v4, v4, v2

    xor-int/2addr v4, v0

    sget-object v5, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sMod:[[I

    aget-object v5, v5, v6

    aget v5, v5, v2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->gf_exp7(II)I

    move-result v4

    shl-int/lit8 v3, v4, 0x18

    .line 119
    .local v3, x:I
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    aget-object v4, v4, v6

    invoke-direct {p0, v3}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->perm32(I)I

    move-result v5

    aput v5, v4, v1

    .line 121
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sXor:[[I

    aget-object v4, v4, v7

    aget v4, v4, v2

    xor-int/2addr v4, v0

    sget-object v5, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sMod:[[I

    aget-object v5, v5, v7

    aget v5, v5, v2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->gf_exp7(II)I

    move-result v4

    shl-int/lit8 v3, v4, 0x10

    .line 122
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    aget-object v4, v4, v7

    invoke-direct {p0, v3}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->perm32(I)I

    move-result v5

    aput v5, v4, v1

    .line 124
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sXor:[[I

    aget-object v4, v4, v8

    aget v4, v4, v2

    xor-int/2addr v4, v0

    sget-object v5, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sMod:[[I

    aget-object v5, v5, v8

    aget v5, v5, v2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->gf_exp7(II)I

    move-result v4

    shl-int/lit8 v3, v4, 0x8

    .line 125
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    aget-object v4, v4, v8

    invoke-direct {p0, v3}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->perm32(I)I

    move-result v5

    aput v5, v4, v1

    .line 127
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sXor:[[I

    aget-object v4, v4, v9

    aget v4, v4, v2

    xor-int/2addr v4, v0

    sget-object v5, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->sMod:[[I

    aget-object v5, v5, v9

    aget v5, v5, v2

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->gf_exp7(II)I

    move-result v3

    .line 128
    sget-object v4, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->spBox:[[I

    aget-object v4, v4, v9

    invoke-direct {p0, v3}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->perm32(I)I

    move-result v5

    aput v5, v4, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_16

    .line 130
    .end local v0           #col:I
    .end local v2           #row:I
    .end local v3           #x:I
    :cond_9a
    return-void
.end method


# virtual methods
.method public encrypt([B[B)V
    .registers 9
    .parameter "plaintext"
    .parameter "ciphertext"

    .prologue
    const/4 v5, 0x4

    .line 233
    const/4 v1, 0x0

    .local v1, l:I
    const/4 v2, 0x0

    .line 235
    .local v2, r:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v5, :cond_1f

    .line 236
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x18

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 237
    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    rsub-int/lit8 v4, v4, 0x18

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 240
    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iget v3, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->rounds:I

    if-ge v0, v3, :cond_3b

    .line 241
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->keySchedule:[[I

    aget-object v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->roundFunc(I[I)I

    move-result v3

    xor-int/2addr v1, v3

    .line 242
    iget-object v3, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->keySchedule:[[I

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->roundFunc(I[I)I

    move-result v3

    xor-int/2addr v2, v3

    .line 240
    add-int/lit8 v0, v0, 0x2

    goto :goto_20

    .line 245
    :cond_3b
    const/4 v0, 0x0

    :goto_3c
    if-ge v0, v5, :cond_53

    .line 246
    rsub-int/lit8 v3, v0, 0x3

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 247
    rsub-int/lit8 v3, v0, 0x7

    and-int/lit16 v4, v1, 0xff

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 249
    ushr-int/lit8 v2, v2, 0x8

    .line 250
    ushr-int/lit8 v1, v1, 0x8

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 252
    :cond_53
    return-void
.end method

.method public set([B)V
    .registers 12
    .parameter "key"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 180
    new-array v2, v8, [I

    .line 182
    .local v2, kb:[I
    iget v3, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->rounds:I

    if-ne v3, v9, :cond_29

    .line 183
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v8, :cond_25

    .line 184
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v4, v0, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 186
    :cond_25
    invoke-direct {p0, v2, v7, v7}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->scheduleBuild([III)V

    .line 199
    :cond_28
    return-void

    .line 190
    .end local v0           #i:I
    :cond_29
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2a
    iget v3, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->size:I

    if-ge v0, v3, :cond_28

    .line 193
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2f
    if-ge v1, v8, :cond_4f

    .line 194
    rsub-int/lit8 v3, v1, 0x3

    mul-int/lit8 v4, v0, 0x8

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v0, 0x8

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 196
    :cond_4f
    mul-int/lit8 v3, v0, 0x8

    invoke-direct {p0, v2, v3, v7}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->scheduleBuild([III)V

    .line 197
    iget v3, p0, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->rounds:I

    add-int/lit8 v3, v3, -0x8

    mul-int/lit8 v4, v0, 0x8

    sub-int/2addr v3, v4

    invoke-direct {p0, v2, v3, v9}, Lcom/sec/android/app/music/common/richinfo/crypto/IceKey;->scheduleBuild([III)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method
