.class public final Lh;
.super Ljava/lang/Object;


# instance fields
.field final a:Lz;

.field final b:Ljava/io/InputStream;

.field final c:[B

.field protected d:I

.field e:Z

.field f:I

.field private g:I

.field private h:I

.field private final i:Z


# direct methods
.method public constructor <init>(Lz;[BII)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh;->e:Z

    iput v1, p0, Lh;->f:I

    iput-object p1, p0, Lh;->a:Lz;

    const/4 v0, 0x0

    iput-object v0, p0, Lh;->b:Ljava/io/InputStream;

    iput-object p2, p0, Lh;->c:[B

    iput v1, p0, Lh;->g:I

    add-int/lit8 v0, p4, 0x0

    iput v0, p0, Lh;->h:I

    iput v1, p0, Lh;->d:I

    iput-boolean v1, p0, Lh;->i:Z

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4

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

    const/4 v1, 0x1

    const/4 v0, 0x0

    const v2, 0xff00

    and-int/2addr v2, p1

    if-nez v2, :cond_f

    iput-boolean v1, p0, Lh;->e:Z

    :goto_a
    const/4 v0, 0x2

    iput v0, p0, Lh;->f:I

    move v0, v1

    :cond_e
    return v0

    :cond_f
    and-int/lit16 v2, p1, 0xff

    if-nez v2, :cond_e

    iput-boolean v0, p0, Lh;->e:Z

    goto :goto_a
.end method

.method private b(I)Z
    .registers 8

    iget v0, p0, Lh;->h:I

    iget v1, p0, Lh;->g:I

    sub-int/2addr v0, v1

    move v1, v0

    :goto_6
    if-ge v1, p1, :cond_2a

    iget-object v0, p0, Lh;->b:Ljava/io/InputStream;

    if-nez v0, :cond_11

    const/4 v0, -0x1

    :goto_d
    if-gtz v0, :cond_22

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lh;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lh;->c:[B

    iget v3, p0, Lh;->h:I

    iget-object v4, p0, Lh;->c:[B

    array-length v4, v4

    iget v5, p0, Lh;->h:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    goto :goto_d

    :cond_22
    iget v2, p0, Lh;->h:I

    add-int/2addr v2, v0

    iput v2, p0, Lh;->h:I

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_6

    :cond_2a
    const/4 v0, 0x1

    goto :goto_10
.end method


# virtual methods
.method public final a(ILorg/codehaus/jackson/c;Lae;Lag;)Lorg/codehaus/jackson/JsonParser;
    .registers 16

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v5}, Lh;->b(I)Z

    move-result v2

    if-eqz v2, :cond_103

    iget-object v2, p0, Lh;->c:[B

    iget v3, p0, Lh;->g:I

    aget-byte v2, v2, v3

    shl-int/lit8 v2, v2, 0x18

    iget-object v3, p0, Lh;->c:[B

    iget v4, p0, Lh;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    iget-object v3, p0, Lh;->c:[B

    iget v4, p0, Lh;->g:I

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, Lh;->c:[B

    iget v4, p0, Lh;->g:I

    add-int/lit8 v4, v4, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v3, v2

    sparse-switch v3, :sswitch_data_1c2

    :goto_3a
    ushr-int/lit8 v2, v3, 0x10

    const v4, 0xfeff

    if-ne v2, v4, :cond_a4

    iget v2, p0, Lh;->g:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lh;->g:I

    iput v6, p0, Lh;->f:I

    iput-boolean v0, p0, Lh;->e:Z

    move v2, v0

    :goto_4c
    if-eqz v2, :cond_ca

    :cond_4e
    :goto_4e
    if-nez v0, :cond_126

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->a:Lorg/codehaus/jackson/JsonEncoding;

    :goto_52
    iget-object v1, p0, Lh;->a:Lz;

    invoke-virtual {v1, v0}, Lz;->a(Lorg/codehaus/jackson/JsonEncoding;)V

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->h:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->a(I)Z

    move-result v8

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->g:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/JsonParser$Feature;->a(I)Z

    move-result v9

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->a:Lorg/codehaus/jackson/JsonEncoding;

    if-ne v0, v1, :cond_14e

    if-eqz v8, :cond_14e

    invoke-virtual {p3, v8, v9}, Lae;->a(ZZ)Lae;

    move-result-object v5

    new-instance v0, Lv;

    iget-object v1, p0, Lh;->a:Lz;

    iget-object v3, p0, Lh;->b:Ljava/io/InputStream;

    iget-object v6, p0, Lh;->c:[B

    iget v7, p0, Lh;->g:I

    iget v8, p0, Lh;->h:I

    iget-boolean v9, p0, Lh;->i:Z

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lv;-><init>(Lz;ILjava/io/InputStream;Lorg/codehaus/jackson/c;Lae;[BIIZ)V

    :goto_80
    return-object v0

    :sswitch_81
    iput-boolean v0, p0, Lh;->e:Z

    iget v2, p0, Lh;->g:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lh;->g:I

    iput v5, p0, Lh;->f:I

    move v2, v0

    goto :goto_4c

    :sswitch_8d
    iget v2, p0, Lh;->g:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lh;->g:I

    iput v5, p0, Lh;->f:I

    iput-boolean v1, p0, Lh;->e:Z

    move v2, v0

    goto :goto_4c

    :sswitch_99
    const-string v2, "2143"

    invoke-static {v2}, Lh;->a(Ljava/lang/String;)V

    :sswitch_9e
    const-string v2, "3412"

    invoke-static {v2}, Lh;->a(Ljava/lang/String;)V

    goto :goto_3a

    :cond_a4
    const v4, 0xfffe

    if-ne v2, v4, :cond_b5

    iget v2, p0, Lh;->g:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lh;->g:I

    iput v6, p0, Lh;->f:I

    iput-boolean v1, p0, Lh;->e:Z

    move v2, v0

    goto :goto_4c

    :cond_b5
    ushr-int/lit8 v2, v3, 0x8

    const v4, 0xefbbbf

    if-ne v2, v4, :cond_c8

    iget v2, p0, Lh;->g:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lh;->g:I

    iput v0, p0, Lh;->f:I

    iput-boolean v0, p0, Lh;->e:Z

    move v2, v0

    goto :goto_4c

    :cond_c8
    move v2, v1

    goto :goto_4c

    :cond_ca
    shr-int/lit8 v2, v3, 0x8

    if-nez v2, :cond_e0

    iput-boolean v0, p0, Lh;->e:Z

    :goto_d0
    iput v5, p0, Lh;->f:I

    move v2, v0

    :goto_d3
    if-nez v2, :cond_4e

    ushr-int/lit8 v2, v3, 0x10

    invoke-direct {p0, v2}, Lh;->a(I)Z

    move-result v2

    if-nez v2, :cond_4e

    :cond_dd
    move v0, v1

    goto/16 :goto_4e

    :cond_e0
    const v2, 0xffffff

    and-int/2addr v2, v3

    if-nez v2, :cond_e9

    iput-boolean v1, p0, Lh;->e:Z

    goto :goto_d0

    :cond_e9
    const v2, -0xff0001

    and-int/2addr v2, v3

    if-nez v2, :cond_f5

    const-string v2, "3412"

    invoke-static {v2}, Lh;->a(Ljava/lang/String;)V

    goto :goto_d0

    :cond_f5
    const v2, -0xff01

    and-int/2addr v2, v3

    if-nez v2, :cond_101

    const-string v2, "2143"

    invoke-static {v2}, Lh;->a(Ljava/lang/String;)V

    goto :goto_d0

    :cond_101
    move v2, v1

    goto :goto_d3

    :cond_103
    invoke-direct {p0, v6}, Lh;->b(I)Z

    move-result v2

    if-eqz v2, :cond_dd

    iget-object v2, p0, Lh;->c:[B

    iget v3, p0, Lh;->g:I

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lh;->c:[B

    iget v4, p0, Lh;->g:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    invoke-direct {p0, v2}, Lh;->a(I)Z

    move-result v2

    if-eqz v2, :cond_dd

    goto/16 :goto_4e

    :cond_126
    iget v0, p0, Lh;->f:I

    if-ne v0, v6, :cond_136

    iget-boolean v0, p0, Lh;->e:Z

    if-eqz v0, :cond_132

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->b:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    :cond_132
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->c:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    :cond_136
    iget v0, p0, Lh;->f:I

    if-ne v0, v5, :cond_146

    iget-boolean v0, p0, Lh;->e:Z

    if-eqz v0, :cond_142

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->d:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    :cond_142
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->e:Lorg/codehaus/jackson/JsonEncoding;

    goto/16 :goto_52

    :cond_146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14e
    new-instance v7, Lr;

    iget-object v10, p0, Lh;->a:Lz;

    iget-object v0, p0, Lh;->a:Lz;

    invoke-virtual {v0}, Lz;->b()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    sget-object v0, Li;->a:[I

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1d4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_16b
    new-instance v0, Lad;

    iget-object v1, p0, Lh;->a:Lz;

    iget-object v2, p0, Lh;->b:Ljava/io/InputStream;

    iget-object v3, p0, Lh;->c:[B

    iget v4, p0, Lh;->g:I

    iget v5, p0, Lh;->h:I

    iget-object v6, p0, Lh;->a:Lz;

    invoke-virtual {v6}, Lz;->b()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->b()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lad;-><init>(Lz;Ljava/io/InputStream;[BIIZ)V

    move-object v3, v0

    :goto_185
    invoke-virtual {p4, v8, v9}, Lag;->a(ZZ)Lag;

    move-result-object v5

    move-object v0, v7

    move-object v1, v10

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lr;-><init>(Lz;ILjava/io/Reader;Lorg/codehaus/jackson/c;Lag;)V

    move-object v0, v7

    goto/16 :goto_80

    :pswitch_193
    iget-object v2, p0, Lh;->b:Ljava/io/InputStream;

    if-nez v2, :cond_1ac

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lh;->c:[B

    iget v2, p0, Lh;->g:I

    iget v3, p0, Lh;->h:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :goto_1a2
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_185

    :cond_1ac
    iget v0, p0, Lh;->g:I

    iget v1, p0, Lh;->h:I

    if-ge v0, v1, :cond_1c0

    new-instance v0, Laa;

    iget-object v1, p0, Lh;->a:Lz;

    iget-object v3, p0, Lh;->c:[B

    iget v4, p0, Lh;->g:I

    iget v5, p0, Lh;->h:I

    invoke-direct/range {v0 .. v5}, Laa;-><init>(Lz;Ljava/io/InputStream;[BII)V

    goto :goto_1a2

    :cond_1c0
    move-object v0, v2

    goto :goto_1a2

    :sswitch_data_1c2
    .sparse-switch
        -0x1010000 -> :sswitch_9e
        -0x20000 -> :sswitch_8d
        0xfeff -> :sswitch_81
        0xfffe -> :sswitch_99
    .end sparse-switch

    :pswitch_data_1d4
    .packed-switch 0x1
        :pswitch_16b
        :pswitch_16b
        :pswitch_193
        :pswitch_193
        :pswitch_193
    .end packed-switch
.end method
