.class public final Lv;
.super Lu;


# static fields
.field private static final O:[I

.field private static final P:[I


# instance fields
.field protected K:Lorg/codehaus/jackson/c;

.field protected final L:Lae;

.field protected M:[I

.field protected N:Z

.field private Q:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/codehaus/jackson/util/b;->b()[I

    move-result-object v0

    sput-object v0, Lv;->O:[I

    invoke-static {}, Lorg/codehaus/jackson/util/b;->a()[I

    move-result-object v0

    sput-object v0, Lv;->P:[I

    return-void
.end method

.method public constructor <init>(Lz;ILjava/io/InputStream;Lorg/codehaus/jackson/c;Lae;[BIIZ)V
    .registers 18

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lu;-><init>(Lz;ILjava/io/InputStream;[BIIZ)V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lv;->M:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv;->N:Z

    iput-object p4, p0, Lv;->K:Lorg/codehaus/jackson/c;

    iput-object p5, p0, Lv;->L:Lae;

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->h:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {v0, p2}, Lorg/codehaus/jackson/JsonParser$Feature;->a(I)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-static {}, Lv;->q()V

    :cond_25
    return-void
.end method

.method private final a(II)Lai;
    .registers 5

    iget-object v0, p0, Lv;->L:Lae;

    invoke-virtual {v0, p1}, Lae;->a(I)Lai;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lv;->M:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lv;->M:[I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lv;->a([III)Lai;

    move-result-object v0

    goto :goto_8
.end method

.method private final a(III)Lai;
    .registers 10

    iget-object v1, p0, Lv;->M:[I

    const/4 v2, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lv;->a([IIIII)Lai;

    move-result-object v0

    return-object v0
.end method

.method private final a(IIII)Lai;
    .registers 11

    iget-object v0, p0, Lv;->M:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v1, p0, Lv;->M:[I

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lv;->a([IIIII)Lai;

    move-result-object v0

    return-object v0
.end method

.method private final a([III)Lai;
    .registers 15

    shl-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x4

    add-int v6, v0, p3

    const/4 v0, 0x4

    if-ge p3, v0, :cond_da

    add-int/lit8 v0, p2, -0x1

    aget v0, p1, v0

    add-int/lit8 v1, p2, -0x1

    rsub-int/lit8 v2, p3, 0x4

    shl-int/lit8 v2, v2, 0x3

    shl-int v2, v0, v2

    aput v2, p1, v1

    :goto_17
    iget-object v1, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v6, :cond_100

    shr-int/lit8 v2, v3, 0x2

    aget v2, p1, v2

    and-int/lit8 v4, v3, 0x3

    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x7f

    if-le v2, v4, :cond_114

    and-int/lit16 v4, v2, 0xe0

    const/16 v7, 0xc0

    if-ne v4, v7, :cond_dd

    and-int/lit8 v4, v2, 0x1f

    const/4 v2, 0x1

    move v10, v2

    move v2, v4

    move v4, v10

    :goto_41
    add-int v7, v3, v4

    if-le v7, v6, :cond_4a

    const-string v7, " in field name"

    invoke-virtual {p0, v7}, Lv;->c(Ljava/lang/String;)V

    :cond_4a
    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_60

    invoke-direct {p0, v7}, Lv;->n(I)V

    :cond_60
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    const/4 v7, 0x1

    if-le v4, v7, :cond_a3

    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_7e

    invoke-direct {p0, v7}, Lv;->n(I)V

    :cond_7e
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    const/4 v7, 0x2

    if-le v4, v7, :cond_a3

    shr-int/lit8 v7, v3, 0x2

    aget v7, p1, v7

    and-int/lit8 v8, v3, 0x3

    rsub-int/lit8 v8, v8, 0x3

    shl-int/lit8 v8, v8, 0x3

    shr-int/2addr v7, v8

    add-int/lit8 v3, v3, 0x1

    and-int/lit16 v8, v7, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_9e

    and-int/lit16 v8, v7, 0xff

    invoke-direct {p0, v8}, Lv;->n(I)V

    :cond_9e
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/2addr v2, v7

    :cond_a3
    const/4 v7, 0x2

    if-le v4, v7, :cond_114

    const/high16 v4, 0x1

    sub-int/2addr v2, v4

    array-length v4, v1

    if-lt v5, v4, :cond_b2

    iget-object v1, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->l()[C

    move-result-object v1

    :cond_b2
    add-int/lit8 v4, v5, 0x1

    const v7, 0xd800

    shr-int/lit8 v8, v2, 0xa

    add-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v5

    const v5, 0xdc00

    and-int/lit16 v2, v2, 0x3ff

    or-int/2addr v2, v5

    move v10, v2

    move v2, v3

    move v3, v4

    move-object v4, v1

    move v1, v10

    :goto_c8
    array-length v5, v4

    if-lt v3, v5, :cond_d1

    iget-object v4, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v4}, Lorg/codehaus/jackson/util/c;->l()[C

    move-result-object v4

    :cond_d1
    add-int/lit8 v5, v3, 0x1

    int-to-char v1, v1

    aput-char v1, v4, v3

    move v3, v2

    move-object v1, v4

    goto/16 :goto_20

    :cond_da
    const/4 v0, 0x0

    goto/16 :goto_17

    :cond_dd
    and-int/lit16 v4, v2, 0xf0

    const/16 v7, 0xe0

    if-ne v4, v7, :cond_eb

    and-int/lit8 v4, v2, 0xf

    const/4 v2, 0x2

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    :cond_eb
    and-int/lit16 v4, v2, 0xf8

    const/16 v7, 0xf0

    if-ne v4, v7, :cond_f9

    and-int/lit8 v4, v2, 0x7

    const/4 v2, 0x3

    move v10, v2

    move v2, v4

    move v4, v10

    goto/16 :goto_41

    :cond_f9
    invoke-direct {p0, v2}, Lv;->m(I)V

    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_41

    :cond_100
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v5}, Ljava/lang/String;-><init>([CII)V

    const/4 v1, 0x4

    if-ge p3, v1, :cond_10d

    add-int/lit8 v1, p2, -0x1

    aput v0, p1, v1

    :cond_10d
    iget-object v0, p0, Lv;->L:Lae;

    invoke-virtual {v0, v2, p1, p2}, Lae;->a(Ljava/lang/String;[II)Lai;

    move-result-object v0

    return-object v0

    :cond_114
    move-object v4, v1

    move v1, v2

    move v2, v3

    move v3, v5

    goto :goto_c8
.end method

.method private final a([IIII)Lai;
    .registers 7

    array-length v0, p1

    if-lt p2, v0, :cond_a

    array-length v0, p1

    invoke-static {p1, v0}, Lv;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lv;->M:[I

    :cond_a
    add-int/lit8 v1, p2, 0x1

    aput p3, p1, p2

    iget-object v0, p0, Lv;->L:Lae;

    invoke-virtual {v0, p1, v1}, Lae;->a([II)Lai;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-direct {p0, p1, v1, p4}, Lv;->a([III)Lai;

    move-result-object v0

    :cond_1a
    return-object v0
.end method

.method private a([IIIII)Lai;
    .registers 15

    const/4 v7, 0x4

    const/4 v1, 0x0

    sget-object v5, Lv;->P:[I

    :goto_4
    aget v0, v5, p4

    if-eqz v0, :cond_d6

    const/16 v0, 0x22

    if-eq p4, v0, :cond_ae

    const/16 v0, 0x5c

    if-eq p4, v0, :cond_6b

    const-string v0, "name"

    invoke-virtual {p0, p4, v0}, Lv;->c(ILjava/lang/String;)V

    :goto_15
    const/16 v0, 0x7f

    if-le p4, v0, :cond_d6

    if-lt p5, v7, :cond_d2

    array-length v0, p1

    if-lt p2, v0, :cond_25

    array-length v0, p1

    invoke-static {p1, v0}, Lv;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lv;->M:[I

    :cond_25
    add-int/lit8 v4, p2, 0x1

    aput p3, p1, p2

    move p5, v1

    move p3, v1

    move-object v0, p1

    :goto_2c
    const/16 v2, 0x800

    if-ge p4, v2, :cond_70

    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0x6

    or-int/lit16 v3, v3, 0xc0

    or-int/2addr v3, v2

    add-int/lit8 v2, p5, 0x1

    move v8, v2

    move v2, v3

    move-object v3, v0

    move v0, v8

    :goto_3d
    and-int/lit8 v6, p4, 0x3f

    or-int/lit16 p3, v6, 0x80

    move p5, v0

    move p2, v4

    move-object v0, v3

    move v3, v2

    :goto_45
    if-ge p5, v7, :cond_9c

    add-int/lit8 p5, p5, 0x1

    shl-int/lit8 v2, v3, 0x8

    or-int/2addr p3, v2

    move-object p1, v0

    :goto_4d
    iget v0, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v0, v2, :cond_5e

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-nez v0, :cond_5e

    const-string v0, " in field name"

    invoke-virtual {p0, v0}, Lv;->c(Ljava/lang/String;)V

    :cond_5e
    iget-object v0, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v2

    and-int/lit16 p4, v0, 0xff

    goto :goto_4

    :cond_6b
    invoke-direct {p0}, Lv;->t()C

    move-result p4

    goto :goto_15

    :cond_70
    shl-int/lit8 v2, p3, 0x8

    shr-int/lit8 v3, p4, 0xc

    or-int/lit16 v3, v3, 0xe0

    or-int/2addr v3, v2

    add-int/lit8 v2, p5, 0x1

    if-lt v2, v7, :cond_cc

    array-length v2, v0

    if-lt v4, v2, :cond_85

    array-length v2, v0

    invoke-static {v0, v2}, Lv;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lv;->M:[I

    :cond_85
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    :goto_8d
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v6, p4, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    or-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    move v8, v3

    move-object v3, v4

    move v4, v8

    goto :goto_3d

    :cond_9c
    array-length v2, v0

    if-lt p2, v2, :cond_a6

    array-length v2, v0

    invoke-static {v0, v2}, Lv;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lv;->M:[I

    :cond_a6
    add-int/lit8 v2, p2, 0x1

    aput v3, v0, p2

    const/4 p5, 0x1

    move p2, v2

    move-object p1, v0

    goto :goto_4d

    :cond_ae
    if-lez p5, :cond_bf

    array-length v0, p1

    if-lt p2, v0, :cond_ba

    array-length v0, p1

    invoke-static {p1, v0}, Lv;->a([II)[I

    move-result-object p1

    iput-object p1, p0, Lv;->M:[I

    :cond_ba
    add-int/lit8 v0, p2, 0x1

    aput p3, p1, p2

    move p2, v0

    :cond_bf
    iget-object v0, p0, Lv;->L:Lae;

    invoke-virtual {v0, p1, p2}, Lae;->a([II)Lai;

    move-result-object v0

    if-nez v0, :cond_cb

    invoke-direct {p0, p1, p2, p5}, Lv;->a([III)Lai;

    move-result-object v0

    :cond_cb
    return-object v0

    :cond_cc
    move v8, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v8

    goto :goto_8d

    :cond_d2
    move v4, p2

    move-object v0, p1

    goto/16 :goto_2c

    :cond_d6
    move v3, p3

    move-object v0, p1

    move p3, p4

    goto/16 :goto_45
.end method

.method private final a([CIIZI)Lorg/codehaus/jackson/JsonToken;
    .registers 15

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x2e

    if-ne p3, v1, :cond_109

    add-int/lit8 v1, p2, 0x1

    int-to-char v2, p3

    aput-char v2, p1, p2

    :goto_b
    iget v2, p0, Lv;->s:I

    iget v3, p0, Lv;->t:I

    if-lt v2, v3, :cond_c0

    invoke-virtual {p0}, Lv;->l()Z

    move-result v2

    if-nez v2, :cond_c0

    const/4 v4, 0x1

    :cond_18
    if-nez v0, :cond_1f

    const-string v2, "Decimal point not followed by a digit"

    invoke-virtual {p0, p3, v2}, Lv;->a(ILjava/lang/String;)V

    :cond_1f
    move v6, v0

    move v0, v1

    move-object v1, p1

    :goto_22
    const/4 v3, 0x0

    const/16 v2, 0x65

    if-eq p3, v2, :cond_2b

    const/16 v2, 0x45

    if-ne p3, v2, :cond_103

    :cond_2b
    array-length v2, v1

    if-lt v0, v2, :cond_35

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_35
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, p3

    aput-char v5, v1, v0

    iget v0, p0, Lv;->s:I

    iget v5, p0, Lv;->t:I

    if-lt v0, v5, :cond_43

    invoke-virtual {p0}, Lv;->k()V

    :cond_43
    iget-object v0, p0, Lv;->I:[B

    iget v5, p0, Lv;->s:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lv;->s:I

    aget-byte v0, v0, v5

    and-int/lit16 v5, v0, 0xff

    const/16 v0, 0x2d

    if-eq v5, v0, :cond_57

    const/16 v0, 0x2b

    if-ne v5, v0, :cond_ff

    :cond_57
    array-length v0, v1

    if-lt v2, v0, :cond_fc

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    const/4 v0, 0x0

    :goto_61
    add-int/lit8 v2, v0, 0x1

    int-to-char v5, v5

    aput-char v5, v1, v0

    iget v0, p0, Lv;->s:I

    iget v5, p0, Lv;->t:I

    if-lt v0, v5, :cond_6f

    invoke-virtual {p0}, Lv;->k()V

    :cond_6f
    iget-object v0, p0, Lv;->I:[B

    iget v5, p0, Lv;->s:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lv;->s:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v2

    move v2, v3

    :goto_7e
    const/16 v3, 0x39

    if-gt v5, v3, :cond_f7

    const/16 v3, 0x30

    if-lt v5, v3, :cond_f7

    add-int/lit8 v2, v2, 0x1

    array-length v3, v1

    if-lt v0, v3, :cond_92

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    const/4 v0, 0x0

    :cond_92
    add-int/lit8 v3, v0, 0x1

    int-to-char v7, v5

    aput-char v7, v1, v0

    iget v0, p0, Lv;->s:I

    iget v7, p0, Lv;->t:I

    if-lt v0, v7, :cond_e8

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-nez v0, :cond_e8

    const/4 v4, 0x1

    move v0, v2

    move v1, v4

    move v2, v3

    :goto_a7
    if-nez v0, :cond_ae

    const-string v3, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, v5, v3}, Lv;->a(ILjava/lang/String;)V

    :cond_ae
    :goto_ae
    if-nez v1, :cond_b6

    iget v1, p0, Lv;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lv;->s:I

    :cond_b6
    iget-object v1, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    invoke-virtual {p0, p4, p5, v6, v0}, Lv;->b(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    return-object v0

    :cond_c0
    iget-object v2, p0, Lv;->I:[B

    iget v3, p0, Lv;->s:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v2, v2, v3

    and-int/lit16 p3, v2, 0xff

    const/16 v2, 0x30

    if-lt p3, v2, :cond_18

    const/16 v2, 0x39

    if-gt p3, v2, :cond_18

    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    if-lt v1, v2, :cond_107

    iget-object v1, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e1
    add-int/lit8 v1, v2, 0x1

    int-to-char v3, p3

    aput-char v3, p1, v2

    goto/16 :goto_b

    :cond_e8
    iget-object v0, p0, Lv;->I:[B

    iget v5, p0, Lv;->s:I

    add-int/lit8 v7, v5, 0x1

    iput v7, p0, Lv;->s:I

    aget-byte v0, v0, v5

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    move v0, v3

    goto :goto_7e

    :cond_f7
    move v1, v4

    move v8, v2

    move v2, v0

    move v0, v8

    goto :goto_a7

    :cond_fc
    move v0, v2

    goto/16 :goto_61

    :cond_ff
    move v0, v2

    move v2, v3

    goto/16 :goto_7e

    :cond_103
    move v1, v4

    move v2, v0

    move v0, v3

    goto :goto_ae

    :cond_107
    move v2, v1

    goto :goto_e1

    :cond_109
    move v6, v0

    move-object v1, p1

    move v0, p2

    goto/16 :goto_22
.end method

.method private final a([CIZI)Lorg/codehaus/jackson/JsonToken;
    .registers 11

    move v5, p4

    move v2, p2

    move-object v1, p1

    :goto_3
    iget v0, p0, Lv;->s:I

    iget v3, p0, Lv;->t:I

    if-lt v0, v3, :cond_19

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    invoke-virtual {p0, p3, v5}, Lv;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    iget-object v0, p0, Lv;->I:[B

    iget v3, p0, Lv;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lv;->s:I

    aget-byte v0, v0, v3

    and-int/lit16 v3, v0, 0xff

    const/16 v0, 0x39

    if-gt v3, v0, :cond_2d

    const/16 v0, 0x30

    if-ge v3, v0, :cond_40

    :cond_2d
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_39

    const/16 v0, 0x65

    if-eq v3, v0, :cond_39

    const/16 v0, 0x45

    if-ne v3, v0, :cond_53

    :cond_39
    move-object v0, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lv;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_18

    :cond_40
    array-length v0, v1

    if-lt v2, v0, :cond_63

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    const/4 v2, 0x0

    move v0, v2

    :goto_4b
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_53
    iget v0, p0, Lv;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv;->s:I

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    invoke-virtual {p0, p3, v5}, Lv;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_18

    :cond_63
    move v0, v2

    goto :goto_4b
.end method

.method private a(Lorg/codehaus/jackson/JsonToken;)V
    .registers 9

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->b()[B

    move-result-object v1

    const/4 v0, 0x1

    array-length v2, v1

    :goto_6
    if-ge v0, v2, :cond_79

    iget v3, p0, Lv;->s:I

    iget v4, p0, Lv;->t:I

    if-lt v3, v4, :cond_11

    invoke-virtual {p0}, Lv;->k()V

    :cond_11
    aget-byte v3, v1, v0

    iget-object v4, p0, Lv;->I:[B

    iget v5, p0, Lv;->s:I

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_70

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_29
    iget v3, p0, Lv;->s:I

    iget v5, p0, Lv;->t:I

    if-lt v3, v5, :cond_35

    invoke-virtual {p0}, Lv;->l()Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_35
    iget-object v3, p0, Lv;->I:[B

    iget v5, p0, Lv;->s:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lv;->s:I

    aget-byte v3, v3, v5

    invoke-direct {p0, v3}, Lv;->g(I)I

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v5

    if-eqz v5, :cond_54

    iget v5, p0, Lv;->s:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lv;->s:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unrecognized token \'"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\': was expecting \'null\', \'true\' or \'false\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lv;->d(Ljava/lang/String;)V

    :cond_70
    iget v3, p0, Lv;->s:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lv;->s:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_79
    return-void
.end method

.method private static a([II)[I
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_6

    new-array v0, p1, [I

    :goto_5
    return-object v0

    :cond_6
    array-length v1, p0

    add-int v0, v1, p1

    new-array v0, v0, [I

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_5
.end method

.method private final b(III)Lai;
    .registers 6

    iget-object v0, p0, Lv;->L:Lae;

    invoke-virtual {v0, p1, p2}, Lae;->a(II)Lai;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lv;->M:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    iget-object v0, p0, Lv;->M:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v0, p0, Lv;->M:[I

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1, p3}, Lv;->a([III)Lai;

    move-result-object v0

    goto :goto_8
.end method

.method private b(II)V
    .registers 3

    iput p2, p0, Lv;->s:I

    invoke-direct {p0, p1}, Lv;->n(I)V

    return-void
.end method

.method private c(I)Lorg/codehaus/jackson/JsonToken;
    .registers 12

    const/16 v9, 0x39

    const/16 v2, 0x2d

    const/16 v8, 0x30

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    if-ne p1, v2, :cond_7e

    move v4, v5

    :goto_11
    if-eqz v4, :cond_4b

    aput-char v2, v1, v0

    iget v0, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v0, v2, :cond_1e

    invoke-virtual {p0}, Lv;->k()V

    :cond_1e
    iget-object v0, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v2

    and-int/lit16 p1, v0, 0xff

    if-lt p1, v8, :cond_2e

    if-le p1, v9, :cond_4a

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Missing integer part (next char "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lv;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv;->b(Ljava/lang/String;)V

    :cond_4a
    move v0, v5

    :cond_4b
    if-ne p1, v8, :cond_66

    iget v2, p0, Lv;->s:I

    iget v3, p0, Lv;->t:I

    if-lt v2, v3, :cond_59

    invoke-virtual {p0}, Lv;->l()Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_59
    iget-object v2, p0, Lv;->I:[B

    iget v3, p0, Lv;->s:I

    aget-byte v2, v2, v3

    if-nez v2, :cond_66

    const-string v2, "Leading zeroes not allowed"

    invoke-virtual {p0, v2}, Lv;->b(Ljava/lang/String;)V

    :cond_66
    add-int/lit8 v2, v0, 0x1

    int-to-char v3, p1

    aput-char v3, v1, v0

    iget v0, p0, Lv;->s:I

    array-length v3, v1

    add-int/2addr v0, v3

    iget v3, p0, Lv;->t:I

    if-le v0, v3, :cond_75

    iget v0, p0, Lv;->t:I

    :cond_75
    :goto_75
    iget v3, p0, Lv;->s:I

    if-lt v3, v0, :cond_80

    invoke-direct {p0, v1, v2, v4, v5}, Lv;->a([CIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_7d
    return-object v0

    :cond_7e
    move v4, v0

    goto :goto_11

    :cond_80
    iget-object v3, p0, Lv;->I:[B

    iget v6, p0, Lv;->s:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lv;->s:I

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v8, :cond_99

    if-gt v3, v9, :cond_99

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v2, 0x1

    int-to-char v3, v3

    aput-char v3, v1, v2

    move v2, v6

    goto :goto_75

    :cond_99
    const/16 v0, 0x2e

    if-eq v3, v0, :cond_a5

    const/16 v0, 0x65

    if-eq v3, v0, :cond_a5

    const/16 v0, 0x45

    if-ne v3, v0, :cond_ab

    :cond_a5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lv;->a([CIIZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_7d

    :cond_ab
    iget v0, p0, Lv;->s:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lv;->s:I

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/util/c;->a(I)V

    invoke-virtual {p0, v4, v5}, Lv;->a(ZI)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_7d
.end method

.method private d(I)Lai;
    .registers 14

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x4

    const/4 v5, 0x2

    const/16 v8, 0x22

    sget-object v1, Lv;->P:[I

    move v2, v5

    move v4, p1

    :goto_a
    iget v0, p0, Lv;->t:I

    iget v6, p0, Lv;->s:I

    sub-int/2addr v0, v6

    if-ge v0, v11, :cond_1a

    iget-object v1, p0, Lv;->M:[I

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lv;->a([IIIII)Lai;

    move-result-object v0

    :goto_19
    return-object v0

    :cond_1a
    iget-object v0, p0, Lv;->I:[B

    iget v6, p0, Lv;->s:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lv;->s:I

    aget-byte v0, v0, v6

    and-int/lit16 v9, v0, 0xff

    aget v0, v1, v9

    if-eqz v0, :cond_3d

    if-ne v9, v8, :cond_33

    iget-object v0, p0, Lv;->M:[I

    invoke-direct {p0, v0, v2, v4, v10}, Lv;->a([IIII)Lai;

    move-result-object v0

    goto :goto_19

    :cond_33
    iget-object v6, p0, Lv;->M:[I

    move-object v5, p0

    move v7, v2

    move v8, v4

    invoke-direct/range {v5 .. v10}, Lv;->a([IIIII)Lai;

    move-result-object v0

    goto :goto_19

    :cond_3d
    shl-int/lit8 v0, v4, 0x8

    or-int v6, v0, v9

    iget-object v0, p0, Lv;->I:[B

    iget v4, p0, Lv;->s:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lv;->s:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_63

    if-ne v4, v8, :cond_5a

    iget-object v0, p0, Lv;->M:[I

    invoke-direct {p0, v0, v2, v6, v5}, Lv;->a([IIII)Lai;

    move-result-object v0

    goto :goto_19

    :cond_5a
    iget-object v1, p0, Lv;->M:[I

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lv;->a([IIIII)Lai;

    move-result-object v0

    goto :goto_19

    :cond_63
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    iget-object v0, p0, Lv;->I:[B

    iget v4, p0, Lv;->s:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lv;->s:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_8b

    if-ne v4, v8, :cond_81

    iget-object v0, p0, Lv;->M:[I

    const/4 v1, 0x3

    invoke-direct {p0, v0, v2, v6, v1}, Lv;->a([IIII)Lai;

    move-result-object v0

    goto :goto_19

    :cond_81
    iget-object v1, p0, Lv;->M:[I

    const/4 v5, 0x3

    move-object v0, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lv;->a([IIIII)Lai;

    move-result-object v0

    goto :goto_19

    :cond_8b
    shl-int/lit8 v0, v6, 0x8

    or-int v6, v0, v4

    iget-object v0, p0, Lv;->I:[B

    iget v4, p0, Lv;->s:I

    add-int/lit8 v7, v4, 0x1

    iput v7, p0, Lv;->s:I

    aget-byte v0, v0, v4

    and-int/lit16 v4, v0, 0xff

    aget v0, v1, v4

    if-eqz v0, :cond_b4

    if-ne v4, v8, :cond_a9

    iget-object v0, p0, Lv;->M:[I

    invoke-direct {p0, v0, v2, v6, v11}, Lv;->a([IIII)Lai;

    move-result-object v0

    goto/16 :goto_19

    :cond_a9
    iget-object v1, p0, Lv;->M:[I

    move-object v0, p0

    move v3, v6

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lv;->a([IIIII)Lai;

    move-result-object v0

    goto/16 :goto_19

    :cond_b4
    iget-object v0, p0, Lv;->M:[I

    array-length v0, v0

    if-lt v2, v0, :cond_c1

    iget-object v0, p0, Lv;->M:[I

    invoke-static {v0, v2}, Lv;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lv;->M:[I

    :cond_c1
    iget-object v7, p0, Lv;->M:[I

    add-int/lit8 v0, v2, 0x1

    aput v6, v7, v2

    move v2, v0

    goto/16 :goto_a
.end method

.method private e(I)Lai;
    .registers 15

    const/4 v5, 0x1

    const/16 v11, 0x27

    const/4 v10, 0x4

    const/4 v1, 0x0

    if-ne p1, v11, :cond_113

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->d:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-eqz v0, :cond_113

    iget v0, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v0, v2, :cond_20

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, ": was expecting closing \'\'\' for name"

    invoke-virtual {p0, v0}, Lv;->c(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v2

    and-int/lit16 v6, v0, 0xff

    if-ne v6, v11, :cond_33

    invoke-static {}, Lae;->c()Lai;

    move-result-object v0

    :goto_32
    return-object v0

    :cond_33
    iget-object v0, p0, Lv;->M:[I

    sget-object v7, Lv;->P:[I

    move v3, v1

    move v4, v1

    move v2, v1

    :goto_3a
    if-eq v6, v11, :cond_f2

    const/16 v8, 0x22

    if-eq v6, v8, :cond_1b1

    aget v8, v7, v6

    if-eqz v8, :cond_1b1

    const/16 v8, 0x5c

    if-eq v6, v8, :cond_ad

    const-string v8, "name"

    invoke-virtual {p0, v6, v8}, Lv;->c(ILjava/lang/String;)V

    :goto_4d
    const/16 v8, 0x7f

    if-le v6, v8, :cond_1b1

    if-lt v3, v10, :cond_1ab

    array-length v3, v0

    if-lt v2, v3, :cond_5d

    array-length v3, v0

    invoke-static {v0, v3}, Lv;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lv;->M:[I

    :cond_5d
    add-int/lit8 v3, v2, 0x1

    aput v4, v0, v2

    move v2, v1

    move v4, v3

    move v3, v1

    :goto_64
    const/16 v8, 0x800

    if-ge v6, v8, :cond_b2

    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    or-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v3

    move-object v3, v0

    move v0, v12

    :goto_75
    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    move v12, v0

    move-object v0, v3

    move v3, v6

    move v6, v2

    move v2, v12

    :goto_7e
    if-ge v2, v10, :cond_de

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    move v12, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v12

    :goto_8a
    iget v6, p0, Lv;->s:I

    iget v8, p0, Lv;->t:I

    if-lt v6, v8, :cond_9b

    invoke-virtual {p0}, Lv;->l()Z

    move-result v6

    if-nez v6, :cond_9b

    const-string v6, " in field name"

    invoke-virtual {p0, v6}, Lv;->c(Ljava/lang/String;)V

    :cond_9b
    iget-object v6, p0, Lv;->I:[B

    iget v8, p0, Lv;->s:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lv;->s:I

    aget-byte v6, v6, v8

    and-int/lit16 v6, v6, 0xff

    move v12, v0

    move-object v0, v4

    move v4, v2

    move v2, v3

    move v3, v12

    goto :goto_3a

    :cond_ad
    invoke-direct {p0}, Lv;->t()C

    move-result v6

    goto :goto_4d

    :cond_b2
    shl-int/lit8 v3, v3, 0x8

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    or-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v10, :cond_1a4

    array-length v2, v0

    if-lt v4, v2, :cond_c7

    array-length v2, v0

    invoke-static {v0, v2}, Lv;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lv;->M:[I

    :cond_c7
    add-int/lit8 v2, v4, 0x1

    aput v3, v0, v4

    move v3, v2

    move-object v4, v0

    move v0, v1

    move v2, v1

    :goto_cf
    shl-int/lit8 v2, v2, 0x8

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    or-int/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    move v12, v3

    move-object v3, v4

    move v4, v12

    goto :goto_75

    :cond_de
    array-length v2, v0

    if-lt v4, v2, :cond_e8

    array-length v2, v0

    invoke-static {v0, v2}, Lv;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lv;->M:[I

    :cond_e8
    add-int/lit8 v2, v4, 0x1

    aput v6, v0, v4

    move-object v4, v0

    move v0, v5

    move v12, v2

    move v2, v3

    move v3, v12

    goto :goto_8a

    :cond_f2
    if-lez v3, :cond_1a0

    array-length v1, v0

    if-lt v2, v1, :cond_fe

    array-length v1, v0

    invoke-static {v0, v1}, Lv;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lv;->M:[I

    :cond_fe
    add-int/lit8 v1, v2, 0x1

    aput v4, v0, v2

    move v12, v1

    move-object v1, v0

    move v0, v12

    :goto_105
    iget-object v2, p0, Lv;->L:Lae;

    invoke-virtual {v2, v1, v0}, Lae;->a([II)Lai;

    move-result-object v2

    if-nez v2, :cond_19d

    invoke-direct {p0, v1, v0, v3}, Lv;->a([III)Lai;

    move-result-object v0

    goto/16 :goto_32

    :cond_113
    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->c:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_120

    const-string v0, "was expecting double-quote to start field name"

    invoke-virtual {p0, p1, v0}, Lv;->b(ILjava/lang/String;)V

    :cond_120
    invoke-static {}, Lorg/codehaus/jackson/util/b;->d()[I

    move-result-object v6

    aget v0, v6, p1

    if-eqz v0, :cond_12d

    const-string v0, "was expecting either valid name character (for unquoted name) or double-quote (for quoted) to start field name"

    invoke-virtual {p0, p1, v0}, Lv;->b(ILjava/lang/String;)V

    :cond_12d
    iget-object v0, p0, Lv;->M:[I

    move v4, v1

    move v3, v1

    move v2, p1

    :goto_132
    if-ge v1, v10, :cond_167

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    move v12, v1

    move v1, v2

    move v2, v3

    move-object v3, v0

    move v0, v12

    :goto_13e
    iget v4, p0, Lv;->s:I

    iget v7, p0, Lv;->t:I

    if-lt v4, v7, :cond_14f

    invoke-virtual {p0}, Lv;->l()Z

    move-result v4

    if-nez v4, :cond_14f

    const-string v4, " in field name"

    invoke-virtual {p0, v4}, Lv;->c(Ljava/lang/String;)V

    :cond_14f
    iget-object v4, p0, Lv;->I:[B

    iget v7, p0, Lv;->s:I

    aget-byte v4, v4, v7

    and-int/lit16 p1, v4, 0xff

    aget v4, v6, p1

    if-nez v4, :cond_17b

    iget v4, p0, Lv;->s:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lv;->s:I

    move v4, v1

    move v1, v0

    move-object v0, v3

    move v3, v2

    move v2, p1

    goto :goto_132

    :cond_167
    array-length v1, v0

    if-lt v3, v1, :cond_171

    array-length v1, v0

    invoke-static {v0, v1}, Lv;->a([II)[I

    move-result-object v0

    iput-object v0, p0, Lv;->M:[I

    :cond_171
    add-int/lit8 v1, v3, 0x1

    aput v4, v0, v3

    move-object v3, v0

    move v0, v5

    move v12, v1

    move v1, v2

    move v2, v12

    goto :goto_13e

    :cond_17b
    if-lez v0, :cond_18c

    array-length v4, v3

    if-lt v2, v4, :cond_187

    array-length v4, v3

    invoke-static {v3, v4}, Lv;->a([II)[I

    move-result-object v3

    iput-object v3, p0, Lv;->M:[I

    :cond_187
    add-int/lit8 v4, v2, 0x1

    aput v1, v3, v2

    move v2, v4

    :cond_18c
    iget-object v1, p0, Lv;->L:Lae;

    invoke-virtual {v1, v3, v2}, Lae;->a([II)Lai;

    move-result-object v1

    if-nez v1, :cond_19a

    invoke-direct {p0, v3, v2, v0}, Lv;->a([III)Lai;

    move-result-object v0

    goto/16 :goto_32

    :cond_19a
    move-object v0, v1

    goto/16 :goto_32

    :cond_19d
    move-object v0, v2

    goto/16 :goto_32

    :cond_1a0
    move-object v1, v0

    move v0, v2

    goto/16 :goto_105

    :cond_1a4
    move v12, v2

    move v2, v3

    move v3, v4

    move-object v4, v0

    move v0, v12

    goto/16 :goto_cf

    :cond_1ab
    move v12, v3

    move v3, v4

    move v4, v2

    move v2, v12

    goto/16 :goto_64

    :cond_1b1
    move v12, v3

    move v3, v6

    move v6, v4

    move v4, v2

    move v2, v12

    goto/16 :goto_7e
.end method

.method private f(I)Lorg/codehaus/jackson/JsonToken;
    .registers 12

    const/16 v9, 0x27

    const/4 v2, 0x0

    if-ne p1, v9, :cond_d

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->d:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_d
    const-string v0, "expected a valid value (number, String, array, object, \'true\', \'false\' or \'null\')"

    invoke-virtual {p0, p1, v0}, Lv;->b(ILjava/lang/String;)V

    :cond_12
    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v0

    sget-object v6, Lv;->O:[I

    iget-object v7, p0, Lv;->I:[B

    move v1, v2

    :cond_1d
    :goto_1d
    iget v3, p0, Lv;->s:I

    iget v4, p0, Lv;->t:I

    if-lt v3, v4, :cond_26

    invoke-virtual {p0}, Lv;->k()V

    :cond_26
    array-length v3, v0

    if-lt v1, v3, :cond_30

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v0

    move v1, v2

    :cond_30
    iget v4, p0, Lv;->t:I

    iget v3, p0, Lv;->s:I

    array-length v5, v0

    sub-int/2addr v5, v1

    add-int/2addr v3, v5

    if-ge v3, v4, :cond_c4

    :goto_39
    iget v4, p0, Lv;->s:I

    if-ge v4, v3, :cond_1d

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v4, v7, v4

    and-int/lit16 v5, v4, 0xff

    if-eq v5, v9, :cond_54

    aget v4, v6, v5

    if-nez v4, :cond_54

    add-int/lit8 v4, v1, 0x1

    int-to-char v5, v5

    aput-char v5, v0, v1

    move v1, v4

    goto :goto_39

    :cond_54
    if-eq v5, v9, :cond_b8

    aget v3, v6, v5

    packed-switch v3, :pswitch_data_c8

    const/16 v3, 0x20

    if-ge v5, v3, :cond_64

    const-string v3, "string value"

    invoke-virtual {p0, v5, v3}, Lv;->c(ILjava/lang/String;)V

    :cond_64
    invoke-direct {p0, v5}, Lv;->l(I)V

    :cond_67
    move v3, v5

    :goto_68
    array-length v4, v0

    if-lt v1, v4, :cond_c0

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v0

    move v4, v2

    :goto_72
    add-int/lit8 v1, v4, 0x1

    int-to-char v3, v3

    aput-char v3, v0, v4

    goto :goto_1d

    :pswitch_78
    const/16 v3, 0x22

    if-eq v5, v3, :cond_67

    invoke-direct {p0}, Lv;->t()C

    move-result v3

    goto :goto_68

    :pswitch_81
    invoke-direct {p0, v5}, Lv;->h(I)I

    move-result v3

    goto :goto_68

    :pswitch_86
    iget v3, p0, Lv;->t:I

    iget v4, p0, Lv;->s:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_93

    invoke-direct {p0, v5}, Lv;->j(I)I

    move-result v3

    goto :goto_68

    :cond_93
    invoke-direct {p0, v5}, Lv;->i(I)I

    move-result v3

    goto :goto_68

    :pswitch_98
    invoke-direct {p0, v5}, Lv;->k(I)I

    move-result v4

    add-int/lit8 v3, v1, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v0, v1

    array-length v1, v0

    if-lt v3, v1, :cond_c2

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v0

    move v1, v2

    :goto_b1
    const v3, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v3, v4

    goto :goto_68

    :cond_b8
    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/util/c;->a(I)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    return-object v0

    :cond_c0
    move v4, v1

    goto :goto_72

    :cond_c2
    move v1, v3

    goto :goto_b1

    :cond_c4
    move v3, v4

    goto/16 :goto_39

    nop

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_78
        :pswitch_81
        :pswitch_86
        :pswitch_98
    .end packed-switch
.end method

.method private g(I)I
    .registers 8

    const/4 v2, 0x2

    const/16 v5, 0x80

    const/4 v1, 0x1

    if-gez p1, :cond_4c

    and-int/lit16 v0, p1, 0xe0

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_4d

    and-int/lit8 p1, p1, 0x1f

    move v0, v1

    :goto_f
    invoke-direct {p0}, Lv;->w()I

    move-result v3

    and-int/lit16 v4, v3, 0xc0

    if-eq v4, v5, :cond_1c

    and-int/lit16 v4, v3, 0xff

    invoke-direct {p0, v4}, Lv;->n(I)V

    :cond_1c
    shl-int/lit8 v4, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int p1, v4, v3

    if-le v0, v1, :cond_4c

    invoke-direct {p0}, Lv;->w()I

    move-result v1

    and-int/lit16 v3, v1, 0xc0

    if-eq v3, v5, :cond_31

    and-int/lit16 v3, v1, 0xff

    invoke-direct {p0, v3}, Lv;->n(I)V

    :cond_31
    shl-int/lit8 v3, p1, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int p1, v3, v1

    if-le v0, v2, :cond_4c

    invoke-direct {p0}, Lv;->w()I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v5, :cond_46

    and-int/lit16 v1, v0, 0xff

    invoke-direct {p0, v1}, Lv;->n(I)V

    :cond_46
    shl-int/lit8 v1, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int p1, v1, v0

    :cond_4c
    return p1

    :cond_4d
    and-int/lit16 v0, p1, 0xf0

    const/16 v3, 0xe0

    if-ne v0, v3, :cond_57

    and-int/lit8 p1, p1, 0xf

    move v0, v2

    goto :goto_f

    :cond_57
    and-int/lit16 v0, p1, 0xf8

    const/16 v3, 0xf0

    if-ne v0, v3, :cond_61

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x3

    goto :goto_f

    :cond_61
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lv;->m(I)V

    move v0, v1

    goto :goto_f
.end method

.method private final h(I)I
    .registers 5

    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lv;->k()V

    :cond_9
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lv;->s:I

    invoke-direct {p0, v1, v2}, Lv;->b(II)V

    :cond_20
    and-int/lit8 v1, p1, 0x1f

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final i(I)I
    .registers 7

    const/16 v4, 0x80

    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lv;->k()V

    :cond_b
    and-int/lit8 v0, p1, 0xf

    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_22

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lv;->s:I

    invoke-direct {p0, v2, v3}, Lv;->b(II)V

    :cond_22
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v1, v2, :cond_30

    invoke-virtual {p0}, Lv;->k()V

    :cond_30
    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lv;->s:I

    invoke-direct {p0, v2, v3}, Lv;->b(II)V

    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final j(I)I
    .registers 7

    const/16 v4, 0x80

    and-int/lit8 v0, p1, 0xf

    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_19

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lv;->s:I

    invoke-direct {p0, v2, v3}, Lv;->b(II)V

    :cond_19
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_33

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lv;->s:I

    invoke-direct {p0, v2, v3}, Lv;->b(II)V

    :cond_33
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    return v0
.end method

.method private final k(I)I
    .registers 7

    const/16 v4, 0x80

    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Lv;->k()V

    :cond_b
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v4, :cond_20

    and-int/lit16 v1, v0, 0xff

    iget v2, p0, Lv;->s:I

    invoke-direct {p0, v1, v2}, Lv;->b(II)V

    :cond_20
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v1, v2, :cond_30

    invoke-virtual {p0}, Lv;->k()V

    :cond_30
    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_45

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lv;->s:I

    invoke-direct {p0, v2, v3}, Lv;->b(II)V

    :cond_45
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    iget v1, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v1, v2, :cond_53

    invoke-virtual {p0}, Lv;->k()V

    :cond_53
    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xc0

    if-eq v2, v4, :cond_68

    and-int/lit16 v2, v1, 0xff

    iget v3, p0, Lv;->s:I

    invoke-direct {p0, v2, v3}, Lv;->b(II)V

    :cond_68
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    const/high16 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method private l(I)V
    .registers 3

    const/16 v0, 0x20

    if-ge p1, v0, :cond_7

    invoke-virtual {p0, p1}, Lv;->a(I)V

    :cond_7
    invoke-direct {p0, p1}, Lv;->m(I)V

    return-void
.end method

.method private m(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 start byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv;->d(Ljava/lang/String;)V

    return-void
.end method

.method private n(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid UTF-8 middle byte 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv;->d(Ljava/lang/String;)V

    return-void
.end method

.method private final r()I
    .registers 5

    const/16 v3, 0x20

    :cond_2
    :goto_2
    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_e
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v3, :cond_25

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_21

    return v0

    :cond_21
    invoke-direct {p0}, Lv;->s()V

    goto :goto_2

    :cond_25
    if-eq v0, v3, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2f

    invoke-direct {p0}, Lv;->v()V

    goto :goto_2

    :cond_2f
    const/16 v1, 0xd

    if-ne v0, v1, :cond_37

    invoke-direct {p0}, Lv;->u()V

    goto :goto_2

    :cond_37
    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lv;->a(I)V

    goto :goto_2

    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end-of-input within/between "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lv;->A:Lo;

    invoke-virtual {v1}, Lo;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " entries"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParseException;

    move-result-object v0

    throw v0
.end method

.method private final s()V
    .registers 6

    const/16 v4, 0x2f

    sget-object v0, Lorg/codehaus/jackson/JsonParser$Feature;->b:Lorg/codehaus/jackson/JsonParser$Feature;

    invoke-virtual {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonParser$Feature;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "maybe a (non-standard) comment? (not recognized as one since Feature \'ALLOW_COMMENTS\' not enabled for parser)"

    invoke-virtual {p0, v4, v0}, Lv;->b(ILjava/lang/String;)V

    :cond_f
    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_20

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lv;->c(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v4, :cond_5d

    invoke-static {}, Lorg/codehaus/jackson/util/b;->e()[I

    move-result-object v0

    :cond_32
    :goto_32
    :sswitch_32
    iget v1, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v1, v2, :cond_3e

    invoke-virtual {p0}, Lv;->l()Z

    move-result v1

    if-eqz v1, :cond_58

    :cond_3e
    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_32

    sparse-switch v2, :sswitch_data_ac

    invoke-direct {p0, v1}, Lv;->l(I)V

    goto :goto_32

    :sswitch_55
    invoke-direct {p0}, Lv;->v()V

    :cond_58
    :goto_58
    return-void

    :sswitch_59
    invoke-direct {p0}, Lv;->u()V

    goto :goto_58

    :cond_5d
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_a5

    invoke-static {}, Lorg/codehaus/jackson/util/b;->e()[I

    move-result-object v0

    :cond_65
    :goto_65
    iget v1, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v1, v2, :cond_71

    invoke-virtual {p0}, Lv;->l()Z

    move-result v1

    if-eqz v1, :cond_9f

    :cond_71
    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    aget v2, v0, v1

    if-eqz v2, :cond_65

    sparse-switch v2, :sswitch_data_ba

    invoke-direct {p0, v1}, Lv;->l(I)V

    goto :goto_65

    :sswitch_88
    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_65

    iget v0, p0, Lv;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv;->s:I

    goto :goto_58

    :sswitch_97
    invoke-direct {p0}, Lv;->v()V

    goto :goto_65

    :sswitch_9b
    invoke-direct {p0}, Lv;->u()V

    goto :goto_65

    :cond_9f
    const-string v0, " in a comment"

    invoke-virtual {p0, v0}, Lv;->c(Ljava/lang/String;)V

    goto :goto_58

    :cond_a5
    const-string v1, "was expecting either \'*\' or \'/\' for a comment"

    invoke-virtual {p0, v0, v1}, Lv;->b(ILjava/lang/String;)V

    goto :goto_58

    nop

    :sswitch_data_ac
    .sparse-switch
        0xa -> :sswitch_55
        0xd -> :sswitch_59
        0x2a -> :sswitch_32
    .end sparse-switch

    :sswitch_data_ba
    .sparse-switch
        0xa -> :sswitch_97
        0xd -> :sswitch_9b
        0x2a -> :sswitch_88
    .end sparse-switch
.end method

.method private t()C
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lv;->s:I

    iget v2, p0, Lv;->t:I

    if-lt v1, v2, :cond_12

    invoke-virtual {p0}, Lv;->l()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, " in character escape sequence"

    invoke-virtual {p0, v1}, Lv;->c(Ljava/lang/String;)V

    :cond_12
    iget-object v1, p0, Lv;->I:[B

    iget v2, p0, Lv;->s:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v1, v1, v2

    sparse-switch v1, :sswitch_data_6c

    invoke-direct {p0, v1}, Lv;->g(I)I

    move-result v0

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Lv;->a(C)C

    move-result v0

    :goto_28
    return v0

    :sswitch_29
    const/16 v0, 0x8

    goto :goto_28

    :sswitch_2c
    const/16 v0, 0x9

    goto :goto_28

    :sswitch_2f
    const/16 v0, 0xa

    goto :goto_28

    :sswitch_32
    const/16 v0, 0xc

    goto :goto_28

    :sswitch_35
    const/16 v0, 0xd

    goto :goto_28

    :sswitch_38
    int-to-char v0, v1

    goto :goto_28

    :sswitch_3a
    move v1, v0

    :goto_3b
    const/4 v2, 0x4

    if-ge v0, v2, :cond_6a

    iget v2, p0, Lv;->s:I

    iget v3, p0, Lv;->t:I

    if-lt v2, v3, :cond_4f

    invoke-virtual {p0}, Lv;->l()Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, " in character escape sequence"

    invoke-virtual {p0, v2}, Lv;->c(Ljava/lang/String;)V

    :cond_4f
    iget-object v2, p0, Lv;->I:[B

    iget v3, p0, Lv;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lv;->s:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lorg/codehaus/jackson/util/b;->a(I)I

    move-result v3

    if-gez v3, :cond_64

    const-string v4, "expected a hex-digit for character escape sequence"

    invoke-virtual {p0, v2, v4}, Lv;->b(ILjava/lang/String;)V

    :cond_64
    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    :cond_6a
    int-to-char v0, v1

    goto :goto_28

    :sswitch_data_6c
    .sparse-switch
        0x22 -> :sswitch_38
        0x2f -> :sswitch_38
        0x5c -> :sswitch_38
        0x62 -> :sswitch_29
        0x66 -> :sswitch_32
        0x6e -> :sswitch_2f
        0x72 -> :sswitch_35
        0x74 -> :sswitch_2c
        0x75 -> :sswitch_3a
    .end sparse-switch
.end method

.method private u()V
    .registers 3

    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_c
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    aget-byte v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1c

    iget v0, p0, Lv;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv;->s:I

    :cond_1c
    iget v0, p0, Lv;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv;->v:I

    iget v0, p0, Lv;->s:I

    iput v0, p0, Lv;->w:I

    return-void
.end method

.method private v()V
    .registers 2

    iget v0, p0, Lv;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv;->v:I

    iget v0, p0, Lv;->s:I

    iput v0, p0, Lv;->w:I

    return-void
.end method

.method private w()I
    .registers 4

    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_9

    invoke-virtual {p0}, Lv;->k()V

    :cond_9
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .registers 12

    const/4 v10, 0x2

    const/16 v9, 0x80

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x22

    iget-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->f:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_38

    iput-boolean v2, p0, Lv;->E:Z

    iget-object v0, p0, Lv;->B:Lorg/codehaus/jackson/JsonToken;

    const/4 v1, 0x0

    iput-object v1, p0, Lv;->B:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_27

    iget-object v1, p0, Lv;->A:Lo;

    iget v2, p0, Lv;->y:I

    iget v3, p0, Lv;->z:I

    invoke-virtual {v1, v2, v3}, Lo;->a(II)Lo;

    move-result-object v1

    iput-object v1, p0, Lv;->A:Lo;

    :cond_24
    :goto_24
    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    :goto_26
    return-object v0

    :cond_27
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_24

    iget-object v1, p0, Lv;->A:Lo;

    iget v2, p0, Lv;->y:I

    iget v3, p0, Lv;->z:I

    invoke-virtual {v1, v2, v3}, Lo;->b(II)Lo;

    move-result-object v1

    iput-object v1, p0, Lv;->A:Lo;

    goto :goto_24

    :cond_38
    iget-boolean v0, p0, Lv;->N:Z

    if-eqz v0, :cond_12c

    iput-boolean v2, p0, Lv;->N:Z

    sget-object v4, Lv;->O:[I

    iget-object v5, p0, Lv;->I:[B

    :cond_42
    :goto_42
    iget v1, p0, Lv;->s:I

    iget v0, p0, Lv;->t:I

    if-lt v1, v0, :cond_4f

    invoke-virtual {p0}, Lv;->k()V

    iget v1, p0, Lv;->s:I

    iget v0, p0, Lv;->t:I

    :cond_4f
    :goto_4f
    if-ge v1, v0, :cond_6e

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    aget v6, v4, v1

    if-eqz v6, :cond_44c

    iput v3, p0, Lv;->s:I

    if-eq v1, v7, :cond_12c

    aget v0, v4, v1

    packed-switch v0, :pswitch_data_450

    const/16 v0, 0x20

    if-ge v1, v0, :cond_124

    const-string v0, "string value"

    invoke-virtual {p0, v1, v0}, Lv;->c(ILjava/lang/String;)V

    goto :goto_42

    :cond_6e
    iput v1, p0, Lv;->s:I

    goto :goto_42

    :pswitch_71
    invoke-direct {p0}, Lv;->t()C

    goto :goto_42

    :pswitch_75
    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_7e

    invoke-virtual {p0}, Lv;->k()V

    :cond_7e
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_42

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lv;->s:I

    invoke-direct {p0, v0, v1}, Lv;->b(II)V

    goto :goto_42

    :pswitch_94
    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_9d

    invoke-virtual {p0}, Lv;->k()V

    :cond_9d
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_b2

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lv;->s:I

    invoke-direct {p0, v0, v1}, Lv;->b(II)V

    :cond_b2
    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_bb

    invoke-virtual {p0}, Lv;->k()V

    :cond_bb
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_42

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lv;->s:I

    invoke-direct {p0, v0, v1}, Lv;->b(II)V

    goto/16 :goto_42

    :pswitch_d2
    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_db

    invoke-virtual {p0}, Lv;->k()V

    :cond_db
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_f0

    and-int/lit16 v1, v0, 0xff

    iget v3, p0, Lv;->s:I

    invoke-direct {p0, v1, v3}, Lv;->b(II)V

    :cond_f0
    iget v1, p0, Lv;->s:I

    iget v3, p0, Lv;->t:I

    if-lt v1, v3, :cond_f9

    invoke-virtual {p0}, Lv;->k()V

    :cond_f9
    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_104

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lv;->s:I

    invoke-direct {p0, v0, v1}, Lv;->b(II)V

    :cond_104
    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_10d

    invoke-virtual {p0}, Lv;->k()V

    :cond_10d
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xc0

    if-eq v1, v9, :cond_42

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lv;->s:I

    invoke-direct {p0, v0, v1}, Lv;->b(II)V

    goto/16 :goto_42

    :cond_124
    invoke-direct {p0, v1}, Lv;->l(I)V

    goto/16 :goto_42

    :cond_129
    invoke-direct {p0}, Lv;->s()V

    :cond_12c
    :goto_12c
    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_138

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-eqz v0, :cond_172

    :cond_138
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x20

    if-le v0, v1, :cond_156

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_129

    :goto_14c
    if-gez v0, :cond_177

    invoke-virtual {p0}, Lv;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_156
    const/16 v1, 0x20

    if-eq v0, v1, :cond_12c

    const/16 v1, 0xa

    if-ne v0, v1, :cond_162

    invoke-direct {p0}, Lv;->v()V

    goto :goto_12c

    :cond_162
    const/16 v1, 0xd

    if-ne v0, v1, :cond_16a

    invoke-direct {p0}, Lv;->u()V

    goto :goto_12c

    :cond_16a
    const/16 v1, 0x9

    if-eq v0, v1, :cond_12c

    invoke-virtual {p0, v0}, Lv;->a(I)V

    goto :goto_12c

    :cond_172
    invoke-virtual {p0}, Lv;->o()V

    const/4 v0, -0x1

    goto :goto_14c

    :cond_177
    iget-wide v3, p0, Lv;->u:J

    iget v1, p0, Lv;->s:I

    int-to-long v5, v1

    add-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lv;->x:J

    iget v1, p0, Lv;->v:I

    iput v1, p0, Lv;->y:I

    iget v1, p0, Lv;->s:I

    iget v3, p0, Lv;->w:I

    sub-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lv;->z:I

    const/4 v1, 0x0

    iput-object v1, p0, Lv;->G:[B

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1b1

    iget-object v1, p0, Lv;->A:Lo;

    invoke-virtual {v1}, Lo;->a()Z

    move-result v1

    if-nez v1, :cond_1a3

    const/16 v1, 0x7d

    invoke-virtual {p0, v0, v1}, Lv;->a(IC)V

    :cond_1a3
    iget-object v0, p0, Lv;->A:Lo;

    invoke-virtual {v0}, Lo;->h()Lo;

    move-result-object v0

    iput-object v0, p0, Lv;->A:Lo;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->e:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_1b1
    const/16 v1, 0x7d

    if-ne v0, v1, :cond_1d0

    iget-object v1, p0, Lv;->A:Lo;

    invoke-virtual {v1}, Lo;->c()Z

    move-result v1

    if-nez v1, :cond_1c2

    const/16 v1, 0x5d

    invoke-virtual {p0, v0, v1}, Lv;->a(IC)V

    :cond_1c2
    iget-object v0, p0, Lv;->A:Lo;

    invoke-virtual {v0}, Lo;->h()Lo;

    move-result-object v0

    iput-object v0, p0, Lv;->A:Lo;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->c:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_1d0
    iget-object v1, p0, Lv;->A:Lo;

    invoke-virtual {v1}, Lo;->i()Z

    move-result v1

    if-eqz v1, :cond_1fe

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1fa

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "was expecting comma to separate "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lv;->A:Lo;

    invoke-virtual {v3}, Lo;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lv;->b(ILjava/lang/String;)V

    :cond_1fa
    invoke-direct {p0}, Lv;->r()I

    move-result v0

    :cond_1fe
    iget-object v1, p0, Lv;->A:Lo;

    invoke-virtual {v1}, Lo;->c()Z

    move-result v1

    if-nez v1, :cond_26d

    if-ne v0, v7, :cond_210

    iput-boolean v8, p0, Lv;->N:Z

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_210
    sparse-switch v0, :sswitch_data_45c

    invoke-direct {p0, v0}, Lv;->f(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_21b
    iget-object v0, p0, Lv;->A:Lo;

    iget v1, p0, Lv;->y:I

    iget v2, p0, Lv;->z:I

    invoke-virtual {v0, v1, v2}, Lo;->a(II)Lo;

    move-result-object v0

    iput-object v0, p0, Lv;->A:Lo;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_22d
    iget-object v0, p0, Lv;->A:Lo;

    iget v1, p0, Lv;->y:I

    iget v2, p0, Lv;->z:I

    invoke-virtual {v0, v1, v2}, Lo;->b(II)Lo;

    move-result-object v0

    iput-object v0, p0, Lv;->A:Lo;

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_23f
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lv;->b(ILjava/lang/String;)V

    :sswitch_244
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_24f
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_25a
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->m:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->m:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_265
    invoke-direct {p0, v0}, Lv;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_26d
    if-eq v0, v7, :cond_29d

    invoke-direct {p0, v0}, Lv;->e(I)Lai;

    move-result-object v0

    :goto_273
    iget-object v1, p0, Lv;->A:Lo;

    invoke-virtual {v0}, Lai;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->f:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0}, Lv;->r()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_28d

    const-string v1, "was expecting a colon to separate field name and value"

    invoke-virtual {p0, v0, v1}, Lv;->b(ILjava/lang/String;)V

    :cond_28d
    invoke-direct {p0}, Lv;->r()I

    move-result v0

    if-ne v0, v7, :cond_417

    iput-boolean v8, p0, Lv;->N:Z

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    iput-object v0, p0, Lv;->B:Lorg/codehaus/jackson/JsonToken;

    iget-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :cond_29d
    iget v0, p0, Lv;->s:I

    add-int/lit8 v0, v0, 0x9

    iget v1, p0, Lv;->t:I

    if-le v0, v1, :cond_2d3

    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_2b6

    invoke-virtual {p0}, Lv;->l()Z

    move-result v0

    if-nez v0, :cond_2b6

    const-string v0, ": was expecting closing \'\"\' for name"

    invoke-virtual {p0, v0}, Lv;->c(Ljava/lang/String;)V

    :cond_2b6
    iget-object v0, p0, Lv;->I:[B

    iget v1, p0, Lv;->s:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lv;->s:I

    aget-byte v0, v0, v1

    and-int/lit16 v4, v0, 0xff

    if-ne v4, v7, :cond_2c9

    invoke-static {}, Lae;->c()Lai;

    move-result-object v0

    goto :goto_273

    :cond_2c9
    iget-object v1, p0, Lv;->M:[I

    move-object v0, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lv;->a([IIIII)Lai;

    move-result-object v0

    goto :goto_273

    :cond_2d3
    iget-object v0, p0, Lv;->I:[B

    sget-object v1, Lv;->P:[I

    iget v3, p0, Lv;->s:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lv;->s:I

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-nez v4, :cond_409

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3fb

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3ed

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    aget v5, v1, v4

    if-nez v5, :cond_3dd

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    aget v4, v1, v0

    if-nez v4, :cond_3cd

    iput v3, p0, Lv;->Q:I

    iget-object v3, p0, Lv;->I:[B

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_34a

    if-ne v3, v7, :cond_342

    iget v1, p0, Lv;->Q:I

    invoke-direct {p0, v1, v0, v8}, Lv;->b(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_342
    iget v1, p0, Lv;->Q:I

    invoke-direct {p0, v1, v0, v3, v8}, Lv;->a(IIII)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_34a
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lv;->I:[B

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_36f

    if-ne v3, v7, :cond_367

    iget v1, p0, Lv;->Q:I

    invoke-direct {p0, v1, v0, v10}, Lv;->b(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_367
    iget v1, p0, Lv;->Q:I

    invoke-direct {p0, v1, v0, v3, v10}, Lv;->a(IIII)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_36f
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lv;->I:[B

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v4, v1, v3

    if-eqz v4, :cond_396

    if-ne v3, v7, :cond_38d

    iget v1, p0, Lv;->Q:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v2}, Lv;->b(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_38d
    iget v1, p0, Lv;->Q:I

    const/4 v2, 0x3

    invoke-direct {p0, v1, v0, v3, v2}, Lv;->a(IIII)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_396
    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget-object v3, p0, Lv;->I:[B

    iget v4, p0, Lv;->s:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lv;->s:I

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    aget v1, v1, v3

    if-eqz v1, :cond_3bd

    if-ne v3, v7, :cond_3b4

    iget v1, p0, Lv;->Q:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2}, Lv;->b(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3b4
    iget v1, p0, Lv;->Q:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v3, v2}, Lv;->a(IIII)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3bd
    iget-object v1, p0, Lv;->M:[I

    iget v4, p0, Lv;->Q:I

    aput v4, v1, v2

    iget-object v1, p0, Lv;->M:[I

    aput v0, v1, v8

    invoke-direct {p0, v3}, Lv;->d(I)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3cd
    if-ne v0, v7, :cond_3d6

    const/4 v0, 0x4

    invoke-direct {p0, v3, v0}, Lv;->a(II)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3d6
    const/4 v1, 0x4

    invoke-direct {p0, v3, v0, v1}, Lv;->a(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3dd
    if-ne v4, v7, :cond_3e6

    const/4 v0, 0x3

    invoke-direct {p0, v3, v0}, Lv;->a(II)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3e6
    const/4 v0, 0x3

    invoke-direct {p0, v3, v4, v0}, Lv;->a(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3ed
    if-ne v4, v7, :cond_3f5

    invoke-direct {p0, v3, v10}, Lv;->a(II)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3f5
    invoke-direct {p0, v3, v4, v10}, Lv;->a(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_3fb
    if-ne v4, v7, :cond_403

    invoke-direct {p0, v3, v8}, Lv;->a(II)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_403
    invoke-direct {p0, v3, v4, v8}, Lv;->a(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_409
    if-ne v3, v7, :cond_411

    invoke-static {}, Lae;->c()Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_411
    invoke-direct {p0, v2, v3, v2}, Lv;->a(III)Lai;

    move-result-object v0

    goto/16 :goto_273

    :cond_417
    sparse-switch v0, :sswitch_data_4a6

    invoke-direct {p0, v0}, Lv;->f(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_41e
    iput-object v0, p0, Lv;->B:Lorg/codehaus/jackson/JsonToken;

    iget-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    goto/16 :goto_26

    :sswitch_424
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->d:Lorg/codehaus/jackson/JsonToken;

    goto :goto_41e

    :sswitch_427
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->b:Lorg/codehaus/jackson/JsonToken;

    goto :goto_41e

    :sswitch_42a
    const-string v1, "expected a value"

    invoke-virtual {p0, v0, v1}, Lv;->b(ILjava/lang/String;)V

    :sswitch_42f
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->k:Lorg/codehaus/jackson/JsonToken;

    goto :goto_41e

    :sswitch_437
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->l:Lorg/codehaus/jackson/JsonToken;

    goto :goto_41e

    :sswitch_43f
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->m:Lorg/codehaus/jackson/JsonToken;

    invoke-direct {p0, v0}, Lv;->a(Lorg/codehaus/jackson/JsonToken;)V

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->m:Lorg/codehaus/jackson/JsonToken;

    goto :goto_41e

    :sswitch_447
    invoke-direct {p0, v0}, Lv;->c(I)Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_41e

    :cond_44c
    move v1, v3

    goto/16 :goto_4f

    nop

    :pswitch_data_450
    .packed-switch 0x1
        :pswitch_71
        :pswitch_75
        :pswitch_94
        :pswitch_d2
    .end packed-switch

    :sswitch_data_45c
    .sparse-switch
        0x2d -> :sswitch_265
        0x30 -> :sswitch_265
        0x31 -> :sswitch_265
        0x32 -> :sswitch_265
        0x33 -> :sswitch_265
        0x34 -> :sswitch_265
        0x35 -> :sswitch_265
        0x36 -> :sswitch_265
        0x37 -> :sswitch_265
        0x38 -> :sswitch_265
        0x39 -> :sswitch_265
        0x5b -> :sswitch_21b
        0x5d -> :sswitch_23f
        0x66 -> :sswitch_24f
        0x6e -> :sswitch_25a
        0x74 -> :sswitch_244
        0x7b -> :sswitch_22d
        0x7d -> :sswitch_23f
    .end sparse-switch

    :sswitch_data_4a6
    .sparse-switch
        0x2d -> :sswitch_447
        0x30 -> :sswitch_447
        0x31 -> :sswitch_447
        0x32 -> :sswitch_447
        0x33 -> :sswitch_447
        0x34 -> :sswitch_447
        0x35 -> :sswitch_447
        0x36 -> :sswitch_447
        0x37 -> :sswitch_447
        0x38 -> :sswitch_447
        0x39 -> :sswitch_447
        0x5b -> :sswitch_424
        0x5d -> :sswitch_42a
        0x66 -> :sswitch_437
        0x6e -> :sswitch_43f
        0x74 -> :sswitch_42f
        0x7b -> :sswitch_427
        0x7d -> :sswitch_42a
    .end sparse-switch
.end method

.method public final close()V
    .registers 2

    invoke-super {p0}, Lu;->close()V

    iget-object v0, p0, Lv;->L:Lae;

    invoke-virtual {v0}, Lae;->b()V

    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 11

    const/16 v9, 0x22

    const/4 v3, 0x0

    iget-object v0, p0, Lv;->b:Lorg/codehaus/jackson/JsonToken;

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->h:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_f2

    iget-boolean v0, p0, Lv;->N:Z

    if-eqz v0, :cond_44

    iput-boolean v3, p0, Lv;->N:Z

    iget v0, p0, Lv;->s:I

    iget v1, p0, Lv;->t:I

    if-lt v0, v1, :cond_1a

    invoke-virtual {p0}, Lv;->k()V

    iget v0, p0, Lv;->s:I

    :cond_1a
    iget-object v1, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1}, Lorg/codehaus/jackson/util/c;->i()[C

    move-result-object v1

    sget-object v5, Lv;->O:[I

    iget v2, p0, Lv;->t:I

    array-length v4, v1

    add-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, p0, Lv;->I:[B

    move v2, v0

    move v0, v3

    :goto_2e
    if-ge v2, v6, :cond_55

    aget-byte v4, v7, v2

    and-int/lit16 v8, v4, 0xff

    aget v4, v5, v8

    if-eqz v4, :cond_4b

    if-ne v8, v9, :cond_55

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lv;->s:I

    move-object v1, p0

    :goto_3f
    iget-object v1, v1, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/c;->a(I)V

    :cond_44
    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    :goto_4a
    return-object v0

    :cond_4b
    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v2, v0, 0x1

    int-to-char v8, v8

    aput-char v8, v1, v0

    move v0, v2

    move v2, v4

    goto :goto_2e

    :cond_55
    iput v2, p0, Lv;->s:I

    sget-object v6, Lv;->O:[I

    iget-object v7, p0, Lv;->I:[B

    :goto_5b
    iget v2, p0, Lv;->s:I

    iget v4, p0, Lv;->t:I

    if-lt v2, v4, :cond_66

    invoke-virtual {p0}, Lv;->k()V

    iget v2, p0, Lv;->s:I

    :cond_66
    array-length v4, v1

    if-lt v0, v4, :cond_70

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v0, v3

    :cond_70
    iget v4, p0, Lv;->t:I

    array-length v5, v1

    sub-int/2addr v5, v0

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    :goto_79
    if-ge v2, v8, :cond_af

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    aget v5, v6, v2

    if-eqz v5, :cond_a7

    iput v4, p0, Lv;->s:I

    if-eq v2, v9, :cond_11c

    aget v4, v6, v2

    packed-switch v4, :pswitch_data_120

    const/16 v4, 0x20

    if-ge v2, v4, :cond_ee

    const-string v4, "string value"

    invoke-virtual {p0, v2, v4}, Lv;->c(ILjava/lang/String;)V

    :goto_97
    array-length v4, v1

    if-lt v0, v4, :cond_118

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v4, v3

    :goto_a1
    add-int/lit8 v0, v4, 0x1

    int-to-char v2, v2

    aput-char v2, v1, v4

    goto :goto_5b

    :cond_a7
    add-int/lit8 v5, v0, 0x1

    int-to-char v2, v2

    aput-char v2, v1, v0

    move v2, v4

    move v0, v5

    goto :goto_79

    :cond_af
    iput v2, p0, Lv;->s:I

    goto :goto_5b

    :pswitch_b2
    invoke-direct {p0}, Lv;->t()C

    move-result v2

    goto :goto_97

    :pswitch_b7
    invoke-direct {p0, v2}, Lv;->h(I)I

    move-result v2

    goto :goto_97

    :pswitch_bc
    iget v4, p0, Lv;->t:I

    iget v5, p0, Lv;->s:I

    sub-int/2addr v4, v5

    const/4 v5, 0x2

    if-lt v4, v5, :cond_c9

    invoke-direct {p0, v2}, Lv;->j(I)I

    move-result v2

    goto :goto_97

    :cond_c9
    invoke-direct {p0, v2}, Lv;->i(I)I

    move-result v2

    goto :goto_97

    :pswitch_ce
    invoke-direct {p0, v2}, Lv;->k(I)I

    move-result v4

    add-int/lit8 v2, v0, 0x1

    const v5, 0xd800

    shr-int/lit8 v8, v4, 0xa

    or-int/2addr v5, v8

    int-to-char v5, v5

    aput-char v5, v1, v0

    array-length v0, v1

    if-lt v2, v0, :cond_11a

    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->k()[C

    move-result-object v1

    move v0, v3

    :goto_e7
    const v2, 0xdc00

    and-int/lit16 v4, v4, 0x3ff

    or-int/2addr v2, v4

    goto :goto_97

    :cond_ee
    invoke-direct {p0, v2}, Lv;->l(I)V

    goto :goto_97

    :cond_f2
    if-nez v0, :cond_f7

    const/4 v0, 0x0

    goto/16 :goto_4a

    :cond_f7
    sget-object v1, Lw;->a:[I

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12c

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonToken;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    :pswitch_108
    iget-object v0, p0, Lv;->A:Lo;

    invoke-virtual {v0}, Lo;->g()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    :pswitch_110
    iget-object v0, p0, Lv;->C:Lorg/codehaus/jackson/util/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    :cond_118
    move v4, v0

    goto :goto_a1

    :cond_11a
    move v0, v2

    goto :goto_e7

    :cond_11c
    move-object v1, p0

    goto/16 :goto_3f

    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_b7
        :pswitch_bc
        :pswitch_ce
    .end packed-switch

    :pswitch_data_12c
    .packed-switch 0x1
        :pswitch_108
        :pswitch_110
        :pswitch_110
        :pswitch_110
    .end packed-switch
.end method
