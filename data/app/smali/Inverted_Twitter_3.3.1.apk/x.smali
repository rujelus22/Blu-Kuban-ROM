.class public final Lx;
.super Lj;


# static fields
.field protected static final g:[C


# instance fields
.field protected final h:Lz;

.field protected final i:Ljava/io/Writer;

.field protected j:[C

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/codehaus/jackson/util/b;->g()[C

    move-result-object v0

    sput-object v0, Lx;->g:[C

    return-void
.end method

.method public constructor <init>(Lz;ILorg/codehaus/jackson/c;Ljava/io/Writer;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3}, Lj;-><init>(ILorg/codehaus/jackson/c;)V

    iput v0, p0, Lx;->k:I

    iput v0, p0, Lx;->l:I

    iput-object p1, p0, Lx;->h:Lz;

    iput-object p4, p0, Lx;->i:Ljava/io/Writer;

    invoke-virtual {p1}, Lz;->f()[C

    move-result-object v0

    iput-object v0, p0, Lx;->j:[C

    iget-object v0, p0, Lx;->j:[C

    array-length v0, v0

    iput v0, p0, Lx;->m:I

    return-void
.end method

.method private static a(I[CI)V
    .registers 7

    const/16 v1, 0x5c

    const/16 v3, 0x30

    if-gez p0, :cond_2e

    add-int/lit8 v0, p0, 0x1

    neg-int v0, v0

    aput-char v1, p1, p2

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aput-char v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    aput-char v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lx;->g:[C

    shr-int/lit8 v3, v0, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lx;->g:[C

    and-int/lit8 v0, v0, 0xf

    aget-char v0, v2, v0

    aput-char v0, p1, v1

    :goto_2d
    return-void

    :cond_2e
    aput-char v1, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-char v1, p0

    aput-char v1, p1, v0

    goto :goto_2d
.end method

.method private b(I)V
    .registers 9

    const/16 v4, 0x30

    const/4 v6, 0x6

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lx;->n:[C

    if-nez v0, :cond_15

    new-array v0, v6, [C

    const/16 v1, 0x5c

    aput-char v1, v0, v5

    aput-char v4, v0, v2

    const/4 v1, 0x3

    aput-char v4, v0, v1

    :cond_15
    if-gez p1, :cond_36

    add-int/lit8 v1, p1, 0x1

    neg-int v1, v1

    const/16 v2, 0x75

    aput-char v2, v0, v3

    const/4 v2, 0x4

    sget-object v3, Lx;->g:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    const/4 v2, 0x5

    sget-object v3, Lx;->g:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, v0, v2

    iget-object v1, p0, Lx;->i:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v6}, Ljava/io/Writer;->write([CII)V

    :goto_35
    return-void

    :cond_36
    int-to-char v1, p1

    aput-char v1, v0, v3

    iget-object v1, p0, Lx;->i:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_35
.end method

.method private g()V
    .registers 5

    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->k:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_15

    iget v1, p0, Lx;->k:I

    const/4 v2, 0x0

    iput v2, p0, Lx;->k:I

    iput v2, p0, Lx;->l:I

    iget-object v2, p0, Lx;->i:Ljava/io/Writer;

    iget-object v3, p0, Lx;->j:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    :cond_15
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 15

    const/4 v5, 0x6

    const/4 v6, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v2, p0, Lx;->m:I

    if-le v0, v2, :cond_66

    invoke-direct {p0}, Lx;->g()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v1

    :cond_13
    iget v2, p0, Lx;->m:I

    add-int v3, v0, v2

    if-le v3, v7, :cond_1b

    sub-int v2, v7, v0

    :cond_1b
    add-int v3, v0, v2

    iget-object v4, p0, Lx;->j:[C

    invoke-virtual {p1, v0, v3, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    invoke-static {}, Lorg/codehaus/jackson/util/b;->f()[I

    move-result-object v8

    array-length v9, v8

    move v4, v1

    :goto_28
    if-ge v4, v2, :cond_62

    move v3, v4

    :cond_2b
    iget-object v10, p0, Lx;->j:[C

    aget-char v10, v10, v3

    if-ge v10, v9, :cond_35

    aget v10, v8, v10

    if-nez v10, :cond_39

    :cond_35
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v2, :cond_2b

    :cond_39
    sub-int v10, v3, v4

    if-lez v10, :cond_46

    iget-object v11, p0, Lx;->i:Ljava/io/Writer;

    iget-object v12, p0, Lx;->j:[C

    invoke-virtual {v11, v12, v4, v10}, Ljava/io/Writer;->write([CII)V

    if-ge v3, v2, :cond_62

    :cond_46
    iget-object v4, p0, Lx;->j:[C

    aget-char v4, v4, v3

    aget v10, v8, v4

    add-int/lit8 v4, v3, 0x1

    if-gez v10, :cond_59

    move v3, v5

    :goto_51
    iget v11, p0, Lx;->l:I

    if-le v3, v11, :cond_5b

    invoke-direct {p0, v10}, Lx;->b(I)V

    goto :goto_28

    :cond_59
    move v3, v6

    goto :goto_51

    :cond_5b
    sub-int/2addr v4, v3

    iget-object v3, p0, Lx;->j:[C

    invoke-static {v10, v3, v4}, Lx;->a(I[CI)V

    goto :goto_28

    :cond_62
    add-int/2addr v0, v2

    if-lt v0, v7, :cond_13

    :cond_65
    return-void

    :cond_66
    iget v2, p0, Lx;->l:I

    add-int/2addr v2, v0

    iget v3, p0, Lx;->m:I

    if-le v2, v3, :cond_70

    invoke-direct {p0}, Lx;->g()V

    :cond_70
    iget-object v2, p0, Lx;->j:[C

    iget v3, p0, Lx;->l:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lx;->l:I

    add-int/2addr v1, v0

    invoke-static {}, Lorg/codehaus/jackson/util/b;->f()[I

    move-result-object v2

    array-length v3, v2

    :goto_7f
    iget v0, p0, Lx;->l:I

    if-ge v0, v1, :cond_65

    :goto_83
    iget-object v0, p0, Lx;->j:[C

    iget v4, p0, Lx;->l:I

    aget-char v0, v0, v4

    if-ge v0, v3, :cond_8f

    aget v0, v2, v0

    if-nez v0, :cond_98

    :cond_8f
    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx;->l:I

    if-ge v0, v1, :cond_65

    goto :goto_83

    :cond_98
    iget v0, p0, Lx;->l:I

    iget v4, p0, Lx;->k:I

    sub-int/2addr v0, v4

    if-lez v0, :cond_a8

    iget-object v4, p0, Lx;->i:Ljava/io/Writer;

    iget-object v7, p0, Lx;->j:[C

    iget v8, p0, Lx;->k:I

    invoke-virtual {v4, v7, v8, v0}, Ljava/io/Writer;->write([CII)V

    :cond_a8
    iget-object v0, p0, Lx;->j:[C

    iget v4, p0, Lx;->l:I

    aget-char v0, v0, v4

    aget v4, v2, v0

    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx;->l:I

    if-gez v4, :cond_c5

    move v0, v5

    :goto_b9
    iget v7, p0, Lx;->l:I

    if-le v0, v7, :cond_c7

    iget v0, p0, Lx;->l:I

    iput v0, p0, Lx;->k:I

    invoke-direct {p0, v4}, Lx;->b(I)V

    goto :goto_7f

    :cond_c5
    move v0, v6

    goto :goto_b9

    :cond_c7
    iget v7, p0, Lx;->l:I

    sub-int v0, v7, v0

    iput v0, p0, Lx;->k:I

    iget-object v7, p0, Lx;->j:[C

    invoke-static {v4, v7, v0}, Lx;->a(I[CI)V

    goto :goto_7f
.end method


# virtual methods
.method public final a()V
    .registers 4

    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lx;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->h()Lp;

    move-result-object v0

    iput-object v0, p0, Lx;->e:Lp;

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    :goto_13
    return-void

    :cond_14
    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_1d

    invoke-direct {p0}, Lx;->g()V

    :cond_1d
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_13
.end method

.method public final a(I)V
    .registers 6

    const/16 v3, 0x22

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lx;->e(Ljava/lang/String;)V

    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lx;->g()V

    :cond_12
    iget-boolean v0, p0, Lx;->d:Z

    if-eqz v0, :cond_40

    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Lx;->g()V

    :cond_21
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    invoke-static {p1, v0, v1}, Lac;->a(I[CI)I

    move-result v0

    iput v0, p0, Lx;->l:I

    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    :goto_3f
    return-void

    :cond_40
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    invoke-static {p1, v0, v1}, Lac;->a(I[CI)I

    move-result v0

    iput v0, p0, Lx;->l:I

    goto :goto_3f
.end method

.method public final a(J)V
    .registers 7

    const/16 v3, 0x22

    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lx;->e(Ljava/lang/String;)V

    iget-boolean v0, p0, Lx;->d:Z

    if-eqz v0, :cond_35

    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Lx;->g()V

    :cond_16
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    invoke-static {p1, p2, v0, v1}, Lac;->a(J[CI)I

    move-result v0

    iput v0, p0, Lx;->l:I

    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    :goto_34
    return-void

    :cond_35
    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_40

    invoke-direct {p0}, Lx;->g()V

    :cond_40
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    invoke-static {p1, p2, v0, v1}, Lac;->a(J[CI)I

    move-result v0

    iput v0, p0, Lx;->l:I

    goto :goto_34
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    const/16 v3, 0x22

    iget-object v1, p0, Lx;->e:Lp;

    invoke-virtual {v1, p1}, Lp;->a(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lx;->f(Ljava/lang/String;)V

    :cond_11
    if-ne v1, v0, :cond_4d

    :goto_13
    iget-object v1, p0, Lx;->a:Lorg/codehaus/jackson/d;

    if-eqz v1, :cond_56

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    :goto_1b
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->c:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_2c

    invoke-direct {p0}, Lx;->g()V

    :cond_2c
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lx;->g(Ljava/lang/String;)V

    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_42

    invoke-direct {p0}, Lx;->g()V

    :cond_42
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    :goto_4c
    return-void

    :cond_4d
    const/4 v0, 0x0

    goto :goto_13

    :cond_4f
    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    goto :goto_1b

    :cond_52
    invoke-direct {p0, p1}, Lx;->g(Ljava/lang/String;)V

    goto :goto_4c

    :cond_56
    iget v1, p0, Lx;->l:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lx;->m:I

    if-lt v1, v2, :cond_61

    invoke-direct {p0}, Lx;->g()V

    :cond_61
    if-eqz v0, :cond_6f

    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_6f
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->c:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_7b

    invoke-direct {p0, p1}, Lx;->g(Ljava/lang/String;)V

    goto :goto_4c

    :cond_7b
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lx;->g(Ljava/lang/String;)V

    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_91

    invoke-direct {p0}, Lx;->g()V

    :cond_91
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    goto :goto_4c
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1}, Lx;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lx;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 6

    const/16 v3, 0x65

    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lx;->e(Ljava/lang/String;)V

    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_12

    invoke-direct {p0}, Lx;->g()V

    :cond_12
    iget v0, p0, Lx;->l:I

    iget-object v1, p0, Lx;->j:[C

    if-eqz p1, :cond_31

    const/16 v2, 0x74

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    :goto_2c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx;->l:I

    return-void

    :cond_31
    const/16 v2, 0x66

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_2c
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->a()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx;->e:Lp;

    invoke-virtual {v1}, Lp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx;->f(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->e()I

    :goto_2b
    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->j()Lp;

    move-result-object v0

    iput-object v0, p0, Lx;->e:Lp;

    return-void

    :cond_34
    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_3d

    invoke-direct {p0}, Lx;->g()V

    :cond_3d
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_2b
.end method

.method public final b(Ljava/lang/String;)V
    .registers 7

    const/16 v4, 0x6c

    const/16 v3, 0x22

    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lx;->e(Ljava/lang/String;)V

    if-nez p1, :cond_31

    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Lx;->g()V

    :cond_16
    iget v0, p0, Lx;->l:I

    iget-object v1, p0, Lx;->j:[C

    const/16 v2, 0x6e

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx;->l:I

    :goto_30
    return-void

    :cond_31
    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_3a

    invoke-direct {p0}, Lx;->g()V

    :cond_3a
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lx;->g(Ljava/lang/String;)V

    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_50

    invoke-direct {p0}, Lx;->g()V

    :cond_50
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    aput-char v3, v0, v1

    goto :goto_30
.end method

.method public final c()V
    .registers 4

    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lx;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->i()Lp;

    move-result-object v0

    iput-object v0, p0, Lx;->e:Lp;

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    :goto_13
    return-void

    :cond_14
    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_1d

    invoke-direct {p0}, Lx;->g()V

    :cond_1d
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_13
.end method

.method public final close()V
    .registers 3

    invoke-super {p0}, Lj;->close()V

    iget-object v0, p0, Lx;->j:[C

    if-eqz v0, :cond_27

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->b:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_f
    invoke-virtual {p0}, Lx;->f()Lp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lx;->b()V

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, Lorg/codehaus/jackson/b;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lx;->d()V

    goto :goto_f

    :cond_27
    invoke-direct {p0}, Lx;->g()V

    iget-object v0, p0, Lx;->h:Lz;

    invoke-virtual {v0}, Lz;->c()Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->a:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_4c

    :cond_3a
    iget-object v0, p0, Lx;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :goto_3f
    iget-object v0, p0, Lx;->j:[C

    if-eqz v0, :cond_4b

    const/4 v1, 0x0

    iput-object v1, p0, Lx;->j:[C

    iget-object v1, p0, Lx;->h:Lz;

    invoke-virtual {v1, v0}, Lz;->b([C)V

    :cond_4b
    return-void

    :cond_4c
    iget-object v0, p0, Lx;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_3f
.end method

.method public final d()V
    .registers 4

    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->c()Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx;->e:Lp;

    invoke-virtual {v1}, Lp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lx;->f(Ljava/lang/String;)V

    :cond_20
    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->j()Lp;

    move-result-object v0

    iput-object v0, p0, Lx;->e:Lp;

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->e()I

    :goto_33
    return-void

    :cond_34
    iget v0, p0, Lx;->l:I

    iget v1, p0, Lx;->m:I

    if-lt v0, v1, :cond_3d

    invoke-direct {p0}, Lx;->g()V

    :cond_3d
    iget-object v0, p0, Lx;->j:[C

    iget v1, p0, Lx;->l:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lx;->l:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_33
.end method

.method public final e()V
    .registers 2

    invoke-direct {p0}, Lx;->g()V

    iget-object v0, p0, Lx;->i:Ljava/io/Writer;

    if-eqz v0, :cond_14

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->f:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lx;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lx;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    :cond_14
    return-void
.end method

.method protected final e(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->k()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

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

    invoke-static {v1}, Lx;->f(Ljava/lang/String;)V

    :cond_21
    iget-object v1, p0, Lx;->a:Lorg/codehaus/jackson/d;

    if-nez v1, :cond_47

    packed-switch v0, :pswitch_data_72

    :cond_28
    :goto_28
    return-void

    :pswitch_29
    const/16 v0, 0x2c

    :goto_2b
    iget v1, p0, Lx;->l:I

    iget v2, p0, Lx;->m:I

    if-lt v1, v2, :cond_34

    invoke-direct {p0}, Lx;->g()V

    :cond_34
    iget-object v1, p0, Lx;->j:[C

    iget v2, p0, Lx;->l:I

    aput-char v0, v1, v2

    iget v0, p0, Lx;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lx;->l:I

    goto :goto_28

    :pswitch_41
    const/16 v0, 0x3a

    goto :goto_2b

    :pswitch_44
    const/16 v0, 0x20

    goto :goto_2b

    :cond_47
    packed-switch v0, :pswitch_data_7c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_52
    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    goto :goto_28

    :pswitch_55
    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    goto :goto_28

    :pswitch_58
    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    goto :goto_28

    :pswitch_5b
    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->a()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    goto :goto_28

    :cond_66
    iget-object v0, p0, Lx;->e:Lp;

    invoke-virtual {v0}, Lp;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lx;->a:Lorg/codehaus/jackson/d;

    goto :goto_28

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_29
        :pswitch_41
        :pswitch_44
    .end packed-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_52
        :pswitch_55
        :pswitch_58
    .end packed-switch
.end method
