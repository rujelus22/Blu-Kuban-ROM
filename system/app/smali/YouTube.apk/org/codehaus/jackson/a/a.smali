.class public final Lorg/codehaus/jackson/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lorg/codehaus/jackson/b/c;

.field protected final b:Ljava/io/InputStream;

.field protected final c:[B

.field protected d:I

.field protected e:Z

.field protected f:I

.field private g:I

.field private h:I

.field private final i:Z


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/b/c;Ljava/io/InputStream;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v2, p0, Lorg/codehaus/jackson/a/a;->e:Z

    .line 76
    iput v1, p0, Lorg/codehaus/jackson/a/a;->f:I

    .line 86
    iput-object p1, p0, Lorg/codehaus/jackson/a/a;->a:Lorg/codehaus/jackson/b/c;

    .line 87
    iput-object p2, p0, Lorg/codehaus/jackson/a/a;->b:Ljava/io/InputStream;

    .line 88
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->e()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/a;->c:[B

    .line 89
    iput v1, p0, Lorg/codehaus/jackson/a/a;->g:I

    iput v1, p0, Lorg/codehaus/jackson/a/a;->h:I

    .line 90
    iput v1, p0, Lorg/codehaus/jackson/a/a;->d:I

    .line 91
    iput-boolean v2, p0, Lorg/codehaus/jackson/a/a;->i:Z

    .line 92
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 485
    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(I)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 463
    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_f

    .line 464
    iput-boolean v1, p0, Lorg/codehaus/jackson/a/a;->e:Z

    .line 472
    :goto_a
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/a/a;->f:I

    move v0, v1

    .line 473
    :cond_e
    return v0

    .line 465
    :cond_f
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_e

    .line 466
    iput-boolean v0, p0, Lorg/codehaus/jackson/a/a;->e:Z

    goto :goto_a
.end method

.method private b(I)Z
    .registers 8
    .parameter

    .prologue
    .line 500
    iget v0, p0, Lorg/codehaus/jackson/a/a;->h:I

    iget v1, p0, Lorg/codehaus/jackson/a/a;->g:I

    sub-int/2addr v0, v1

    move v1, v0

    .line 501
    :goto_6
    if-ge v1, p1, :cond_2a

    .line 504
    iget-object v0, p0, Lorg/codehaus/jackson/a/a;->b:Ljava/io/InputStream;

    if-nez v0, :cond_11

    .line 505
    const/4 v0, -0x1

    .line 509
    :goto_d
    if-gtz v0, :cond_22

    .line 510
    const/4 v0, 0x0

    .line 515
    :goto_10
    return v0

    .line 507
    :cond_11
    iget-object v0, p0, Lorg/codehaus/jackson/a/a;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v3, p0, Lorg/codehaus/jackson/a/a;->h:I

    iget-object v4, p0, Lorg/codehaus/jackson/a/a;->c:[B

    array-length v4, v4

    iget v5, p0, Lorg/codehaus/jackson/a/a;->h:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_d

    .line 512
    :cond_22
    iget v2, p0, Lorg/codehaus/jackson/a/a;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/codehaus/jackson/a/a;->h:I

    .line 513
    add-int/2addr v0, v1

    move v1, v0

    .line 514
    goto :goto_6

    .line 515
    :cond_2a
    const/4 v0, 0x1

    goto :goto_10
.end method


# virtual methods
.method public final a(ILorg/codehaus/jackson/c;Lorg/codehaus/jackson/c/a;Lorg/codehaus/jackson/c/c;)Lorg/codehaus/jackson/JsonParser;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 224
    invoke-direct {p0, v5}, Lorg/codehaus/jackson/a/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v3, p0, Lorg/codehaus/jackson/a/a;->g:I

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1c4

    :goto_3a
    ushr-int/lit8 v2, v3, 0x10

    const v4, 0xfeff

    if-ne v2, v4, :cond_a4

    iget v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    iput v6, p0, Lorg/codehaus/jackson/a/a;->f:I

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/a;->e:Z

    move v2, v0

    :goto_4c
    if-eqz v2, :cond_ca

    :cond_4e
    :goto_4e
    if-nez v0, :cond_126

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    :goto_52
    iget-object v1, p0, Lorg/codehaus/jackson/a/a;->a:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->a(Lorg/codehaus/jackson/JsonEncoding;)V

    .line 227
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->CANONICALIZE_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v8

    .line 228
    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->INTERN_FIELD_NAMES:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->enabledIn(I)Z

    move-result v9

    .line 229
    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne v0, v1, :cond_14f

    .line 233
    if-eqz v8, :cond_14f

    .line 234
    invoke-virtual {p3, v9}, Lorg/codehaus/jackson/c/a;->a(Z)Lorg/codehaus/jackson/c/a;

    move-result-object v5

    .line 235
    new-instance v0, Lorg/codehaus/jackson/a/m;

    iget-object v1, p0, Lorg/codehaus/jackson/a/a;->a:Lorg/codehaus/jackson/b/c;

    iget-object v3, p0, Lorg/codehaus/jackson/a/a;->b:Ljava/io/InputStream;

    iget-object v6, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v7, p0, Lorg/codehaus/jackson/a/a;->g:I

    iget v8, p0, Lorg/codehaus/jackson/a/a;->h:I

    iget-boolean v9, p0, Lorg/codehaus/jackson/a/a;->i:Z

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lorg/codehaus/jackson/a/m;-><init>(Lorg/codehaus/jackson/b/c;ILjava/io/InputStream;Lorg/codehaus/jackson/c;Lorg/codehaus/jackson/c/a;[BIIZ)V

    .line 238
    :goto_80
    return-object v0

    .line 224
    :sswitch_81
    iput-boolean v0, p0, Lorg/codehaus/jackson/a/a;->e:Z

    iget v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    iput v5, p0, Lorg/codehaus/jackson/a/a;->f:I

    move v2, v0

    goto :goto_4c

    :sswitch_8d
    iget v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    iput v5, p0, Lorg/codehaus/jackson/a/a;->f:I

    iput-boolean v1, p0, Lorg/codehaus/jackson/a/a;->e:Z

    move v2, v0

    goto :goto_4c

    :sswitch_99
    const-string v2, "2143"

    invoke-static {v2}, Lorg/codehaus/jackson/a/a;->a(Ljava/lang/String;)V

    :sswitch_9e
    const-string v2, "3412"

    invoke-static {v2}, Lorg/codehaus/jackson/a/a;->a(Ljava/lang/String;)V

    goto :goto_3a

    :cond_a4
    const v4, 0xfffe

    if-ne v2, v4, :cond_b5

    iget v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    iput v6, p0, Lorg/codehaus/jackson/a/a;->f:I

    iput-boolean v1, p0, Lorg/codehaus/jackson/a/a;->e:Z

    move v2, v0

    goto :goto_4c

    :cond_b5
    ushr-int/lit8 v2, v3, 0x8

    const v4, 0xefbbbf

    if-ne v2, v4, :cond_c8

    iget v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    iput v0, p0, Lorg/codehaus/jackson/a/a;->f:I

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/a;->e:Z

    move v2, v0

    goto :goto_4c

    :cond_c8
    move v2, v1

    goto :goto_4c

    :cond_ca
    shr-int/lit8 v2, v3, 0x8

    if-nez v2, :cond_e0

    iput-boolean v0, p0, Lorg/codehaus/jackson/a/a;->e:Z

    :goto_d0
    iput v5, p0, Lorg/codehaus/jackson/a/a;->f:I

    move v2, v0

    :goto_d3
    if-nez v2, :cond_4e

    ushr-int/lit8 v2, v3, 0x10

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/a;->a(I)Z

    move-result v2

    if-nez v2, :cond_4e

    :cond_dd
    move v0, v1

    goto/16 :goto_4e

    :cond_e0
    const v2, 0xffffff

    and-int/2addr v2, v3

    if-nez v2, :cond_e9

    iput-boolean v1, p0, Lorg/codehaus/jackson/a/a;->e:Z

    goto :goto_d0

    :cond_e9
    const v2, -0xff0001

    and-int/2addr v2, v3

    if-nez v2, :cond_f5

    const-string v2, "3412"

    invoke-static {v2}, Lorg/codehaus/jackson/a/a;->a(Ljava/lang/String;)V

    goto :goto_d0

    :cond_f5
    const v2, -0xff01

    and-int/2addr v2, v3

    if-nez v2, :cond_101

    const-string v2, "2143"

    invoke-static {v2}, Lorg/codehaus/jackson/a/a;->a(Ljava/lang/String;)V

    goto :goto_d0

    :cond_101
    move v2, v1

    goto :goto_d3

    :cond_103
    invoke-direct {p0, v6}, Lorg/codehaus/jackson/a/a;->b(I)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v3, p0, Lorg/codehaus/jackson/a/a;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/a/a;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/a/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_dd

    goto/16 :goto_4e

    :cond_126
    iget v0, p0, Lorg/codehaus/jackson/a/a;->f:I

    packed-switch v0, :pswitch_data_1d6

    :pswitch_12b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_133
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    :pswitch_137
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/a;->e:Z

    if-eqz v0, :cond_13f

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    :cond_13f
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    :pswitch_143
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/a;->e:Z

    if-eqz v0, :cond_14b

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    :cond_14b
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    .line 238
    :cond_14f
    new-instance v7, Lorg/codehaus/jackson/a/j;

    iget-object v10, p0, Lorg/codehaus/jackson/a/a;->a:Lorg/codehaus/jackson/b/c;

    iget-object v0, p0, Lorg/codehaus/jackson/a/a;->a:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/c;->b()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    sget-object v0, Lorg/codehaus/jackson/a/b;->a:[I

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16c
    new-instance v0, Lorg/codehaus/jackson/b/i;

    iget-object v1, p0, Lorg/codehaus/jackson/a/a;->a:Lorg/codehaus/jackson/b/c;

    iget-object v2, p0, Lorg/codehaus/jackson/a/a;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/a/a;->g:I

    iget v5, p0, Lorg/codehaus/jackson/a/a;->h:I

    iget-object v6, p0, Lorg/codehaus/jackson/a/a;->a:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v6}, Lorg/codehaus/jackson/b/c;->b()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->isBigEndian()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/b/i;-><init>(Lorg/codehaus/jackson/b/c;Ljava/io/InputStream;[BIIZ)V

    move-object v3, v0

    :goto_186
    invoke-virtual {p4, v8, v9}, Lorg/codehaus/jackson/c/c;->a(ZZ)Lorg/codehaus/jackson/c/c;

    move-result-object v5

    move-object v0, v7

    move-object v1, v10

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/j;-><init>(Lorg/codehaus/jackson/b/c;ILjava/io/Reader;Lorg/codehaus/jackson/c;Lorg/codehaus/jackson/c/c;)V

    move-object v0, v7

    goto/16 :goto_80

    :pswitch_194
    iget-object v2, p0, Lorg/codehaus/jackson/a/a;->b:Ljava/io/InputStream;

    if-nez v2, :cond_1ad

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v2, p0, Lorg/codehaus/jackson/a/a;->g:I

    iget v3, p0, Lorg/codehaus/jackson/a/a;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :goto_1a3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_186

    :cond_1ad
    iget v0, p0, Lorg/codehaus/jackson/a/a;->g:I

    iget v1, p0, Lorg/codehaus/jackson/a/a;->h:I

    if-ge v0, v1, :cond_1c1

    new-instance v0, Lorg/codehaus/jackson/b/e;

    iget-object v1, p0, Lorg/codehaus/jackson/a/a;->a:Lorg/codehaus/jackson/b/c;

    iget-object v3, p0, Lorg/codehaus/jackson/a/a;->c:[B

    iget v4, p0, Lorg/codehaus/jackson/a/a;->g:I

    iget v5, p0, Lorg/codehaus/jackson/a/a;->h:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/b/e;-><init>(Lorg/codehaus/jackson/b/c;Ljava/io/InputStream;[BII)V

    goto :goto_1a3

    :cond_1c1
    move-object v0, v2

    goto :goto_1a3

    .line 224
    nop

    :sswitch_data_1c4
    .sparse-switch
        -0x1010000 -> :sswitch_9e
        -0x20000 -> :sswitch_8d
        0xfeff -> :sswitch_81
        0xfffe -> :sswitch_99
    .end sparse-switch

    :pswitch_data_1d6
    .packed-switch 0x1
        :pswitch_133
        :pswitch_137
        :pswitch_12b
        :pswitch_143
    .end packed-switch

    .line 238
    :pswitch_data_1e2
    .packed-switch 0x1
        :pswitch_16c
        :pswitch_16c
        :pswitch_194
        :pswitch_194
        :pswitch_194
    .end packed-switch
.end method
