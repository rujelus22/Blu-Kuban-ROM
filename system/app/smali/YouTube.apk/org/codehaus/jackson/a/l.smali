.class public final Lorg/codehaus/jackson/a/l;
.super Lorg/codehaus/jackson/a/d;
.source "SourceFile"


# static fields
.field static final g:[B

.field protected static final h:[I

.field private static final u:[B

.field private static final v:[B

.field private static final w:[B


# instance fields
.field protected final i:Lorg/codehaus/jackson/b/c;

.field protected final j:Ljava/io/OutputStream;

.field protected k:[I

.field protected l:I

.field protected m:Lorg/codehaus/jackson/b/b;

.field protected n:[B

.field protected o:I

.field protected final p:I

.field protected final q:I

.field protected r:[C

.field protected final s:I

.field protected t:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 40
    invoke-static {}, Lorg/codehaus/jackson/util/b;->h()[B

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/l;->g:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_24

    sput-object v0, Lorg/codehaus/jackson/a/l;->u:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lorg/codehaus/jackson/a/l;->v:[B

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    sput-object v0, Lorg/codehaus/jackson/a/l;->w:[B

    .line 50
    invoke-static {}, Lorg/codehaus/jackson/util/b;->f()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/l;->h:[I

    return-void

    .line 42
    :array_24
    .array-data 0x1
        0x6et
        0x75t
        0x6ct
        0x6ct
    .end array-data

    .line 43
    :array_2a
    .array-data 0x1
        0x74t
        0x72t
        0x75t
        0x65t
    .end array-data

    .line 44
    :array_30
    .array-data 0x1
        0x66t
        0x61t
        0x6ct
        0x73t
        0x65t
    .end array-data
.end method

.method public constructor <init>(Lorg/codehaus/jackson/b/c;ILorg/codehaus/jackson/c;Ljava/io/OutputStream;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/a/d;-><init>(ILorg/codehaus/jackson/c;)V

    .line 77
    sget-object v0, Lorg/codehaus/jackson/a/l;->h:[I

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->k:[I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 163
    iput-object p1, p0, Lorg/codehaus/jackson/a/l;->i:Lorg/codehaus/jackson/b/c;

    .line 164
    iput-object p4, p0, Lorg/codehaus/jackson/a/l;->j:Ljava/io/OutputStream;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/l;->t:Z

    .line 166
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->f()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    .line 167
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/l;->p:I

    .line 172
    iget v0, p0, Lorg/codehaus/jackson/a/l;->p:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/codehaus/jackson/a/l;->q:I

    .line 173
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->h()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->r:[C

    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->r:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/l;->s:I

    .line 177
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 178
    const/16 v0, 0x7f

    iput v0, p0, Lorg/codehaus/jackson/a/l;->l:I

    .line 180
    :cond_39
    return-void
.end method

.method private final a(II)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1680
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->n:[B

    .line 1681
    const v0, 0xd800

    if-lt p1, v0, :cond_47

    const v0, 0xdfff

    if-gt p1, v0, :cond_47

    .line 1682
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    .line 1683
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 1685
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/l;->g:[B

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 1686
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/l;->g:[B

    shr-int/lit8 v4, p1, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    .line 1687
    add-int/lit8 v3, v2, 0x1

    sget-object v0, Lorg/codehaus/jackson/a/l;->g:[B

    shr-int/lit8 v4, p1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-byte v0, v0, v4

    aput-byte v0, v1, v2

    .line 1688
    add-int/lit8 v0, v3, 0x1

    sget-object v2, Lorg/codehaus/jackson/a/l;->g:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v2, v2, v4

    aput-byte v2, v1, v3

    .line 1694
    :goto_46
    return v0

    .line 1690
    :cond_47
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    .line 1691
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 1692
    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_46
.end method

.method private final a(I[CII)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0xdfff

    const v4, 0xdc00

    const v3, 0xd800

    .line 1637
    if-lt p1, v3, :cond_8f

    .line 1638
    if-gt p1, v1, :cond_8f

    .line 1640
    if-lt p3, p4, :cond_14

    .line 1641
    const-string v0, "Split surrogate on writeRaw() input (last character)"

    invoke-static {v0}, Lorg/codehaus/jackson/a/l;->e(Ljava/lang/String;)V

    .line 1643
    :cond_14
    aget-char v0, p2, p3

    if-lt v0, v4, :cond_1a

    if-le v0, v1, :cond_3e

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incomplete surrogate pair: first char 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/a/l;->e(Ljava/lang/String;)V

    :cond_3e
    const/high16 v1, 0x1

    sub-int v2, p1, v3

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v1, v2, :cond_52

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_52
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    shr-int/lit8 v3, v0, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 1644
    add-int/lit8 p3, p3, 0x1

    .line 1651
    :goto_8e
    return p3

    .line 1647
    :cond_8f
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    .line 1648
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1649
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1650
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_8e
.end method

.method private a([BILorg/codehaus/jackson/e;I)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1462
    invoke-interface {p3}, Lorg/codehaus/jackson/e;->b()[B

    move-result-object v1

    .line 1463
    array-length v0, v1

    .line 1464
    const/4 v2, 0x6

    if-le v0, v2, :cond_2f

    .line 1465
    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    array-length v3, v1

    add-int v0, p2, v3

    if-le v0, v2, :cond_34

    iput p2, p0, Lorg/codehaus/jackson/a/l;->o:I

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    array-length v4, p1

    if-le v3, v4, :cond_20

    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->j:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1469
    :cond_1f
    :goto_1f
    return v0

    .line 1465
    :cond_20
    invoke-static {v1, v5, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    :goto_24
    mul-int/lit8 v1, p4, 0x6

    add-int/2addr v1, v0

    if-le v1, v2, :cond_1f

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    goto :goto_1f

    .line 1468
    :cond_2f
    invoke-static {v1, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1469
    add-int/2addr v0, p2

    goto :goto_1f

    :cond_34
    move v0, p2

    goto :goto_24
.end method

.method private final a(Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 970
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_b

    .line 971
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 973
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v3, v0, v1

    .line 974
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->c(Ljava/lang/String;)V

    .line 975
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_25

    .line 976
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 978
    :cond_25
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v3, v0, v1

    .line 979
    return-void
.end method

.method private b(II)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x30

    .line 1725
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->n:[B

    .line 1726
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    .line 1727
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 1728
    const/16 v0, 0xff

    if-le p1, v0, :cond_43

    .line 1729
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v3, v0, 0xff

    .line 1730
    add-int/lit8 v4, v2, 0x1

    sget-object v0, Lorg/codehaus/jackson/a/l;->g:[B

    shr-int/lit8 v5, v3, 0x4

    aget-byte v0, v0, v5

    aput-byte v0, v1, v2

    .line 1731
    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lorg/codehaus/jackson/a/l;->g:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v4

    .line 1732
    and-int/lit16 p1, p1, 0xff

    .line 1738
    :goto_2e
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/l;->g:[B

    shr-int/lit8 v4, p1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    .line 1739
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/l;->g:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 1740
    return v0

    .line 1734
    :cond_43
    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v1, v2

    .line 1735
    add-int/lit8 v0, v3, 0x1

    aput-byte v4, v1, v3

    goto :goto_2e
.end method

.method private final b([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1225
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/a/l;->q:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1226
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v1, v2, :cond_10

    .line 1227
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 1229
    :cond_10
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/a/l;->c([CII)V

    .line 1230
    add-int/2addr p2, v0

    .line 1231
    sub-int/2addr p3, v0

    .line 1232
    if-gtz p3, :cond_0

    .line 1233
    return-void
.end method

.method private final c([CII)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x7f

    .line 1255
    add-int v4, p3, p2

    .line 1257
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1258
    iget-object v3, p0, Lorg/codehaus/jackson/a/l;->n:[B

    .line 1259
    iget-object v5, p0, Lorg/codehaus/jackson/a/l;->k:[I

    move v2, p2

    .line 1261
    :goto_b
    if-ge v2, v4, :cond_1e

    .line 1262
    aget-char v6, p1, v2

    .line 1264
    if-gt v6, v10, :cond_1e

    aget v1, v5, v6

    if-nez v1, :cond_1e

    .line 1265
    add-int/lit8 v1, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 1268
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .line 1269
    goto :goto_b

    .line 1270
    :cond_1e
    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1271
    if-ge v2, v4, :cond_d9

    .line 1273
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->m:Lorg/codehaus/jackson/b/b;

    if-eqz v0, :cond_da

    .line 1274
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    sub-int v1, v4, v2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v0, v1, :cond_34

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_34
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget-object v5, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget-object v6, p0, Lorg/codehaus/jackson/a/l;->k:[I

    iget v0, p0, Lorg/codehaus/jackson/a/l;->l:I

    if-gtz v0, :cond_57

    const v0, 0xffff

    :goto_41
    iget-object v7, p0, Lorg/codehaus/jackson/a/l;->m:Lorg/codehaus/jackson/b/b;

    :goto_43
    if-ge v2, v4, :cond_d7

    add-int/lit8 v3, v2, 0x1

    aget-char v8, p1, v2

    if-gt v8, v10, :cond_a1

    aget v2, v6, v8

    if-nez v2, :cond_5a

    add-int/lit8 v2, v1, 0x1

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    move v1, v2

    move v2, v3

    goto :goto_43

    :cond_57
    iget v0, p0, Lorg/codehaus/jackson/a/l;->l:I

    goto :goto_41

    :cond_5a
    aget v2, v6, v8

    if-lez v2, :cond_6b

    add-int/lit8 v8, v1, 0x1

    const/16 v9, 0x5c

    aput-byte v9, v5, v1

    add-int/lit8 v1, v8, 0x1

    int-to-byte v2, v2

    aput-byte v2, v5, v8

    move v2, v3

    goto :goto_43

    :cond_6b
    const/4 v9, -0x2

    if-ne v2, v9, :cond_9b

    invoke-virtual {v7}, Lorg/codehaus/jackson/b/b;->b()Lorg/codehaus/jackson/e;

    move-result-object v2

    if-nez v2, :cond_93

    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", although was supposed to have one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/JsonGenerationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_93
    sub-int v8, v4, v3

    invoke-direct {p0, v5, v1, v2, v8}, Lorg/codehaus/jackson/a/l;->a([BILorg/codehaus/jackson/e;I)I

    move-result v1

    move v2, v3

    goto :goto_43

    :cond_9b
    invoke-direct {p0, v8, v1}, Lorg/codehaus/jackson/a/l;->b(II)I

    move-result v1

    move v2, v3

    goto :goto_43

    :cond_a1
    if-le v8, v0, :cond_a9

    invoke-direct {p0, v8, v1}, Lorg/codehaus/jackson/a/l;->b(II)I

    move-result v1

    move v2, v3

    goto :goto_43

    :cond_a9
    invoke-virtual {v7}, Lorg/codehaus/jackson/b/b;->b()Lorg/codehaus/jackson/e;

    move-result-object v2

    if-eqz v2, :cond_b7

    sub-int v8, v4, v3

    invoke-direct {p0, v5, v1, v2, v8}, Lorg/codehaus/jackson/a/l;->a([BILorg/codehaus/jackson/e;I)I

    move-result v1

    move v2, v3

    goto :goto_43

    :cond_b7
    const/16 v2, 0x7ff

    if-gt v8, v2, :cond_d0

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v9, v8, 0x6

    or-int/lit16 v9, v9, 0xc0

    int-to-byte v9, v9

    aput-byte v9, v5, v1

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v5, v2

    move v2, v3

    goto/16 :goto_43

    :cond_d0
    invoke-direct {p0, v8, v1}, Lorg/codehaus/jackson/a/l;->a(II)I

    move-result v1

    move v2, v3

    goto/16 :goto_43

    :cond_d7
    iput v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1283
    :cond_d9
    :goto_d9
    return-void

    .line 1276
    :cond_da
    iget v0, p0, Lorg/codehaus/jackson/a/l;->l:I

    if-nez v0, :cond_e2

    .line 1277
    invoke-direct {p0, p1, v2, v4}, Lorg/codehaus/jackson/a/l;->d([CII)V

    goto :goto_d9

    .line 1279
    :cond_e2
    invoke-direct {p0, p1, v2, v4}, Lorg/codehaus/jackson/a/l;->e([CII)V

    goto :goto_d9
.end method

.method private final d([CII)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1293
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v0, v1, :cond_e

    .line 1294
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 1297
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1299
    iget-object v3, p0, Lorg/codehaus/jackson/a/l;->n:[B

    .line 1300
    iget-object v4, p0, Lorg/codehaus/jackson/a/l;->k:[I

    .line 1302
    :goto_14
    if-ge p2, p3, :cond_5f

    .line 1303
    add-int/lit8 v2, p2, 0x1

    aget-char v5, p1, p2

    .line 1304
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_41

    .line 1305
    aget v1, v4, v5

    if-nez v1, :cond_2a

    .line 1306
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    move v0, v1

    move p2, v2

    .line 1307
    goto :goto_14

    .line 1309
    :cond_2a
    aget v1, v4, v5

    .line 1310
    if-lez v1, :cond_3b

    .line 1311
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x5c

    aput-byte v6, v3, v0

    .line 1312
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    move p2, v2

    goto :goto_14

    .line 1315
    :cond_3b
    invoke-direct {p0, v5, v0}, Lorg/codehaus/jackson/a/l;->b(II)I

    move-result v0

    move p2, v2

    .line 1317
    goto :goto_14

    .line 1319
    :cond_41
    const/16 v1, 0x7ff

    if-gt v5, v1, :cond_59

    .line 1320
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 1321
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    move p2, v2

    goto :goto_14

    .line 1323
    :cond_59
    invoke-direct {p0, v5, v0}, Lorg/codehaus/jackson/a/l;->a(II)I

    move-result v0

    move p2, v2

    .line 1325
    goto :goto_14

    .line 1326
    :cond_5f
    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1327
    return-void
.end method

.method private final e([CII)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1347
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v0, v1, :cond_e

    .line 1348
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 1351
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1353
    iget-object v3, p0, Lorg/codehaus/jackson/a/l;->n:[B

    .line 1354
    iget-object v4, p0, Lorg/codehaus/jackson/a/l;->k:[I

    .line 1355
    iget v5, p0, Lorg/codehaus/jackson/a/l;->l:I

    .line 1357
    :goto_16
    if-ge p2, p3, :cond_69

    .line 1358
    add-int/lit8 v2, p2, 0x1

    aget-char v6, p1, p2

    .line 1359
    const/16 v1, 0x7f

    if-gt v6, v1, :cond_43

    .line 1360
    aget v1, v4, v6

    if-nez v1, :cond_2c

    .line 1361
    add-int/lit8 v1, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    move p2, v2

    .line 1362
    goto :goto_16

    .line 1364
    :cond_2c
    aget v1, v4, v6

    .line 1365
    if-lez v1, :cond_3d

    .line 1366
    add-int/lit8 v6, v0, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v3, v0

    .line 1367
    add-int/lit8 v0, v6, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    move p2, v2

    goto :goto_16

    .line 1370
    :cond_3d
    invoke-direct {p0, v6, v0}, Lorg/codehaus/jackson/a/l;->b(II)I

    move-result v0

    move p2, v2

    .line 1372
    goto :goto_16

    .line 1374
    :cond_43
    if-le v6, v5, :cond_4b

    .line 1375
    invoke-direct {p0, v6, v0}, Lorg/codehaus/jackson/a/l;->b(II)I

    move-result v0

    move p2, v2

    .line 1376
    goto :goto_16

    .line 1378
    :cond_4b
    const/16 v1, 0x7ff

    if-gt v6, v1, :cond_63

    .line 1379
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    .line 1380
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    move p2, v2

    goto :goto_16

    .line 1382
    :cond_63
    invoke-direct {p0, v6, v0}, Lorg/codehaus/jackson/a/l;->a(II)I

    move-result v0

    move p2, v2

    .line 1384
    goto :goto_16

    .line 1385
    :cond_69
    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1386
    return-void
.end method

.method private final f(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1199
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1201
    iget-object v3, p0, Lorg/codehaus/jackson/a/l;->r:[C

    move v2, v0

    move v0, v1

    .line 1203
    :goto_9
    if-lez v2, :cond_26

    .line 1204
    iget v4, p0, Lorg/codehaus/jackson/a/l;->q:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1205
    add-int v5, v0, v4

    invoke-virtual {p1, v0, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1206
    iget v5, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/2addr v5, v4

    iget v6, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v5, v6, :cond_20

    .line 1207
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 1209
    :cond_20
    invoke-direct {p0, v3, v1, v4}, Lorg/codehaus/jackson/a/l;->c([CII)V

    .line 1210
    add-int/2addr v0, v4

    .line 1211
    sub-int/2addr v2, v4

    .line 1212
    goto :goto_9

    .line 1213
    :cond_26
    return-void
.end method

.method private final j()V
    .registers 6

    .prologue
    .line 1710
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_b

    .line 1711
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 1713
    :cond_b
    sget-object v0, Lorg/codehaus/jackson/a/l;->u:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1714
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1715
    return-void
.end method

.method private k()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1745
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1746
    if-lez v0, :cond_e

    .line 1747
    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 1748
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->j:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->n:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1750
    :cond_e
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/b/b;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 3
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lorg/codehaus/jackson/a/l;->m:Lorg/codehaus/jackson/b/b;

    .line 224
    if-nez p1, :cond_9

    .line 225
    sget-object v0, Lorg/codehaus/jackson/a/l;->h:[I

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->k:[I

    .line 229
    :goto_8
    return-object p0

    .line 227
    :cond_9
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/b;->a()[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->k:[I

    goto :goto_8
.end method

.method public final a(C)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 760
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_c

    .line 761
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 763
    :cond_c
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    .line 764
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_1c

    .line 765
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 772
    :goto_1b
    return-void

    .line 766
    :cond_1c
    const/16 v1, 0x800

    if-ge p1, v1, :cond_3b

    .line 767
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    shr-int/lit8 v2, p1, 0x6

    or-int/lit16 v2, v2, 0xc0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 768
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1b

    .line 770
    :cond_3b
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2, v2}, Lorg/codehaus/jackson/a/l;->a(I[CII)I

    goto :goto_1b
.end method

.method public final a(D)V
    .registers 4
    .parameter

    .prologue
    .line 913
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/l;->d:Z

    if-nez v0, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 917
    :cond_18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->b(Ljava/lang/String;)V

    .line 923
    :goto_1f
    return-void

    .line 921
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 922
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 929
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/l;->d:Z

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 933
    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->b(Ljava/lang/String;)V

    .line 939
    :goto_1f
    return-void

    .line 937
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 938
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 848
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 850
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_12

    .line 851
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 853
    :cond_12
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/l;->d:Z

    if-eqz v0, :cond_40

    .line 854
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_21
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/b/g;->a(I[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v3, v0, v1

    .line 858
    :goto_3f
    return-void

    .line 857
    :cond_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/b/g;->a(I[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    goto :goto_3f
.end method

.method public final a(J)V
    .registers 7
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 873
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 874
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/l;->d:Z

    if-eqz v0, :cond_35

    .line 875
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_16
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/b/g;->a(J[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v3, v0, v1

    .line 883
    :goto_34
    return-void

    .line 878
    :cond_35
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_40

    .line 880
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 882
    :cond_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/b/g;->a(J[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    goto :goto_34
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/16 v4, 0x22

    const/4 v1, 0x0

    .line 268
    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/a/i;->a(Ljava/lang/String;)I

    move-result v2

    .line 269
    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 270
    const-string v3, "Can not write a field name, expecting a value"

    invoke-static {v3}, Lorg/codehaus/jackson/a/l;->e(Ljava/lang/String;)V

    .line 272
    :cond_12
    iget-object v3, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    if-eqz v3, :cond_84

    .line 273
    if-ne v2, v0, :cond_6e

    :goto_18
    if-eqz v0, :cond_70

    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->c(Lorg/codehaus/jackson/JsonGenerator;)V

    :goto_1f
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v2, :cond_30

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_30
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/codehaus/jackson/a/l;->s:I

    if-gt v0, v2, :cond_7c

    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Lorg/codehaus/jackson/a/l;->q:I

    if-gt v0, v2, :cond_76

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v2, v3, :cond_55

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_55
    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/a/l;->c([CII)V

    :goto_5a
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_63

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_63
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v0, v1

    .line 283
    :goto_6d
    return-void

    :cond_6e
    move v0, v1

    .line 273
    goto :goto_18

    :cond_70
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->h(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1f

    :cond_76
    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/a/l;->b([CII)V

    goto :goto_5a

    :cond_7c
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/l;->f(Ljava/lang/String;)V

    goto :goto_5a

    :cond_80
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/l;->f(Ljava/lang/String;)V

    goto :goto_6d

    .line 276
    :cond_84
    if-ne v2, v0, :cond_9b

    .line 277
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v2, :cond_8f

    .line 278
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 280
    :cond_8f
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    .line 282
    :cond_9b
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_a7

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/l;->f(Ljava/lang/String;)V

    goto :goto_6d

    :cond_a7
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v2, :cond_b0

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_b0
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/codehaus/jackson/a/l;->s:I

    if-gt v0, v2, :cond_f4

    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Lorg/codehaus/jackson/a/l;->q:I

    if-gt v0, v2, :cond_ee

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v2, v3, :cond_d5

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_d5
    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/a/l;->c([CII)V

    :goto_da
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_e3

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_e3
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v0, v1

    goto :goto_6d

    :cond_ee
    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/a/l;->b([CII)V

    goto :goto_da

    :cond_f4
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/l;->f(Ljava/lang/String;)V

    goto :goto_da
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter

    .prologue
    .line 946
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 947
    if-nez p1, :cond_b

    .line 948
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->j()V

    .line 954
    :goto_a
    return-void

    .line 949
    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/l;->d:Z

    if-eqz v0, :cond_13

    .line 950
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/l;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 952
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter

    .prologue
    .line 898
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 899
    if-nez p1, :cond_b

    .line 900
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->j()V

    .line 906
    :goto_a
    return-void

    .line 901
    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/l;->d:Z

    if-eqz v0, :cond_13

    .line 902
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/l;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 904
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Z)V
    .registers 7
    .parameter

    .prologue
    .line 985
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 986
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_10

    .line 987
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 989
    :cond_10
    if-eqz p1, :cond_23

    sget-object v0, Lorg/codehaus/jackson/a/l;->v:[B

    .line 990
    :goto_14
    array-length v1, v0

    .line 991
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v4, p0, Lorg/codehaus/jackson/a/l;->o:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    .line 993
    return-void

    .line 989
    :cond_23
    sget-object v0, Lorg/codehaus/jackson/a/l;->w:[B

    goto :goto_14
.end method

.method public final a([CII)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x800

    .line 719
    add-int v0, p3, p3

    add-int/2addr v0, p3

    .line 720
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v1, v2, :cond_67

    .line 722
    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-ge v1, v0, :cond_64

    .line 723
    const/4 v0, 0x0

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    iget-object v3, p0, Lorg/codehaus/jackson/a/l;->n:[B

    :goto_15
    if-ge v0, p3, :cond_31

    :cond_17
    aget-char v1, p1, v0

    const/16 v4, 0x80

    if-ge v1, v4, :cond_32

    iget v4, p0, Lorg/codehaus/jackson/a/l;->o:I

    if-lt v4, v2, :cond_24

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_24
    iget v4, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/l;->o:I

    int-to-byte v1, v1

    aput-byte v1, v3, v4

    add-int/lit8 v0, v0, 0x1

    if-lt v0, p3, :cond_17

    .line 754
    :cond_31
    return-void

    .line 723
    :cond_32
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v1, v1, 0x3

    iget v4, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v1, v4, :cond_3d

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_3d
    add-int/lit8 v1, v0, 0x1

    aget-char v0, p1, v0

    if-ge v0, v6, :cond_5f

    iget v4, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/l;->o:I

    shr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0xc0

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget v4, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/l;->o:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v3, v4

    move v0, v1

    goto :goto_15

    :cond_5f
    invoke-direct {p0, v0, p1, v1, p3}, Lorg/codehaus/jackson/a/l;->a(I[CII)I

    move v0, v1

    goto :goto_15

    .line 727
    :cond_64
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 730
    :cond_67
    add-int/lit8 v1, p3, 0x0

    move v0, p2

    .line 734
    :goto_6a
    if-ge v0, v1, :cond_31

    .line 737
    :goto_6c
    aget-char v2, p1, v0

    .line 738
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_82

    .line 739
    iget-object v3, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v4, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/l;->o:I

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 742
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v1, :cond_31

    goto :goto_6c

    .line 746
    :cond_82
    add-int/lit8 p2, v0, 0x1

    aget-char v0, p1, v0

    .line 747
    if-ge v0, v6, :cond_a8

    .line 748
    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/l;->o:I

    shr-int/lit8 v4, v0, 0x6

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 749
    iget-object v2, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/codehaus/jackson/a/l;->o:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    move v0, p2

    goto :goto_6a

    .line 751
    :cond_a8
    invoke-direct {p0, v0, p1, p2, v1}, Lorg/codehaus/jackson/a/l;->a(I[CII)I

    move v0, p2

    .line 753
    goto :goto_6a
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 338
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->h()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    .line 340
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_17

    .line 341
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->e(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 348
    :goto_16
    return-void

    .line 343
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_20

    .line 344
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 346
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    goto :goto_16
.end method

.method public final b(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 542
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 543
    if-nez p1, :cond_e

    .line 544
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->j()V

    .line 566
    :goto_d
    return-void

    .line 548
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    iget v1, p0, Lorg/codehaus/jackson/a/l;->s:I

    if-le v0, v1, :cond_40

    .line 550
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_1f

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_1f
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v0, v1

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/l;->f(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_35

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_35
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v0, v1

    goto :goto_d

    .line 554
    :cond_40
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-virtual {p1, v5, v0, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 556
    iget v1, p0, Lorg/codehaus/jackson/a/l;->q:I

    if-le v0, v1, :cond_77

    .line 557
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v1, v2, :cond_54

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_54
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v1, v2

    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-direct {p0, v1, v5, v0}, Lorg/codehaus/jackson/a/l;->b([CII)V

    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_6c

    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    :cond_6c
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v0, v1

    goto :goto_d

    .line 560
    :cond_77
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-le v1, v2, :cond_83

    .line 561
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 563
    :cond_83
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v1, v2

    .line 564
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->r:[C

    invoke-direct {p0, v1, v5, v0}, Lorg/codehaus/jackson/a/l;->c([CII)V

    .line 565
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v4, v0, v1

    goto/16 :goto_d
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->a()Z

    move-result v0

    if-nez v0, :cond_20

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/a/l;->e(Ljava/lang/String;)V

    .line 356
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_38

    .line 357
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/d;->b(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 364
    :goto_2f
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->j()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    .line 365
    return-void

    .line 359
    :cond_38
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_41

    .line 360
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 362
    :cond_41
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    goto :goto_2f
.end method

.method public final c(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v3

    .line 686
    :goto_6
    if-lez v1, :cond_19

    .line 687
    iget-object v4, p0, Lorg/codehaus/jackson/a/l;->r:[C

    .line 688
    array-length v0, v4

    .line 689
    if-ge v1, v0, :cond_e

    move v0, v1

    .line 690
    :cond_e
    add-int v5, v2, v0

    invoke-virtual {p1, v2, v5, v4, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 691
    invoke-virtual {p0, v4, v3, v0}, Lorg/codehaus/jackson/a/l;->a([CII)V

    .line 692
    add-int/2addr v2, v0

    .line 693
    sub-int/2addr v1, v0

    .line 694
    goto :goto_6

    .line 695
    :cond_19
    return-void
.end method

.method public final close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1094
    invoke-super {p0}, Lorg/codehaus/jackson/a/d;->close()V

    .line 1100
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    if-eqz v0, :cond_28

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1103
    :goto_10
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/l;->h()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Lorg/codehaus/jackson/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1105
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/l;->c()V

    goto :goto_10

    .line 1106
    :cond_1e
    invoke-virtual {v0}, Lorg/codehaus/jackson/b;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1107
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/l;->e()V

    goto :goto_10

    .line 1113
    :cond_28
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 1121
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->j:Ljava/io/OutputStream;

    if-eqz v0, :cond_44

    .line 1122
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->i:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_3f

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1123
    :cond_3f
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1130
    :cond_44
    :goto_44
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    if-eqz v0, :cond_53

    iget-boolean v1, p0, Lorg/codehaus/jackson/a/l;->t:Z

    if-eqz v1, :cond_53

    iput-object v2, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->i:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->b([B)V

    :cond_53
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->r:[C

    if-eqz v0, :cond_5e

    iput-object v2, p0, Lorg/codehaus/jackson/a/l;->r:[C

    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->i:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->b([C)V

    .line 1131
    :cond_5e
    return-void

    .line 1124
    :cond_5f
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1126
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_44
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 370
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->i()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    .line 372
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_17

    .line 373
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->b(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 380
    :goto_16
    return-void

    .line 375
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_20

    .line 376
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 378
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    goto :goto_16
.end method

.method protected final d(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->k()I

    move-result v0

    .line 1014
    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/a/l;->e(Ljava/lang/String;)V

    .line 1017
    :cond_21
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    if-nez v1, :cond_47

    .line 1019
    packed-switch v0, :pswitch_data_7c

    .line 1042
    :cond_28
    :goto_28
    return-void

    .line 1021
    :pswitch_29
    const/16 v0, 0x2c

    .line 1033
    :goto_2b
    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v1, v2, :cond_34

    .line 1034
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 1036
    :cond_34
    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    aput-byte v0, v1, v2

    .line 1037
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    goto :goto_28

    .line 1024
    :pswitch_41
    const/16 v0, 0x3a

    .line 1025
    goto :goto_2b

    .line 1027
    :pswitch_44
    const/16 v0, 0x20

    .line 1028
    goto :goto_2b

    .line 1041
    :cond_47
    packed-switch v0, :pswitch_data_86

    invoke-static {}, Lorg/codehaus/jackson/a/l;->i()V

    goto :goto_28

    :pswitch_4e
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->f(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    :pswitch_54
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->d(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    :pswitch_5a
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    :pswitch_60
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->g(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    :cond_6e
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->h(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    .line 1019
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_41
        :pswitch_44
    .end packed-switch

    .line 1041
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_60
        :pswitch_4e
        :pswitch_54
        :pswitch_5a
    .end packed-switch
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 385
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->c()Z

    move-result v0

    if-nez v0, :cond_20

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/a/l;->e(Ljava/lang/String;)V

    .line 388
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->j()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    .line 389
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_38

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->a:Lorg/codehaus/jackson/d;

    iget-object v1, p0, Lorg/codehaus/jackson/a/l;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/d;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 397
    :goto_37
    return-void

    .line 392
    :cond_38
    iget v0, p0, Lorg/codehaus/jackson/a/l;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/l;->p:I

    if-lt v0, v1, :cond_41

    .line 393
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 395
    :cond_41
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/l;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/l;->o:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_37
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 999
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->d(Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->j()V

    .line 1001
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 1082
    invoke-direct {p0}, Lorg/codehaus/jackson/a/l;->k()V

    .line 1083
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->j:Ljava/io/OutputStream;

    if-eqz v0, :cond_14

    .line 1084
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/l;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1085
    iget-object v0, p0, Lorg/codehaus/jackson/a/l;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1088
    :cond_14
    return-void
.end method
