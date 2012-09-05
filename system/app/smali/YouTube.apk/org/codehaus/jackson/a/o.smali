.class public final Lorg/codehaus/jackson/a/o;
.super Lorg/codehaus/jackson/a/c;
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

    sput-object v0, Lorg/codehaus/jackson/a/o;->g:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_24

    sput-object v0, Lorg/codehaus/jackson/a/o;->u:[B

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lorg/codehaus/jackson/a/o;->v:[B

    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_30

    sput-object v0, Lorg/codehaus/jackson/a/o;->w:[B

    .line 50
    invoke-static {}, Lorg/codehaus/jackson/util/b;->f()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/o;->h:[I

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
    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/a/c;-><init>(ILorg/codehaus/jackson/c;)V

    .line 77
    sget-object v0, Lorg/codehaus/jackson/a/o;->h:[I

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->k:[I

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 163
    iput-object p1, p0, Lorg/codehaus/jackson/a/o;->i:Lorg/codehaus/jackson/b/c;

    .line 164
    iput-object p4, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/OutputStream;

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/o;->t:Z

    .line 166
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->f()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    .line 167
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 172
    iget v0, p0, Lorg/codehaus/jackson/a/o;->p:I

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 173
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->h()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->r:[C

    .line 174
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->r:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->s:I

    .line 177
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 178
    const/16 v0, 0x7f

    iput v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    .line 180
    :cond_39
    return-void
.end method

.method private final a(II)I
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 1678
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->n:[B

    .line 1679
    const v0, 0xd800

    if-lt p1, v0, :cond_47

    const v0, 0xdfff

    if-gt p1, v0, :cond_47

    .line 1680
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    .line 1681
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 1683
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[B

    shr-int/lit8 v4, p1, 0xc

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 1684
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[B

    shr-int/lit8 v4, p1, 0x8

    and-int/lit8 v4, v4, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    .line 1685
    add-int/lit8 v3, v2, 0x1

    sget-object v0, Lorg/codehaus/jackson/a/o;->g:[B

    shr-int/lit8 v4, p1, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-byte v0, v0, v4

    aput-byte v0, v1, v2

    .line 1686
    add-int/lit8 v0, v3, 0x1

    sget-object v2, Lorg/codehaus/jackson/a/o;->g:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v2, v2, v4

    aput-byte v2, v1, v3

    .line 1692
    :goto_46
    return v0

    .line 1688
    :cond_47
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v1, p2

    .line 1689
    add-int/lit8 v2, v0, 0x1

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 1690
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

    .line 1635
    if-lt p1, v3, :cond_93

    .line 1636
    if-gt p1, v1, :cond_93

    .line 1638
    if-lt p3, p4, :cond_14

    .line 1639
    const-string v0, "Split surrogate on writeRaw() input (last character)"

    invoke-static {v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 1641
    :cond_14
    aget-char v0, p2, p3

    if-lt v0, v4, :cond_1a

    if-le v0, v1, :cond_42

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    invoke-static {v1}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    :cond_42
    const/high16 v1, 0x1

    sub-int v2, p1, v3

    shl-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    sub-int/2addr v0, v4

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v1, v2, :cond_56

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_56
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    shr-int/lit8 v3, v0, 0x12

    or-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 1642
    add-int/lit8 p3, p3, 0x1

    .line 1649
    :goto_92
    return p3

    .line 1645
    :cond_93
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    .line 1646
    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    shr-int/lit8 v2, p1, 0xc

    or-int/lit16 v2, v2, 0xe0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1647
    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1648
    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    and-int/lit8 v2, p1, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_92
.end method

.method private a([BILorg/codehaus/jackson/e;I)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1460
    invoke-interface {p3}, Lorg/codehaus/jackson/e;->b()[B

    move-result-object v1

    .line 1461
    array-length v0, v1

    .line 1462
    const/4 v2, 0x6

    if-le v0, v2, :cond_2f

    .line 1463
    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    array-length v3, v1

    add-int v0, p2, v3

    if-le v0, v2, :cond_34

    iput p2, p0, Lorg/codehaus/jackson/a/o;->o:I

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    array-length v4, p1

    if-le v3, v4, :cond_20

    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/OutputStream;

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1467
    :cond_1f
    :goto_1f
    return v0

    .line 1463
    :cond_20
    invoke-static {v1, v5, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    :goto_24
    mul-int/lit8 v1, p4, 0x6

    add-int/2addr v1, v0

    if-le v1, v2, :cond_1f

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    goto :goto_1f

    .line 1466
    :cond_2f
    invoke-static {v1, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1467
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
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_b

    .line 971
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 973
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v3, v0, v1

    .line 974
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    .line 975
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_25

    .line 976
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 978
    :cond_25
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v3, v0, v1

    .line 979
    return-void
.end method

.method private final a([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1223
    :cond_0
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1224
    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v1, v2, :cond_10

    .line 1225
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 1227
    :cond_10
    invoke-direct {p0, p1, p2, v0}, Lorg/codehaus/jackson/a/o;->b([CII)V

    .line 1228
    add-int/2addr p2, v0

    .line 1229
    sub-int/2addr p3, v0

    .line 1230
    if-gtz p3, :cond_0

    .line 1231
    return-void
.end method

.method private b(II)I
    .registers 9
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x30

    .line 1723
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->n:[B

    .line 1724
    add-int/lit8 v0, p2, 0x1

    const/16 v2, 0x5c

    aput-byte v2, v1, p2

    .line 1725
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x75

    aput-byte v3, v1, v0

    .line 1726
    const/16 v0, 0xff

    if-le p1, v0, :cond_43

    .line 1727
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v3, v0, 0xff

    .line 1728
    add-int/lit8 v4, v2, 0x1

    sget-object v0, Lorg/codehaus/jackson/a/o;->g:[B

    shr-int/lit8 v5, v3, 0x4

    aget-byte v0, v0, v5

    aput-byte v0, v1, v2

    .line 1729
    add-int/lit8 v0, v4, 0x1

    sget-object v2, Lorg/codehaus/jackson/a/o;->g:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v4

    .line 1730
    and-int/lit16 p1, p1, 0xff

    .line 1736
    :goto_2e
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[B

    shr-int/lit8 v4, p1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v1, v0

    .line 1737
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[B

    and-int/lit8 v4, p1, 0xf

    aget-byte v3, v3, v4

    aput-byte v3, v1, v2

    .line 1738
    return v0

    .line 1732
    :cond_43
    add-int/lit8 v3, v2, 0x1

    aput-byte v4, v1, v2

    .line 1733
    add-int/lit8 v0, v3, 0x1

    aput-byte v4, v1, v3

    goto :goto_2e
.end method

.method private final b([CII)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x7f

    .line 1253
    add-int v4, p3, p2

    .line 1255
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1256
    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->n:[B

    .line 1257
    iget-object v5, p0, Lorg/codehaus/jackson/a/o;->k:[I

    move v2, p2

    .line 1259
    :goto_b
    if-ge v2, v4, :cond_1e

    .line 1260
    aget-char v6, p1, v2

    .line 1262
    if-gt v6, v10, :cond_1e

    aget v1, v5, v6

    if-nez v1, :cond_1e

    .line 1263
    add-int/lit8 v1, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 1266
    add-int/lit8 v2, v2, 0x1

    move v0, v1

    .line 1267
    goto :goto_b

    .line 1268
    :cond_1e
    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1269
    if-ge v2, v4, :cond_dd

    .line 1271
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    if-eqz v0, :cond_de

    .line 1272
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    sub-int v1, v4, v2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v0, v1, :cond_34

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_34
    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget-object v5, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget-object v6, p0, Lorg/codehaus/jackson/a/o;->k:[I

    iget v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    if-gtz v0, :cond_57

    const v0, 0xffff

    :goto_41
    iget-object v7, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    :goto_43
    if-ge v2, v4, :cond_db

    add-int/lit8 v3, v2, 0x1

    aget-char v8, p1, v2

    if-gt v8, v10, :cond_a5

    aget v2, v6, v8

    if-nez v2, :cond_5a

    add-int/lit8 v2, v1, 0x1

    int-to-byte v8, v8

    aput-byte v8, v5, v1

    move v1, v2

    move v2, v3

    goto :goto_43

    :cond_57
    iget v0, p0, Lorg/codehaus/jackson/a/o;->l:I

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

    if-ne v2, v9, :cond_9f

    invoke-virtual {v7}, Lorg/codehaus/jackson/b/b;->b()Lorg/codehaus/jackson/e;

    move-result-object v2

    if-nez v2, :cond_97

    new-instance v0, Lorg/codehaus/jackson/JsonGenerationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid custom escape definitions; custom escape not found for character code 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

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

    :cond_97
    sub-int v8, v4, v3

    invoke-direct {p0, v5, v1, v2, v8}, Lorg/codehaus/jackson/a/o;->a([BILorg/codehaus/jackson/e;I)I

    move-result v1

    move v2, v3

    goto :goto_43

    :cond_9f
    invoke-direct {p0, v8, v1}, Lorg/codehaus/jackson/a/o;->b(II)I

    move-result v1

    move v2, v3

    goto :goto_43

    :cond_a5
    if-le v8, v0, :cond_ad

    invoke-direct {p0, v8, v1}, Lorg/codehaus/jackson/a/o;->b(II)I

    move-result v1

    move v2, v3

    goto :goto_43

    :cond_ad
    invoke-virtual {v7}, Lorg/codehaus/jackson/b/b;->b()Lorg/codehaus/jackson/e;

    move-result-object v2

    if-eqz v2, :cond_bb

    sub-int v8, v4, v3

    invoke-direct {p0, v5, v1, v2, v8}, Lorg/codehaus/jackson/a/o;->a([BILorg/codehaus/jackson/e;I)I

    move-result v1

    move v2, v3

    goto :goto_43

    :cond_bb
    const/16 v2, 0x7ff

    if-gt v8, v2, :cond_d4

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

    :cond_d4
    invoke-direct {p0, v8, v1}, Lorg/codehaus/jackson/a/o;->a(II)I

    move-result v1

    move v2, v3

    goto/16 :goto_43

    :cond_db
    iput v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1281
    :cond_dd
    :goto_dd
    return-void

    .line 1274
    :cond_de
    iget v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    if-nez v0, :cond_e6

    .line 1275
    invoke-direct {p0, p1, v2, v4}, Lorg/codehaus/jackson/a/o;->c([CII)V

    goto :goto_dd

    .line 1277
    :cond_e6
    invoke-direct {p0, p1, v2, v4}, Lorg/codehaus/jackson/a/o;->d([CII)V

    goto :goto_dd
.end method

.method private final c([CII)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1291
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v0, v1, :cond_e

    .line 1292
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 1295
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1297
    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->n:[B

    .line 1298
    iget-object v4, p0, Lorg/codehaus/jackson/a/o;->k:[I

    .line 1300
    :goto_14
    if-ge p2, p3, :cond_5f

    .line 1301
    add-int/lit8 v2, p2, 0x1

    aget-char v5, p1, p2

    .line 1302
    const/16 v1, 0x7f

    if-gt v5, v1, :cond_41

    .line 1303
    aget v1, v4, v5

    if-nez v1, :cond_2a

    .line 1304
    add-int/lit8 v1, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    move v0, v1

    move p2, v2

    .line 1305
    goto :goto_14

    .line 1307
    :cond_2a
    aget v1, v4, v5

    .line 1308
    if-lez v1, :cond_3b

    .line 1309
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x5c

    aput-byte v6, v3, v0

    .line 1310
    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v5

    move p2, v2

    goto :goto_14

    .line 1313
    :cond_3b
    invoke-direct {p0, v5, v0}, Lorg/codehaus/jackson/a/o;->b(II)I

    move-result v0

    move p2, v2

    .line 1315
    goto :goto_14

    .line 1317
    :cond_41
    const/16 v1, 0x7ff

    if-gt v5, v1, :cond_59

    .line 1318
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v6, v5, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 1319
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    move p2, v2

    goto :goto_14

    .line 1321
    :cond_59
    invoke-direct {p0, v5, v0}, Lorg/codehaus/jackson/a/o;->a(II)I

    move-result v0

    move p2, v2

    .line 1323
    goto :goto_14

    .line 1324
    :cond_5f
    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1325
    return-void
.end method

.method private final d([CII)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1345
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    sub-int v1, p3, p2

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v0, v1, :cond_e

    .line 1346
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 1349
    :cond_e
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1351
    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->n:[B

    .line 1352
    iget-object v4, p0, Lorg/codehaus/jackson/a/o;->k:[I

    .line 1353
    iget v5, p0, Lorg/codehaus/jackson/a/o;->l:I

    .line 1355
    :goto_16
    if-ge p2, p3, :cond_69

    .line 1356
    add-int/lit8 v2, p2, 0x1

    aget-char v6, p1, p2

    .line 1357
    const/16 v1, 0x7f

    if-gt v6, v1, :cond_43

    .line 1358
    aget v1, v4, v6

    if-nez v1, :cond_2c

    .line 1359
    add-int/lit8 v1, v0, 0x1

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    move p2, v2

    .line 1360
    goto :goto_16

    .line 1362
    :cond_2c
    aget v1, v4, v6

    .line 1363
    if-lez v1, :cond_3d

    .line 1364
    add-int/lit8 v6, v0, 0x1

    const/16 v7, 0x5c

    aput-byte v7, v3, v0

    .line 1365
    add-int/lit8 v0, v6, 0x1

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    move p2, v2

    goto :goto_16

    .line 1368
    :cond_3d
    invoke-direct {p0, v6, v0}, Lorg/codehaus/jackson/a/o;->b(II)I

    move-result v0

    move p2, v2

    .line 1370
    goto :goto_16

    .line 1372
    :cond_43
    if-le v6, v5, :cond_4b

    .line 1373
    invoke-direct {p0, v6, v0}, Lorg/codehaus/jackson/a/o;->b(II)I

    move-result v0

    move p2, v2

    .line 1374
    goto :goto_16

    .line 1376
    :cond_4b
    const/16 v1, 0x7ff

    if-gt v6, v1, :cond_63

    .line 1377
    add-int/lit8 v1, v0, 0x1

    shr-int/lit8 v7, v6, 0x6

    or-int/lit16 v7, v7, 0xc0

    int-to-byte v7, v7

    aput-byte v7, v3, v0

    .line 1378
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    move p2, v2

    goto :goto_16

    .line 1380
    :cond_63
    invoke-direct {p0, v6, v0}, Lorg/codehaus/jackson/a/o;->a(II)I

    move-result v0

    move p2, v2

    .line 1382
    goto :goto_16

    .line 1383
    :cond_69
    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1384
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 14
    .parameter

    .prologue
    const/16 v11, 0x800

    const/4 v3, 0x0

    .line 685
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v3

    .line 686
    :goto_8
    if-lez v1, :cond_c4

    .line 687
    iget-object v6, p0, Lorg/codehaus/jackson/a/o;->r:[C

    .line 688
    array-length v0, v6

    .line 689
    if-ge v1, v0, :cond_10

    move v0, v1

    .line 690
    :cond_10
    add-int v2, v5, v0

    invoke-virtual {p1, v5, v2, v6, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 691
    add-int v2, v0, v0

    add-int/2addr v2, v0

    iget v4, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/2addr v4, v2

    iget v7, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v4, v7, :cond_7e

    iget v4, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-ge v4, v2, :cond_7b

    iget v7, p0, Lorg/codehaus/jackson/a/o;->p:I

    iget-object v8, p0, Lorg/codehaus/jackson/a/o;->n:[B

    move v2, v3

    :goto_28
    if-ge v2, v0, :cond_44

    :cond_2a
    aget-char v4, v6, v2

    const/16 v9, 0x80

    if-ge v4, v9, :cond_49

    iget v9, p0, Lorg/codehaus/jackson/a/o;->o:I

    if-lt v9, v7, :cond_37

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_37
    iget v9, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/a/o;->o:I

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_2a

    .line 692
    :cond_44
    add-int v2, v5, v0

    .line 693
    sub-int/2addr v1, v0

    move v5, v2

    .line 694
    goto :goto_8

    .line 691
    :cond_49
    iget v4, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v4, v4, 0x3

    iget v9, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v4, v9, :cond_54

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_54
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v6, v2

    if-ge v2, v11, :cond_76

    iget v9, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/a/o;->o:I

    shr-int/lit8 v10, v2, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget v9, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/a/o;->o:I

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v8, v9

    move v2, v4

    goto :goto_28

    :cond_76
    invoke-direct {p0, v2, v6, v4, v0}, Lorg/codehaus/jackson/a/o;->a(I[CII)I

    move v2, v4

    goto :goto_28

    :cond_7b
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_7e
    add-int/lit8 v7, v0, 0x0

    move v2, v3

    :goto_81
    if-ge v2, v7, :cond_44

    :goto_83
    aget-char v4, v6, v2

    const/16 v8, 0x7f

    if-gt v4, v8, :cond_99

    iget-object v8, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v9, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/a/o;->o:I

    int-to-byte v4, v4

    aput-byte v4, v8, v9

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v7, :cond_44

    goto :goto_83

    :cond_99
    add-int/lit8 v4, v2, 0x1

    aget-char v2, v6, v2

    if-ge v2, v11, :cond_bf

    iget-object v8, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v9, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/a/o;->o:I

    shr-int/lit8 v10, v2, 0x6

    or-int/lit16 v10, v10, 0xc0

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget-object v8, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v9, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/a/o;->o:I

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v8, v9

    move v2, v4

    goto :goto_81

    :cond_bf
    invoke-direct {p0, v2, v6, v4, v7}, Lorg/codehaus/jackson/a/o;->a(I[CII)I

    move v2, v4

    goto :goto_81

    .line 695
    :cond_c4
    return-void
.end method

.method private final f(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1197
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1199
    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->r:[C

    move v2, v0

    move v0, v1

    .line 1201
    :goto_9
    if-lez v2, :cond_26

    .line 1202
    iget v4, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1203
    add-int v5, v0, v4

    invoke-virtual {p1, v0, v5, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 1204
    iget v5, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/2addr v5, v4

    iget v6, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v5, v6, :cond_20

    .line 1205
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 1207
    :cond_20
    invoke-direct {p0, v3, v1, v4}, Lorg/codehaus/jackson/a/o;->b([CII)V

    .line 1208
    add-int/2addr v0, v4

    .line 1209
    sub-int/2addr v2, v4

    .line 1210
    goto :goto_9

    .line 1211
    :cond_26
    return-void
.end method

.method private final i()V
    .registers 6

    .prologue
    .line 1708
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_b

    .line 1709
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 1711
    :cond_b
    sget-object v0, Lorg/codehaus/jackson/a/o;->u:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1712
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1713
    return-void
.end method

.method private j()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1743
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1744
    if-lez v0, :cond_e

    .line 1745
    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 1746
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->n:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 1748
    :cond_e
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/b/b;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 3
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    .line 224
    if-nez p1, :cond_9

    .line 225
    sget-object v0, Lorg/codehaus/jackson/a/o;->h:[I

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->k:[I

    .line 229
    :goto_8
    return-object p0

    .line 227
    :cond_9
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/b;->a()[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->k:[I

    goto :goto_8
.end method

.method public final a()V
    .registers 4

    .prologue
    .line 338
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->h()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    .line 340
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_14

    .line 341
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    .line 348
    :goto_13
    return-void

    .line 343
    :cond_14
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_1d

    .line 344
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 346
    :cond_1d
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    goto :goto_13
.end method

.method public final a(D)V
    .registers 4
    .parameter

    .prologue
    .line 913
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-nez v0, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 917
    :cond_18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->b(Ljava/lang/String;)V

    .line 923
    :goto_1f
    return-void

    .line 921
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 922
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 929
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 933
    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->b(Ljava/lang/String;)V

    .line 939
    :goto_1f
    return-void

    .line 937
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 938
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 848
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 850
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_12

    .line 851
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 853
    :cond_12
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-eqz v0, :cond_40

    .line 854
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_21
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/b/g;->a(I[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v3, v0, v1

    .line 858
    :goto_3f
    return-void

    .line 857
    :cond_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/b/g;->a(I[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    goto :goto_3f
.end method

.method public final a(J)V
    .registers 7
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 873
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 874
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-eqz v0, :cond_35

    .line 875
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_16
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/b/g;->a(J[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v3, v0, v1

    .line 883
    :goto_34
    return-void

    .line 878
    :cond_35
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_40

    .line 880
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 882
    :cond_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/b/g;->a(J[BI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

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
    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/a/i;->a(Ljava/lang/String;)I

    move-result v2

    .line 269
    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 270
    const-string v3, "Can not write a field name, expecting a value"

    invoke-static {v3}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 272
    :cond_12
    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v3, :cond_7e

    .line 273
    if-ne v2, v0, :cond_6b

    :goto_18
    if-eqz v0, :cond_6d

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    :goto_1c
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_7a

    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v2, :cond_2d

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_2d
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/codehaus/jackson/a/o;->s:I

    if-gt v0, v2, :cond_76

    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-gt v0, v2, :cond_70

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v2, v3, :cond_52

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_52
    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/a/o;->b([CII)V

    :goto_57
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_60

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_60
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v0, v1

    .line 283
    :goto_6a
    return-void

    :cond_6b
    move v0, v1

    .line 273
    goto :goto_18

    :cond_6d
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    goto :goto_1c

    :cond_70
    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/a/o;->a([CII)V

    goto :goto_57

    :cond_76
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    goto :goto_57

    :cond_7a
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    goto :goto_6a

    .line 276
    :cond_7e
    if-ne v2, v0, :cond_95

    .line 277
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v2, :cond_89

    .line 278
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 280
    :cond_89
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    const/16 v3, 0x2c

    aput-byte v3, v0, v2

    .line 282
    :cond_95
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_a1

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    goto :goto_6a

    :cond_a1
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v2, :cond_aa

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_aa
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lorg/codehaus/jackson/a/o;->s:I

    if-gt v0, v2, :cond_ee

    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-gt v0, v2, :cond_e8

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v2, v3, :cond_cf

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_cf
    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/a/o;->b([CII)V

    :goto_d4
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_dd

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_dd
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v0, v1

    goto :goto_6a

    :cond_e8
    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-direct {p0, v2, v1, v0}, Lorg/codehaus/jackson/a/o;->a([CII)V

    goto :goto_d4

    :cond_ee
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    goto :goto_d4
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter

    .prologue
    .line 946
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 947
    if-nez p1, :cond_b

    .line 948
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->i()V

    .line 954
    :goto_a
    return-void

    .line 949
    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-eqz v0, :cond_13

    .line 950
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 952
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter

    .prologue
    .line 898
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 899
    if-nez p1, :cond_b

    .line 900
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->i()V

    .line 906
    :goto_a
    return-void

    .line 901
    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-eqz v0, :cond_13

    .line 902
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 904
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Z)V
    .registers 7
    .parameter

    .prologue
    .line 985
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 986
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_10

    .line 987
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 989
    :cond_10
    if-eqz p1, :cond_23

    sget-object v0, Lorg/codehaus/jackson/a/o;->v:[B

    .line 990
    :goto_14
    array-length v1, v0

    .line 991
    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v4, p0, Lorg/codehaus/jackson/a/o;->o:I

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 992
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    .line 993
    return-void

    .line 989
    :cond_23
    sget-object v0, Lorg/codehaus/jackson/a/o;->w:[B

    goto :goto_14
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 353
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->a()Z

    move-result v0

    if-nez v0, :cond_24

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an ARRAY but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 356
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_38

    .line 357
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->e()I

    .line 364
    :goto_2f
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->j()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    .line 365
    return-void

    .line 359
    :cond_38
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_41

    .line 360
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 362
    :cond_41
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    goto :goto_2f
.end method

.method public final b(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 542
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 543
    if-nez p1, :cond_e

    .line 544
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->i()V

    .line 566
    :goto_d
    return-void

    .line 548
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 549
    iget v1, p0, Lorg/codehaus/jackson/a/o;->s:I

    if-le v0, v1, :cond_40

    .line 550
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_1f

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_1f
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v0, v1

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_35

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_35
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v0, v1

    goto :goto_d

    .line 554
    :cond_40
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-virtual {p1, v5, v0, v1, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 556
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-le v0, v1, :cond_77

    .line 557
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->r:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v1, v2, :cond_54

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_54
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v1, v2

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-direct {p0, v1, v5, v0}, Lorg/codehaus/jackson/a/o;->a([CII)V

    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_6c

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    :cond_6c
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v0, v1

    goto :goto_d

    .line 560
    :cond_77
    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-le v1, v2, :cond_83

    .line 561
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 563
    :cond_83
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v1, v2

    .line 564
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->r:[C

    invoke-direct {p0, v1, v5, v0}, Lorg/codehaus/jackson/a/o;->b([CII)V

    .line 565
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v4, v0, v1

    goto/16 :goto_d
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 370
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->i()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    .line 372
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_14

    .line 373
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    .line 380
    :goto_13
    return-void

    .line 375
    :cond_14
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_1d

    .line 376
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 378
    :cond_1d
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    goto :goto_13
.end method

.method protected final c(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->k()I

    move-result v0

    .line 1014
    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 1015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 1017
    :cond_25
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-nez v1, :cond_4b

    .line 1019
    packed-switch v0, :pswitch_data_72

    .line 1042
    :cond_2c
    :goto_2c
    return-void

    .line 1021
    :pswitch_2d
    const/16 v0, 0x2c

    .line 1033
    :goto_2f
    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v1, v2, :cond_38

    .line 1034
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 1036
    :cond_38
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    aput-byte v0, v1, v2

    .line 1037
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    goto :goto_2c

    .line 1024
    :pswitch_45
    const/16 v0, 0x3a

    .line 1025
    goto :goto_2f

    .line 1027
    :pswitch_48
    const/16 v0, 0x20

    .line 1028
    goto :goto_2f

    .line 1041
    :cond_4b
    packed-switch v0, :pswitch_data_7c

    invoke-static {}, Lorg/codehaus/jackson/a/o;->h()V

    goto :goto_2c

    :pswitch_52
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    goto :goto_2c

    :pswitch_55
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    goto :goto_2c

    :pswitch_58
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    goto :goto_2c

    :pswitch_5b
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    goto :goto_2c

    :cond_66
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    goto :goto_2c

    .line 1019
    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_45
        :pswitch_48
    .end packed-switch

    .line 1041
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_52
        :pswitch_55
        :pswitch_58
    .end packed-switch
.end method

.method public final close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1094
    invoke-super {p0}, Lorg/codehaus/jackson/a/c;->close()V

    .line 1100
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    if-eqz v0, :cond_28

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1103
    :goto_10
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/o;->g()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Lorg/codehaus/jackson/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1105
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/o;->b()V

    goto :goto_10

    .line 1106
    :cond_1e
    invoke-virtual {v0}, Lorg/codehaus/jackson/b;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1107
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/o;->d()V

    goto :goto_10

    .line 1113
    :cond_28
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 1121
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->i:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_3b

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1122
    :cond_3b
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1128
    :goto_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    if-eqz v0, :cond_4f

    iget-boolean v1, p0, Lorg/codehaus/jackson/a/o;->t:Z

    if-eqz v1, :cond_4f

    iput-object v2, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->i:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->b([B)V

    :cond_4f
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->r:[C

    if-eqz v0, :cond_5a

    iput-object v2, p0, Lorg/codehaus/jackson/a/o;->r:[C

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->i:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->b([C)V

    .line 1129
    :cond_5a
    return-void

    .line 1125
    :cond_5b
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_40
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 385
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->c()Z

    move-result v0

    if-nez v0, :cond_24

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current context not an object but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 388
    :cond_24
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->j()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    .line 389
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_38

    .line 390
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->e()I

    .line 397
    :goto_37
    return-void

    .line 392
    :cond_38
    iget v0, p0, Lorg/codehaus/jackson/a/o;->o:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    if-lt v0, v1, :cond_41

    .line 393
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 395
    :cond_41
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:[B

    iget v1, p0, Lorg/codehaus/jackson/a/o;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->o:I

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    goto :goto_37
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 999
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->i()V

    .line 1001
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 1082
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 1083
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/OutputStream;

    if-eqz v0, :cond_14

    .line 1084
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1085
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1088
    :cond_14
    return-void
.end method
