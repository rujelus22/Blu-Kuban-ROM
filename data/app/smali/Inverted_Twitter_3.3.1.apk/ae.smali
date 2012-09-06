.class public final Lae;
.super Ljava/lang/Object;


# instance fields
.field final a:Lae;

.field final b:Z

.field private c:I

.field private d:I

.field private e:[I

.field private f:[Lai;

.field private g:[Laf;

.field private h:I

.field private i:I

.field private transient j:Z

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method private constructor <init>(IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lae;->a:Lae;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lae;->b:Z

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lae;->b(I)V

    return-void
.end method

.method private constructor <init>(Lae;Z)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lae;->a:Lae;

    iput-boolean p2, p0, Lae;->b:Z

    iget v0, p1, Lae;->c:I

    iput v0, p0, Lae;->c:I

    iget v0, p1, Lae;->d:I

    iput v0, p0, Lae;->d:I

    iget-object v0, p1, Lae;->e:[I

    iput-object v0, p0, Lae;->e:[I

    iget-object v0, p1, Lae;->f:[Lai;

    iput-object v0, p0, Lae;->f:[Lai;

    iget-object v0, p1, Lae;->g:[Laf;

    iput-object v0, p0, Lae;->g:[Laf;

    iget v0, p1, Lae;->h:I

    iput v0, p0, Lae;->h:I

    iget v0, p1, Lae;->i:I

    iput v0, p0, Lae;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lae;->j:Z

    iput-boolean v1, p0, Lae;->k:Z

    iput-boolean v1, p0, Lae;->l:Z

    iput-boolean v1, p0, Lae;->m:Z

    return-void
.end method

.method public static a()Lae;
    .registers 3

    new-instance v0, Lae;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lae;-><init>(IZ)V

    return-object v0
.end method

.method private declared-synchronized a(Lae;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget v0, p1, Lae;->c:I

    iget v1, p0, Lae;->c:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_15

    if-gt v0, v1, :cond_9

    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget v0, p1, Lae;->c:I

    const/16 v1, 0x1770

    if-le v0, v1, :cond_18

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lae;->b(I)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_15

    goto :goto_7

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_18
    :try_start_18
    iget v0, p1, Lae;->c:I

    iput v0, p0, Lae;->c:I

    iget-object v0, p1, Lae;->e:[I

    iput-object v0, p0, Lae;->e:[I

    iget-object v0, p1, Lae;->f:[Lai;

    iput-object v0, p0, Lae;->f:[Lai;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lae;->k:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lae;->l:Z

    iget v0, p1, Lae;->d:I

    iput v0, p0, Lae;->d:I

    iget-object v0, p1, Lae;->g:[Laf;

    iput-object v0, p0, Lae;->g:[Laf;

    iget v0, p1, Lae;->h:I

    iput v0, p0, Lae;->h:I

    iget v0, p1, Lae;->i:I

    iput v0, p0, Lae;->i:I
    :try_end_3a
    .catchall {:try_start_18 .. :try_end_3a} :catchall_15

    goto :goto_7
.end method

.method private static b([II)I
    .registers 5

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v0, 0x1

    :goto_4
    if-ge v0, p1, :cond_e

    mul-int/lit8 v1, v1, 0x1f

    aget v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    ushr-int/lit8 v0, v1, 0x10

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    return v0
.end method

.method private b(I)V
    .registers 5

    const/16 v2, 0x40

    const/4 v1, 0x0

    iput v1, p0, Lae;->c:I

    new-array v0, v2, [I

    iput-object v0, p0, Lae;->e:[I

    new-array v0, v2, [Lai;

    iput-object v0, p0, Lae;->f:[Lai;

    iput-boolean v1, p0, Lae;->k:Z

    iput-boolean v1, p0, Lae;->l:Z

    const/16 v0, 0x3f

    iput v0, p0, Lae;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lae;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lae;->g:[Laf;

    iput v1, p0, Lae;->i:I

    iput-boolean v1, p0, Lae;->j:Z

    return-void
.end method

.method public static c()Lai;
    .registers 1

    invoke-static {}, Laj;->b()Laj;

    move-result-object v0

    return-object v0
.end method

.method private d()I
    .registers 7

    iget-object v4, p0, Lae;->g:[Laf;

    const v3, 0x7fffffff

    const/4 v0, -0x1

    const/4 v1, 0x0

    iget v5, p0, Lae;->i:I

    :goto_9
    if-ge v1, v5, :cond_1c

    aget-object v2, v4, v1

    invoke-virtual {v2}, Laf;->a()I

    move-result v2

    if-ge v2, v3, :cond_1e

    const/4 v0, 0x1

    if-ne v2, v0, :cond_17

    :goto_16
    return v1

    :cond_17
    move v0, v1

    :goto_18
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_9

    :cond_1c
    move v1, v0

    goto :goto_16

    :cond_1e
    move v2, v3

    goto :goto_18
.end method

.method private e()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lae;->g:[Laf;

    array-length v1, v0

    add-int v2, v1, v1

    new-array v2, v2, [Laf;

    iput-object v2, p0, Lae;->g:[Laf;

    iget-object v2, p0, Lae;->g:[Laf;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(ZZ)Lae;
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Lae;

    invoke-direct {v0, p0, p2}, Lae;-><init>(Lae;Z)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(I)Lai;
    .registers 7

    const/4 v0, 0x0

    ushr-int/lit8 v1, p1, 0x10

    xor-int/2addr v1, p1

    ushr-int/lit8 v2, v1, 0x8

    xor-int/2addr v2, v1

    iget v1, p0, Lae;->d:I

    and-int/2addr v1, v2

    iget-object v3, p0, Lae;->e:[I

    aget v3, v3, v1

    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_24

    iget-object v4, p0, Lae;->f:[Lai;

    aget-object v1, v4, v1

    if-nez v1, :cond_1c

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    invoke-virtual {v1, p1}, Lai;->a(I)Z

    move-result v4

    if-eqz v4, :cond_26

    move-object v0, v1

    goto :goto_1b

    :cond_24
    if-eqz v3, :cond_1b

    :cond_26
    and-int/lit16 v1, v3, 0xff

    if-lez v1, :cond_1b

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lae;->g:[Laf;

    aget-object v1, v3, v1

    if-eqz v1, :cond_1b

    const/4 v0, 0x0

    invoke-virtual {v1, v2, p1, v0}, Laf;->a(III)Lai;

    move-result-object v0

    goto :goto_1b
.end method

.method public final a(II)Lai;
    .registers 8

    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x1f

    add-int/2addr v1, p2

    ushr-int/lit8 v2, v1, 0x10

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x8

    xor-int/2addr v2, v1

    iget v1, p0, Lae;->d:I

    and-int/2addr v1, v2

    iget-object v3, p0, Lae;->e:[I

    aget v3, v3, v1

    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_27

    iget-object v4, p0, Lae;->f:[Lai;

    aget-object v1, v4, v1

    if-nez v1, :cond_1f

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {v1, p1, p2}, Lai;->a(II)Z

    move-result v4

    if-eqz v4, :cond_29

    move-object v0, v1

    goto :goto_1e

    :cond_27
    if-eqz v3, :cond_1e

    :cond_29
    and-int/lit16 v1, v3, 0xff

    if-lez v1, :cond_1e

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lae;->g:[Laf;

    aget-object v1, v3, v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1, v2, p1, p2}, Laf;->a(III)Lai;

    move-result-object v0

    goto :goto_1e
.end method

.method public final a(Ljava/lang/String;[II)Lai;
    .registers 19

    iget-boolean v1, p0, Lae;->b:Z

    if-eqz v1, :cond_221

    sget-object v1, Lorg/codehaus/jackson/util/InternCache;->a:Lorg/codehaus/jackson/util/InternCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/util/InternCache;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-static/range {p2 .. p3}, Lae;->b([II)I

    move-result v3

    const/4 v1, 0x4

    move/from16 v0, p3

    if-ge v0, v1, :cond_18

    packed-switch p3, :pswitch_data_226

    :cond_18
    move/from16 v0, p3

    new-array v4, v0, [I

    const/4 v1, 0x0

    :goto_1d
    move/from16 v0, p3

    if-ge v1, v0, :cond_d5

    aget v5, p2, v1

    aput v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :pswitch_28
    new-instance v1, Laj;

    const/4 v4, 0x0

    aget v4, p2, v4

    invoke-direct {v1, v2, v3, v4}, Laj;-><init>(Ljava/lang/String;II)V

    :goto_30
    iget-boolean v2, p0, Lae;->k:Z

    if-eqz v2, :cond_47

    iget-object v2, p0, Lae;->e:[I

    iget-object v4, p0, Lae;->e:[I

    array-length v4, v4

    new-array v5, v4, [I

    iput-object v5, p0, Lae;->e:[I

    const/4 v5, 0x0

    iget-object v6, p0, Lae;->e:[I

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lae;->k:Z

    :cond_47
    iget-boolean v2, p0, Lae;->j:Z

    if-eqz v2, :cond_75

    const/4 v2, 0x0

    iput-boolean v2, p0, Lae;->j:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lae;->l:Z

    iget-object v2, p0, Lae;->e:[I

    array-length v5, v2

    add-int v2, v5, v5

    const/high16 v4, 0x1

    if-le v2, v4, :cond_de

    const/4 v2, 0x0

    iput v2, p0, Lae;->c:I

    iget-object v2, p0, Lae;->e:[I

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([II)V

    iget-object v2, p0, Lae;->f:[Lai;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lae;->g:[Laf;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput v2, p0, Lae;->h:I

    const/4 v2, 0x0

    iput v2, p0, Lae;->i:I

    :cond_75
    iget v2, p0, Lae;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lae;->c:I

    iget v2, p0, Lae;->d:I

    and-int v4, v3, v2

    iget-object v2, p0, Lae;->f:[Lai;

    aget-object v2, v2, v4

    if-nez v2, :cond_1b6

    iget-object v2, p0, Lae;->e:[I

    shl-int/lit8 v3, v3, 0x8

    aput v3, v2, v4

    iget-boolean v2, p0, Lae;->l:Z

    if-eqz v2, :cond_a0

    iget-object v2, p0, Lae;->f:[Lai;

    array-length v3, v2

    new-array v5, v3, [Lai;

    iput-object v5, p0, Lae;->f:[Lai;

    const/4 v5, 0x0

    iget-object v6, p0, Lae;->f:[Lai;

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lae;->l:Z

    :cond_a0
    iget-object v2, p0, Lae;->f:[Lai;

    aput-object v1, v2, v4

    :goto_a4
    iget-object v2, p0, Lae;->e:[I

    array-length v2, v2

    iget v3, p0, Lae;->c:I

    shr-int/lit8 v4, v2, 0x1

    if-le v3, v4, :cond_b7

    shr-int/lit8 v3, v2, 0x2

    iget v4, p0, Lae;->c:I

    sub-int/2addr v2, v3

    if-le v4, v2, :cond_218

    const/4 v2, 0x1

    iput-boolean v2, p0, Lae;->j:Z

    :cond_b7
    :goto_b7
    return-object v1

    :pswitch_b8
    new-instance v1, Lak;

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, p2, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lak;-><init>(Ljava/lang/String;III)V

    goto/16 :goto_30

    :pswitch_c5
    new-instance v1, Lal;

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, p2, v5

    const/4 v6, 0x2

    aget v6, p2, v6

    invoke-direct/range {v1 .. v6}, Lal;-><init>(Ljava/lang/String;IIII)V

    goto/16 :goto_30

    :cond_d5
    new-instance v1, Lam;

    move/from16 v0, p3

    invoke-direct {v1, v2, v3, v4, v0}, Lam;-><init>(Ljava/lang/String;I[II)V

    goto/16 :goto_30

    :cond_de
    new-array v4, v2, [I

    iput-object v4, p0, Lae;->e:[I

    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Lae;->d:I

    iget-object v6, p0, Lae;->f:[Lai;

    new-array v2, v2, [Lai;

    iput-object v2, p0, Lae;->f:[Lai;

    const/4 v4, 0x0

    const/4 v2, 0x0

    move v14, v2

    move v2, v4

    move v4, v14

    :goto_f1
    if-ge v4, v5, :cond_10d

    aget-object v7, v6, v4

    if-eqz v7, :cond_10a

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7}, Lai;->hashCode()I

    move-result v8

    iget v9, p0, Lae;->d:I

    and-int/2addr v9, v8

    iget-object v10, p0, Lae;->f:[Lai;

    aput-object v7, v10, v9

    iget-object v7, p0, Lae;->e:[I

    shl-int/lit8 v8, v8, 0x8

    aput v8, v7, v9

    :cond_10a
    add-int/lit8 v4, v4, 0x1

    goto :goto_f1

    :cond_10d
    iget v7, p0, Lae;->i:I

    if-eqz v7, :cond_75

    const/4 v4, 0x0

    iput v4, p0, Lae;->h:I

    const/4 v4, 0x0

    iput v4, p0, Lae;->i:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lae;->m:Z

    iget-object v8, p0, Lae;->g:[Laf;

    array-length v4, v8

    new-array v4, v4, [Laf;

    iput-object v4, p0, Lae;->g:[Laf;

    const/4 v4, 0x0

    :goto_122
    if-ge v4, v7, :cond_191

    aget-object v5, v8, v4

    move-object v6, v5

    move v5, v2

    :goto_128
    if-eqz v6, :cond_18c

    add-int/lit8 v5, v5, 0x1

    iget-object v9, v6, Laf;->a:Lai;

    invoke-virtual {v9}, Lai;->hashCode()I

    move-result v2

    iget v10, p0, Lae;->d:I

    and-int/2addr v10, v2

    iget-object v11, p0, Lae;->e:[I

    aget v11, v11, v10

    iget-object v12, p0, Lae;->f:[Lai;

    aget-object v12, v12, v10

    if-nez v12, :cond_14d

    iget-object v11, p0, Lae;->e:[I

    shl-int/lit8 v2, v2, 0x8

    aput v2, v11, v10

    iget-object v2, p0, Lae;->f:[Lai;

    aput-object v9, v2, v10

    :goto_149
    iget-object v2, v6, Laf;->b:Laf;

    move-object v6, v2

    goto :goto_128

    :cond_14d
    iget v2, p0, Lae;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lae;->h:I

    and-int/lit16 v2, v11, 0xff

    if-nez v2, :cond_189

    iget v2, p0, Lae;->i:I

    const/16 v12, 0xfe

    if-gt v2, v12, :cond_184

    iget v2, p0, Lae;->i:I

    iget v12, p0, Lae;->i:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lae;->i:I

    iget-object v12, p0, Lae;->g:[Laf;

    array-length v12, v12

    if-lt v2, v12, :cond_16d

    invoke-direct {p0}, Lae;->e()V

    :cond_16d
    :goto_16d
    iget-object v12, p0, Lae;->e:[I

    and-int/lit16 v11, v11, -0x100

    add-int/lit8 v13, v2, 0x1

    or-int/2addr v11, v13

    aput v11, v12, v10

    :goto_176
    iget-object v10, p0, Lae;->g:[Laf;

    new-instance v11, Laf;

    iget-object v12, p0, Lae;->g:[Laf;

    aget-object v12, v12, v2

    invoke-direct {v11, v9, v12}, Laf;-><init>(Lai;Laf;)V

    aput-object v11, v10, v2

    goto :goto_149

    :cond_184
    invoke-direct {p0}, Lae;->d()I

    move-result v2

    goto :goto_16d

    :cond_189
    add-int/lit8 v2, v2, -0x1

    goto :goto_176

    :cond_18c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v5

    goto :goto_122

    :cond_191
    iget v4, p0, Lae;->c:I

    if-eq v2, v4, :cond_75

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Internal error: count after rehash "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lae;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b6
    iget-boolean v2, p0, Lae;->m:Z

    if-eqz v2, :cond_1c7

    iget-object v2, p0, Lae;->g:[Laf;

    if-nez v2, :cond_203

    const/16 v2, 0x20

    new-array v2, v2, [Laf;

    iput-object v2, p0, Lae;->g:[Laf;

    :goto_1c4
    const/4 v2, 0x0

    iput-boolean v2, p0, Lae;->m:Z

    :cond_1c7
    iget v2, p0, Lae;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lae;->h:I

    iget-object v2, p0, Lae;->e:[I

    aget v3, v2, v4

    and-int/lit16 v2, v3, 0xff

    if-nez v2, :cond_215

    iget v2, p0, Lae;->i:I

    const/16 v5, 0xfe

    if-gt v2, v5, :cond_210

    iget v2, p0, Lae;->i:I

    iget v5, p0, Lae;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lae;->i:I

    iget-object v5, p0, Lae;->g:[Laf;

    array-length v5, v5

    if-lt v2, v5, :cond_1eb

    invoke-direct {p0}, Lae;->e()V

    :cond_1eb
    :goto_1eb
    iget-object v5, p0, Lae;->e:[I

    and-int/lit16 v3, v3, -0x100

    add-int/lit8 v6, v2, 0x1

    or-int/2addr v3, v6

    aput v3, v5, v4

    :goto_1f4
    iget-object v3, p0, Lae;->g:[Laf;

    new-instance v4, Laf;

    iget-object v5, p0, Lae;->g:[Laf;

    aget-object v5, v5, v2

    invoke-direct {v4, v1, v5}, Laf;-><init>(Lai;Laf;)V

    aput-object v4, v3, v2

    goto/16 :goto_a4

    :cond_203
    array-length v3, v2

    new-array v5, v3, [Laf;

    iput-object v5, p0, Lae;->g:[Laf;

    const/4 v5, 0x0

    iget-object v6, p0, Lae;->g:[Laf;

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1c4

    :cond_210
    invoke-direct {p0}, Lae;->d()I

    move-result v2

    goto :goto_1eb

    :cond_215
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f4

    :cond_218
    iget v2, p0, Lae;->h:I

    if-lt v2, v3, :cond_b7

    const/4 v2, 0x1

    iput-boolean v2, p0, Lae;->j:Z

    goto/16 :goto_b7

    :cond_221
    move-object/from16 v2, p1

    goto/16 :goto_c

    nop

    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_28
        :pswitch_b8
        :pswitch_c5
    .end packed-switch
.end method

.method public final a([II)Lai;
    .registers 8

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lae;->b([II)I

    move-result v2

    iget v0, p0, Lae;->d:I

    and-int/2addr v0, v2

    iget-object v3, p0, Lae;->e:[I

    aget v3, v3, v0

    shr-int/lit8 v4, v3, 0x8

    xor-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_20

    iget-object v4, p0, Lae;->f:[Lai;

    aget-object v0, v4, v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1, p2}, Lai;->a([II)Z

    move-result v4

    if-eqz v4, :cond_24

    :cond_1f
    :goto_1f
    return-object v0

    :cond_20
    if-nez v3, :cond_24

    move-object v0, v1

    goto :goto_1f

    :cond_24
    and-int/lit16 v0, v3, 0xff

    if-lez v0, :cond_35

    add-int/lit8 v0, v0, -0x1

    iget-object v3, p0, Lae;->g:[Laf;

    aget-object v0, v3, v0

    if-eqz v0, :cond_35

    invoke-virtual {v0, v2, p1, p2}, Laf;->a(I[II)Lai;

    move-result-object v0

    goto :goto_1f

    :cond_35
    move-object v0, v1

    goto :goto_1f
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lae;->k:Z

    if-nez v0, :cond_18

    move v0, v1

    :goto_6
    if-eqz v0, :cond_17

    iget-object v0, p0, Lae;->a:Lae;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lae;->a:Lae;

    invoke-direct {v0, p0}, Lae;->a(Lae;)V

    iput-boolean v1, p0, Lae;->k:Z

    iput-boolean v1, p0, Lae;->l:Z

    iput-boolean v1, p0, Lae;->m:Z

    :cond_17
    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_6
.end method
