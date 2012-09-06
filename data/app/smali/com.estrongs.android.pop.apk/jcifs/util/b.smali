.class public Ljcifs/util/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(D[BI)I
    .registers 6

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Ljcifs/util/b;->a(J[BI)I

    move-result v0

    return v0
.end method

.method public static a(F[BI)I
    .registers 4

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {v0, p1, p2}, Ljcifs/util/b;->a(I[BI)I

    move-result v0

    return v0
.end method

.method public static a(I[BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x4

    return v0
.end method

.method public static a(J[BI)I
    .registers 8

    const-wide v2, 0xffffffffL

    and-long v0, p0, v2

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Ljcifs/util/b;->a(I[BI)I

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Ljcifs/util/b;->a(I[BI)I

    const/16 v0, 0x8

    return v0
.end method

.method public static a(Ljava/lang/String;[BII)I
    .registers 10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    move v2, p2

    :goto_7
    if-ge v2, p3, :cond_28

    if-ge v1, v3, :cond_28

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v0, 0x1

    if-lt v4, v0, :cond_1f

    const/16 v0, 0x7f

    if-gt v4, v0, :cond_1f

    add-int/lit8 v0, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    :goto_1b
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_7

    :cond_1f
    const/16 v0, 0x7ff

    if-le v4, v0, :cond_4d

    sub-int v0, p3, v2

    const/4 v5, 0x3

    if-ge v0, v5, :cond_2b

    :cond_28
    sub-int v0, v2, p2

    return v0

    :cond_2b
    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v5, v4, 0xc

    and-int/lit8 v5, v5, 0xf

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    aput-byte v5, p1, v2

    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v5, v4, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p1, v0

    add-int/lit8 v0, v2, 0x1

    shr-int/lit8 v4, v4, 0x0

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    goto :goto_1b

    :cond_4d
    sub-int v0, p3, v2

    const/4 v5, 0x2

    if-lt v0, v5, :cond_28

    add-int/lit8 v5, v2, 0x1

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x1f

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v0, v5, 0x1

    shr-int/lit8 v2, v4, 0x0

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p1, v5

    goto :goto_1b
.end method

.method public static a(S[BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method public static a([BII)Ljava/lang/String;
    .registers 11

    const/4 v3, 0x0

    const/16 v7, 0x80

    sub-int v0, p2, p1

    new-array v4, v0, [C

    move v2, v3

    :goto_8
    if-ge p1, p2, :cond_27

    add-int/lit8 v0, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_27

    if-ge v1, v7, :cond_1c

    int-to-char v1, v1

    aput-char v1, v4, v2

    :cond_17
    :goto_17
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move p1, v0

    goto :goto_8

    :cond_1c
    and-int/lit16 v5, v1, 0xe0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_52

    sub-int v5, p2, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2d

    :cond_27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_2d
    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    int-to-char v1, v1

    aput-char v1, v4, v2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-char v5, v4, v2

    and-int/lit8 v6, v0, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    and-int/lit16 v0, v0, 0xc0

    if-ne v0, v7, :cond_4a

    aget-char v0, v4, v2

    if-ge v0, v7, :cond_a8

    :cond_4a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    and-int/lit16 v5, v1, 0xf0

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_a0

    sub-int v5, p2, v0

    const/4 v6, 0x3

    if-lt v5, v6, :cond_27

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0xc

    int-to-char v1, v1

    aput-char v1, v4, v2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v5, v0, 0xc0

    if-eq v5, v7, :cond_76

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_76
    aget-char v5, v4, v2

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v5

    int-to-char v0, v0

    aput-char v0, v4, v2

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    aget-char v5, v4, v2

    and-int/lit8 v6, v1, 0x3f

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    and-int/lit16 v1, v1, 0xc0

    if-ne v1, v7, :cond_98

    aget-char v1, v4, v2

    const/16 v5, 0x800

    if-ge v1, v5, :cond_17

    :cond_98
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported UTF-8 sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a8
    move v0, v1

    goto/16 :goto_17
.end method

.method public static a([BI)S
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static b(I[BI)I
    .registers 6

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x4

    return v0
.end method

.method public static b(J[BI)I
    .registers 8

    const-wide v2, 0xffffffffL

    and-long v0, p0, v2

    long-to-int v0, v0

    invoke-static {v0, p2, p3}, Ljcifs/util/b;->b(I[BI)I

    const/16 v0, 0x20

    shr-long v0, p0, v0

    and-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Ljcifs/util/b;->b(I[BI)I

    const/16 v0, 0x8

    return v0
.end method

.method public static b(S[BI)I
    .registers 5

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method public static b([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static c([BI)S
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static d([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static e([BI)J
    .registers 8

    const-wide v4, 0xffffffffL

    invoke-static {p0, p1}, Ljcifs/util/b;->b([BI)I

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljcifs/util/b;->b([BI)I

    move-result v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static f([BI)F
    .registers 3

    invoke-static {p0, p1}, Ljcifs/util/b;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static g([BI)D
    .registers 4

    invoke-static {p0, p1}, Ljcifs/util/b;->e([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method
