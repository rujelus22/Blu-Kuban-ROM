.class public final Lorg/codehaus/jackson/util/c;
.super Ljava/lang/Object;


# static fields
.field static final a:[C


# instance fields
.field private final b:Lorg/codehaus/jackson/util/BufferRecycler;

.field private c:[C

.field private d:I

.field private e:I

.field private f:Ljava/util/ArrayList;

.field private g:Z

.field private h:I

.field private i:[C

.field private j:I

.field private k:Ljava/lang/String;

.field private l:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    sput-object v0, Lorg/codehaus/jackson/util/c;->a:[C

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/util/BufferRecycler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/c;->g:Z

    iput-object p1, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    return-void
.end method

.method private final b(I)[C
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v1, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->c:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v0, v1, p1}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;I)[C

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    goto :goto_c
.end method

.method private c(I)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lorg/codehaus/jackson/util/c;->e:I

    iput v5, p0, Lorg/codehaus/jackson/util/c;->e:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->c:[C

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/codehaus/jackson/util/c;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/c;->d:I

    const/4 v3, -0x1

    iput v3, p0, Lorg/codehaus/jackson/util/c;->d:I

    add-int v3, v0, p1

    iget-object v4, p0, Lorg/codehaus/jackson/util/c;->i:[C

    if-eqz v4, :cond_1a

    iget-object v4, p0, Lorg/codehaus/jackson/util/c;->i:[C

    array-length v4, v4

    if-le v3, v4, :cond_20

    :cond_1a
    invoke-direct {p0, v3}, Lorg/codehaus/jackson/util/c;->b(I)[C

    move-result-object v3

    iput-object v3, p0, Lorg/codehaus/jackson/util/c;->i:[C

    :cond_20
    if-lez v0, :cond_27

    iget-object v3, p0, Lorg/codehaus/jackson/util/c;->i:[C

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_27
    iput v5, p0, Lorg/codehaus/jackson/util/c;->h:I

    iput v0, p0, Lorg/codehaus/jackson/util/c;->j:I

    return-void
.end method

.method private d(I)V
    .registers 5

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/util/c;->g:Z

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lorg/codehaus/jackson/util/c;->h:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Lorg/codehaus/jackson/util/c;->h:I

    array-length v1, v0

    shr-int/lit8 v0, v1, 0x1

    if-ge v0, p1, :cond_2f

    :goto_20
    const/high16 v0, 0x4

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    return-void

    :cond_2f
    move p1, v0

    goto :goto_20
.end method

.method private m()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    iput v2, p0, Lorg/codehaus/jackson/util/c;->j:I

    iput v2, p0, Lorg/codehaus/jackson/util/c;->e:I

    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->c:[C

    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->l:[C

    iget-boolean v0, p0, Lorg/codehaus/jackson/util/c;->g:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lorg/codehaus/jackson/util/c;->n()V

    :cond_16
    return-void
.end method

.method private final n()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codehaus/jackson/util/c;->g:Z

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput v1, p0, Lorg/codehaus/jackson/util/c;->h:I

    iput v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    return-void
.end method

.method private o()[C
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->l:[C

    if-nez v0, :cond_11

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_f
    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->l:[C

    :cond_11
    return-object v0

    :cond_12
    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    if-ltz v0, :cond_2b

    iget v0, p0, Lorg/codehaus/jackson/util/c;->e:I

    if-gtz v0, :cond_1d

    sget-object v0, Lorg/codehaus/jackson/util/c;->a:[C

    goto :goto_f

    :cond_1d
    iget v0, p0, Lorg/codehaus/jackson/util/c;->e:I

    new-array v0, v0, [C

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->c:[C

    iget v3, p0, Lorg/codehaus/jackson/util/c;->d:I

    iget v4, p0, Lorg/codehaus/jackson/util/c;->e:I

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_f

    :cond_2b
    invoke-virtual {p0}, Lorg/codehaus/jackson/util/c;->b()I

    move-result v0

    if-gtz v0, :cond_34

    sget-object v0, Lorg/codehaus/jackson/util/c;->a:[C

    goto :goto_f

    :cond_34
    new-array v3, v0, [C

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v2

    move v1, v2

    :goto_42
    if-ge v4, v5, :cond_55

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v6, v0

    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v6

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_42

    :cond_55
    move v0, v1

    :goto_56
    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->i:[C

    iget v4, p0, Lorg/codehaus/jackson/util/c;->j:I

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v3

    goto :goto_f

    :cond_5f
    move v0, v2

    goto :goto_56
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    if-nez v0, :cond_8

    invoke-direct {p0}, Lorg/codehaus/jackson/util/c;->m()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lorg/codehaus/jackson/util/c;->m()V

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->i:[C

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->b:Lorg/codehaus/jackson/util/BufferRecycler;

    sget-object v2, Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;->c:Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;

    invoke-virtual {v1, v2, v0}, Lorg/codehaus/jackson/util/BufferRecycler;->a(Lorg/codehaus/jackson/util/BufferRecycler$CharBufferType;[C)V

    goto :goto_7
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lorg/codehaus/jackson/util/c;->j:I

    return-void
.end method

.method public final a([CII)V
    .registers 5

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->l:[C

    iput-object p1, p0, Lorg/codehaus/jackson/util/c;->c:[C

    iput p2, p0, Lorg/codehaus/jackson/util/c;->d:I

    iput p3, p0, Lorg/codehaus/jackson/util/c;->e:I

    iget-boolean v0, p0, Lorg/codehaus/jackson/util/c;->g:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lorg/codehaus/jackson/util/c;->n()V

    :cond_12
    return-void
.end method

.method public final b()I
    .registers 3

    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    if-ltz v0, :cond_7

    iget v0, p0, Lorg/codehaus/jackson/util/c;->e:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lorg/codehaus/jackson/util/c;->h:I

    iget v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    add-int/2addr v0, v1

    goto :goto_6
.end method

.method public final b([CII)V
    .registers 8

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->c:[C

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    iput v3, p0, Lorg/codehaus/jackson/util/c;->e:I

    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->l:[C

    iget-boolean v0, p0, Lorg/codehaus/jackson/util/c;->g:Z

    if-eqz v0, :cond_36

    invoke-direct {p0}, Lorg/codehaus/jackson/util/c;->n()V

    :cond_14
    :goto_14
    iput v3, p0, Lorg/codehaus/jackson/util/c;->h:I

    iput v3, p0, Lorg/codehaus/jackson/util/c;->j:I

    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    if-ltz v0, :cond_1f

    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/c;->c(I)V

    :cond_1f
    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    iput-object v1, p0, Lorg/codehaus/jackson/util/c;->l:[C

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    array-length v1, v0

    iget v2, p0, Lorg/codehaus/jackson/util/c;->j:I

    sub-int/2addr v1, v2

    if-lt v1, p3, :cond_41

    iget v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/codehaus/jackson/util/c;->j:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/util/c;->j:I

    :goto_35
    return-void

    :cond_36
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    if-nez v0, :cond_14

    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/c;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    goto :goto_14

    :cond_41
    if-lez v1, :cond_4a

    iget v2, p0, Lorg/codehaus/jackson/util/c;->j:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    :cond_4a
    invoke-direct {p0, p3}, Lorg/codehaus/jackson/util/c;->d(I)V

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/codehaus/jackson/util/c;->j:I

    goto :goto_35
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    if-ltz v0, :cond_7

    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final d()[C
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    if-ltz v0, :cond_7

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->c:[C

    :goto_6
    return-object v0

    :cond_7
    iget-boolean v0, p0, Lorg/codehaus/jackson/util/c;->g:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    goto :goto_6

    :cond_e
    invoke-direct {p0}, Lorg/codehaus/jackson/util/c;->o()[C

    move-result-object v0

    goto :goto_6
.end method

.method public final e()Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->l:[C

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->l:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    :cond_12
    :goto_12
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    if-ltz v0, :cond_30

    iget v0, p0, Lorg/codehaus/jackson/util/c;->e:I

    if-gtz v0, :cond_22

    const-string v0, ""

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    goto :goto_14

    :cond_22
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/c;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/c;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    goto :goto_12

    :cond_30
    iget v0, p0, Lorg/codehaus/jackson/util/c;->h:I

    iget v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    if-nez v0, :cond_45

    if-nez v1, :cond_3d

    const-string v0, ""

    :goto_3a
    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    goto :goto_12

    :cond_3d
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/codehaus/jackson/util/c;->i:[C

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3a

    :cond_45
    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_56
    if-ge v1, v4, :cond_68

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    array-length v5, v0

    invoke-virtual {v3, v0, v2, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_56

    :cond_68
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    iget v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    invoke-virtual {v3, v0, v2, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    goto :goto_12
.end method

.method public final f()Ljava/math/BigDecimal;
    .registers 5

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->l:[C

    if-eqz v0, :cond_c

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->l:[C

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    :goto_b
    return-object v0

    :cond_c
    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    if-ltz v0, :cond_1c

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->c:[C

    iget v2, p0, Lorg/codehaus/jackson/util/c;->d:I

    iget v3, p0, Lorg/codehaus/jackson/util/c;->e:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    :cond_1c
    iget v0, p0, Lorg/codehaus/jackson/util/c;->h:I

    if-nez v0, :cond_2b

    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->i:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/codehaus/jackson/util/c;->j:I

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>([CII)V

    goto :goto_b

    :cond_2b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Lorg/codehaus/jackson/util/c;->o()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_b
.end method

.method public final g()D
    .registers 3

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final h()[C
    .registers 4

    const/4 v2, 0x1

    iget v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    if-ltz v0, :cond_b

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/c;->c(I)V

    :cond_8
    :goto_8
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    if-nez v0, :cond_17

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/c;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    goto :goto_8

    :cond_17
    iget v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    array-length v0, v0

    if-lt v1, v0, :cond_8

    invoke-direct {p0, v2}, Lorg/codehaus/jackson/util/c;->d(I)V

    goto :goto_8
.end method

.method public final i()[C
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/util/c;->d:I

    iput v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    iput v1, p0, Lorg/codehaus/jackson/util/c;->e:I

    iput-object v2, p0, Lorg/codehaus/jackson/util/c;->c:[C

    iput-object v2, p0, Lorg/codehaus/jackson/util/c;->k:Ljava/lang/String;

    iput-object v2, p0, Lorg/codehaus/jackson/util/c;->l:[C

    iget-boolean v0, p0, Lorg/codehaus/jackson/util/c;->g:Z

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lorg/codehaus/jackson/util/c;->n()V

    :cond_16
    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    if-nez v0, :cond_20

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/util/c;->b(I)[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    :cond_20
    return-object v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lorg/codehaus/jackson/util/c;->j:I

    return v0
.end method

.method public final k()[C
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/util/c;->g:Z

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->i:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    array-length v0, v0

    iget v1, p0, Lorg/codehaus/jackson/util/c;->h:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/util/c;->h:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [C

    const/4 v1, 0x0

    iput v1, p0, Lorg/codehaus/jackson/util/c;->j:I

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    return-object v0
.end method

.method public final l()[C
    .registers 6

    const/high16 v4, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/util/c;->i:[C

    array-length v2, v1

    if-ne v2, v4, :cond_17

    const v0, 0x40001

    :goto_b
    new-array v0, v0, [C

    iput-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/codehaus/jackson/util/c;->i:[C

    return-object v0

    :cond_17
    shr-int/lit8 v0, v2, 0x1

    add-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_b
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/codehaus/jackson/util/c;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
