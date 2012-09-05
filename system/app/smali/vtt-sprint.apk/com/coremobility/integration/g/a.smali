.class public final Lcom/coremobility/integration/g/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v0, 0x0

    const/16 v1, 0xff

    new-array v1, v1, [B

    sput-object v1, Lcom/coremobility/integration/g/a;->a:[B

    const/16 v1, 0x40

    new-array v1, v1, [B

    sput-object v1, Lcom/coremobility/integration/g/a;->b:[B

    move v1, v0

    :goto_16
    const/16 v2, 0xff

    if-ge v1, v2, :cond_22

    sget-object v2, Lcom/coremobility/integration/g/a;->a:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_22
    const/16 v1, 0x5a

    :goto_24
    const/16 v2, 0x41

    if-lt v1, v2, :cond_32

    sget-object v2, Lcom/coremobility/integration/g/a;->a:[B

    add-int/lit8 v3, v1, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    :cond_32
    const/16 v1, 0x7a

    :goto_34
    const/16 v2, 0x61

    if-lt v1, v2, :cond_44

    sget-object v2, Lcom/coremobility/integration/g/a;->a:[B

    add-int/lit8 v3, v1, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_44
    const/16 v1, 0x39

    :goto_46
    const/16 v2, 0x30

    if-lt v1, v2, :cond_56

    sget-object v2, Lcom/coremobility/integration/g/a;->a:[B

    add-int/lit8 v3, v1, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    :cond_56
    sget-object v1, Lcom/coremobility/integration/g/a;->a:[B

    aput-byte v7, v1, v5

    sget-object v1, Lcom/coremobility/integration/g/a;->a:[B

    aput-byte v8, v1, v6

    move v1, v0

    :goto_5f
    const/16 v2, 0x19

    if-gt v1, v2, :cond_6d

    sget-object v2, Lcom/coremobility/integration/g/a;->b:[B

    add-int/lit8 v3, v1, 0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    :cond_6d
    const/16 v1, 0x1a

    move v2, v1

    move v1, v0

    :goto_71
    const/16 v3, 0x33

    if-gt v2, v3, :cond_81

    sget-object v3, Lcom/coremobility/integration/g/a;->b:[B

    add-int/lit8 v4, v1, 0x61

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    :cond_81
    const/16 v1, 0x34

    :goto_83
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_93

    sget-object v2, Lcom/coremobility/integration/g/a;->b:[B

    add-int/lit8 v3, v0, 0x30

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_83

    :cond_93
    sget-object v0, Lcom/coremobility/integration/g/a;->b:[B

    aput-byte v5, v0, v7

    sget-object v0, Lcom/coremobility/integration/g/a;->b:[B

    aput-byte v6, v0, v8

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .registers 14

    const/16 v12, 0x3d

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    rem-int/lit8 v5, v0, 0x18

    div-int/lit8 v6, v0, 0x18

    if-eqz v5, :cond_6a

    add-int/lit8 v0, v6, 0x1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    :goto_11
    const/4 v1, 0x0

    move v4, v1

    :goto_13
    if-ge v4, v6, :cond_83

    mul-int/lit8 v1, v4, 0x3

    aget-byte v2, p0, v1

    add-int/lit8 v3, v1, 0x1

    aget-byte v7, p0, v3

    add-int/lit8 v1, v1, 0x2

    aget-byte v8, p0, v1

    and-int/lit8 v1, v7, 0xf

    int-to-byte v9, v1

    and-int/lit8 v1, v2, 0x3

    int-to-byte v10, v1

    mul-int/lit8 v11, v4, 0x4

    and-int/lit8 v1, v2, -0x80

    if-nez v1, :cond_6f

    shr-int/lit8 v1, v2, 0x2

    int-to-byte v1, v1

    move v3, v1

    :goto_31
    and-int/lit8 v1, v7, -0x80

    if-nez v1, :cond_76

    shr-int/lit8 v1, v7, 0x4

    int-to-byte v1, v1

    move v2, v1

    :goto_39
    and-int/lit8 v1, v8, -0x80

    if-nez v1, :cond_7d

    shr-int/lit8 v1, v8, 0x6

    int-to-byte v1, v1

    :goto_40
    sget-object v7, Lcom/coremobility/integration/g/a;->b:[B

    aget-byte v3, v7, v3

    aput-byte v3, v0, v11

    add-int/lit8 v3, v11, 0x1

    sget-object v7, Lcom/coremobility/integration/g/a;->b:[B

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v2, v10

    aget-byte v2, v7, v2

    aput-byte v2, v0, v3

    add-int/lit8 v2, v11, 0x2

    sget-object v3, Lcom/coremobility/integration/g/a;->b:[B

    shl-int/lit8 v7, v9, 0x2

    or-int/2addr v1, v7

    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v11, 0x3

    sget-object v2, Lcom/coremobility/integration/g/a;->b:[B

    and-int/lit8 v3, v8, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_13

    :cond_6a
    mul-int/lit8 v0, v6, 0x4

    new-array v0, v0, [B

    goto :goto_11

    :cond_6f
    shr-int/lit8 v1, v2, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v3, v1

    goto :goto_31

    :cond_76
    shr-int/lit8 v1, v7, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    move v2, v1

    goto :goto_39

    :cond_7d
    shr-int/lit8 v1, v8, 0x6

    xor-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    goto :goto_40

    :cond_83
    mul-int/lit8 v1, v4, 0x3

    mul-int/lit8 v3, v4, 0x4

    const/16 v2, 0x8

    if-ne v5, v2, :cond_b6

    aget-byte v1, p0, v1

    and-int/lit8 v2, v1, 0x3

    int-to-byte v2, v2

    and-int/lit8 v4, v1, -0x80

    if-nez v4, :cond_b0

    shr-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :goto_97
    sget-object v4, Lcom/coremobility/integration/g/a;->b:[B

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    add-int/lit8 v1, v3, 0x1

    sget-object v4, Lcom/coremobility/integration/g/a;->b:[B

    shl-int/lit8 v2, v2, 0x4

    aget-byte v2, v4, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x2

    aput-byte v12, v0, v1

    add-int/lit8 v1, v3, 0x3

    aput-byte v12, v0, v1

    :cond_af
    :goto_af
    return-object v0

    :cond_b0
    shr-int/lit8 v1, v1, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    goto :goto_97

    :cond_b6
    const/16 v2, 0x10

    if-ne v5, v2, :cond_af

    aget-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v4, p0, v1

    and-int/lit8 v1, v4, 0xf

    int-to-byte v5, v1

    and-int/lit8 v1, v2, 0x3

    int-to-byte v6, v1

    and-int/lit8 v1, v2, -0x80

    if-nez v1, :cond_f5

    shr-int/lit8 v1, v2, 0x2

    int-to-byte v1, v1

    move v2, v1

    :goto_ce
    and-int/lit8 v1, v4, -0x80

    if-nez v1, :cond_fc

    shr-int/lit8 v1, v4, 0x4

    int-to-byte v1, v1

    :goto_d5
    sget-object v4, Lcom/coremobility/integration/g/a;->b:[B

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/coremobility/integration/g/a;->b:[B

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v1, v6

    aget-byte v1, v4, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v3, 0x2

    sget-object v2, Lcom/coremobility/integration/g/a;->b:[B

    shl-int/lit8 v4, v5, 0x2

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    add-int/lit8 v1, v3, 0x3

    aput-byte v12, v0, v1

    goto :goto_af

    :cond_f5
    shr-int/lit8 v1, v2, 0x2

    xor-int/lit16 v1, v1, 0xc0

    int-to-byte v1, v1

    move v2, v1

    goto :goto_ce

    :cond_fc
    shr-int/lit8 v1, v4, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    goto :goto_d5
.end method
