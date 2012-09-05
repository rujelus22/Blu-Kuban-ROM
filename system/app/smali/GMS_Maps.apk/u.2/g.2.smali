.class public Lu/g;
.super Lat/a;


# static fields
.field private static k:Ljava/lang/String;


# instance fields
.field private final a:I

.field private final b:[Lu/P;

.field private final c:[Lu/b;

.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:F

.field private final h:F

.field private final i:Lu/P;

.field private final j:I

.field private l:Lam/b;

.field private m:I

.field private n:[Lu/x;

.field private o:[Lu/P;

.field private p:[Lu/b;


# direct methods
.method private constructor <init>([Lu/P;IFFZLu/P;III[Lu/b;)V
    .registers 12

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lu/g;->m:I

    iput-object p1, p0, Lu/g;->b:[Lu/P;

    iput p2, p0, Lu/g;->a:I

    iput p9, p0, Lu/g;->j:I

    iput p3, p0, Lu/g;->g:F

    iput p4, p0, Lu/g;->h:F

    iput-boolean p5, p0, Lu/g;->d:Z

    iput-object p6, p0, Lu/g;->i:Lu/P;

    iput p8, p0, Lu/g;->f:I

    iput-object p10, p0, Lu/g;->c:[Lu/b;

    iput p7, p0, Lu/g;->e:I

    sget-object v0, Lu/g;->k:Ljava/lang/String;

    if-nez v0, :cond_21

    invoke-direct {p0}, Lu/g;->u()V

    :cond_21
    return-void
.end method

.method synthetic constructor <init>([Lu/P;IFFZLu/P;III[Lu/b;Lu/h;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Lu/g;-><init>([Lu/P;IFFZLu/P;III[Lu/b;)V

    return-void
.end method

.method static synthetic a(Lu/g;I)I
    .registers 2

    iput p1, p0, Lu/g;->m:I

    return p1
.end method

.method static synthetic a([Lu/P;)Z
    .registers 2

    invoke-static {p0}, Lu/g;->b([Lu/P;)Z

    move-result v0

    return v0
.end method

.method private static a(Lam/b;Ljava/lang/String;)[Lu/P;
    .registers 12

    const/16 v9, 0xf

    const/4 v8, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v8}, Lam/b;->l(I)I

    move-result v2

    new-array v3, v2, [Lu/P;

    move v0, v1

    :goto_b
    if-ge v0, v2, :cond_3c

    invoke-virtual {p0, v8, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, v5, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_33

    new-instance v6, Lu/P;

    invoke-direct {v6, v5, p1}, Lu/P;-><init>(Lam/b;Ljava/lang/String;)V

    aput-object v6, v3, v0

    :goto_21
    invoke-virtual {v4, v9}, Lam/b;->k(I)Z

    move-result v5

    if-eqz v5, :cond_30

    aget-object v5, v3, v0

    invoke-virtual {v4, v9}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lu/P;->a(Ljava/lang/String;)V

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_33
    new-instance v6, Lu/P;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7}, Lu/P;-><init>(Lam/b;Ljava/lang/String;)V

    aput-object v6, v3, v0

    goto :goto_21

    :cond_3c
    return-object v3
.end method

.method private a(Lam/b;[Lu/P;)[Lu/x;
    .registers 16

    const/16 v12, 0x8

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-virtual {p1, v12}, Lam/b;->l(I)I

    move-result v10

    new-array v11, v10, [Lu/x;

    const/16 v1, 0xd

    invoke-static {p1, v1, v0}, Lam/g;->c(Lam/b;II)I

    move-result v7

    if-le v7, v2, :cond_13

    move v7, v0

    :cond_13
    if-ne v7, v2, :cond_1e

    const/16 v1, 0x17

    invoke-static {p1, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v7, 0x3

    :cond_1e
    move v9, v0

    :goto_1f
    if-ge v9, v10, :cond_3c

    invoke-virtual {p1, v12, v9}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    iget v1, p0, Lu/g;->j:I

    iget v3, p0, Lu/g;->g:F

    iget v4, p0, Lu/g;->h:F

    iget-boolean v5, p0, Lu/g;->d:Z

    iget-object v6, p0, Lu/g;->i:Lu/P;

    iget-object v8, p0, Lu/g;->p:[Lu/b;

    move-object v2, p2

    invoke-static/range {v0 .. v8}, Lu/x;->a(Lam/b;I[Lu/P;FFZLu/P;I[Lu/b;)Lu/x;

    move-result-object v0

    aput-object v0, v11, v9

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1f

    :cond_3c
    return-object v11
.end method

.method private b(I)I
    .registers 4

    iget-object v0, p0, Lu/g;->l:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    return v0
.end method

.method private static b([Lu/P;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    array-length v2, p0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_40

    aget-object v2, p0, v0

    invoke-virtual {v2}, Lu/P;->c()Lt/o;

    move-result-object v2

    aget-object v3, p0, v1

    invoke-virtual {v3}, Lu/P;->c()Lt/o;

    move-result-object v3

    if-eqz v2, :cond_40

    if-eqz v3, :cond_40

    invoke-virtual {v2}, Lt/o;->a()I

    move-result v4

    invoke-virtual {v2}, Lt/o;->b()I

    move-result v2

    invoke-static {v4, v2}, Lt/L;->b(II)Lt/L;

    move-result-object v2

    invoke-virtual {v3}, Lt/o;->a()I

    move-result v4

    invoke-virtual {v3}, Lt/o;->b()I

    move-result v3

    invoke-static {v4, v3}, Lt/L;->b(II)Lt/L;

    move-result-object v3

    invoke-virtual {v2, v3}, Lt/L;->c(Lt/L;)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2}, Lt/L;->e()D

    move-result-wide v5

    div-double v2, v3, v5

    const-wide/high16 v4, 0x4000

    cmpg-double v2, v2, v4

    if-gez v2, :cond_40

    :goto_3f
    return v0

    :cond_40
    move v0, v1

    goto :goto_3f
.end method

.method static b(Lam/b;)[Lu/b;
    .registers 8

    const/16 v6, 0xe

    const/4 v2, 0x0

    invoke-virtual {p0, v6}, Lam/b;->l(I)I

    move-result v3

    new-array v0, v3, [Lu/b;

    move v1, v2

    :goto_a
    if-ge v1, v3, :cond_39

    invoke-virtual {p0, v6, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4}, Lu/b;->a(Lam/b;)Lu/b;

    move-result-object v5

    aput-object v5, v0, v1

    aget-object v5, v0, v1

    if-nez v5, :cond_3a

    const-string v0, "DirectionsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Option with no value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lam/b;->d(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v2, [Lu/b;

    :cond_39
    return-object v0

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private static c(Lam/b;)[Lu/P;
    .registers 9

    const/4 v7, 0x7

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v2}, Lam/b;->l(I)I

    move-result v0

    if-nez v0, :cond_c

    new-array v0, v1, [Lu/P;

    :cond_b
    return-object v0

    :cond_c
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v2, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-virtual {v2, v7}, Lam/b;->l(I)I

    move-result v3

    new-array v0, v3, [Lu/P;

    :goto_18
    if-ge v1, v3, :cond_b

    invoke-virtual {v2, v7, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    new-instance v5, Lu/P;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lu/P;-><init>(Lam/b;Ljava/lang/String;)V

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method private t()V
    .registers 4

    const/4 v2, 0x2

    iget-object v0, p0, Lu/g;->l:Lam/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lu/g;->m:I

    iget-object v0, p0, Lu/g;->l:Lam/b;

    invoke-static {v0}, Lu/g;->b(Lam/b;)[Lu/b;

    move-result-object v0

    iput-object v0, p0, Lu/g;->p:[Lu/b;

    invoke-direct {p0}, Lu/g;->v()V

    invoke-virtual {p0}, Lu/g;->e_()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lu/g;->b:[Lu/P;

    iget-object v1, p0, Lu/g;->b:[Lu/P;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lu/P;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lu/g;->l:Lam/b;

    invoke-static {v1, v0}, Lu/g;->a(Lam/b;Ljava/lang/String;)[Lu/P;

    move-result-object v0

    iget-object v1, p0, Lu/g;->l:Lam/b;

    invoke-direct {p0, v1, v0}, Lu/g;->a(Lam/b;[Lu/P;)[Lu/x;

    move-result-object v0

    iput-object v0, p0, Lu/g;->n:[Lu/x;

    iget v0, p0, Lu/g;->j:I

    if-ne v0, v2, :cond_42

    iget-object v0, p0, Lu/g;->n:[Lu/x;

    array-length v0, v0

    if-ge v0, v2, :cond_42

    const/4 v0, 0x4

    iput v0, p0, Lu/g;->m:I

    :cond_42
    :goto_42
    return-void

    :cond_43
    invoke-virtual {p0}, Lu/g;->n()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lu/g;->l:Lam/b;

    invoke-static {v0}, Lu/g;->c(Lam/b;)[Lu/P;

    move-result-object v0

    iput-object v0, p0, Lu/g;->o:[Lu/P;

    iget-object v0, p0, Lu/g;->o:[Lu/P;

    array-length v0, v0

    if-nez v0, :cond_42

    const/4 v0, 0x3

    iput v0, p0, Lu/g;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lu/g;->o:[Lu/P;

    goto :goto_42

    :cond_5d
    const-string v0, "DirectionsRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lu/g;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method private u()V
    .registers 2

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->i()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/g;->k:Ljava/lang/String;

    :cond_10
    return-void
.end method

.method private v()V
    .registers 5

    const/4 v3, 0x2

    iget v0, p0, Lu/g;->m:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lu/g;->l:Lam/b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v1

    if-lt v1, v3, :cond_6

    const/4 v0, 0x0

    :goto_11
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_1e

    invoke-direct {p0, v0}, Lu/g;->b(I)I

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1e
    add-int/lit8 v0, v1, -0x1

    invoke-direct {p0, v0}, Lu/g;->b(I)I

    move-result v0

    if-ne v0, v3, :cond_6

    iput v3, p0, Lu/g;->m:I

    goto :goto_6
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x1c

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lu/g;->m:I

    return-void
.end method

.method public a(Lam/b;)V
    .registers 2

    iput-object p1, p0, Lu/g;->l:Lam/b;

    invoke-direct {p0}, Lu/g;->t()V

    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3

    invoke-virtual {p0}, Lu/g;->s()Lam/b;

    move-result-object v0

    invoke-static {p1, v0}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5

    :try_start_0
    sget-object v0, LbD/aR;->g:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/g;->a(Lam/b;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_b
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_9} :catch_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_22

    const/4 v0, 0x1

    return v0

    :catch_b
    move-exception v0

    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "DirectionsRequest: Handling request failed"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_17
    move-exception v0

    const-string v1, "DirectionsRequest"

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_22
    move-exception v0

    const-string v1, "DA:DirectionsRequest"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "DirectionsRequest: Parse failed"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lu/g;->m:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public d()[Lu/x;
    .registers 2

    iget-object v0, p0, Lu/g;->n:[Lu/x;

    return-object v0
.end method

.method public d_()Z
    .registers 3

    iget v0, p0, Lu/g;->j:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public e()[Lu/b;
    .registers 2

    iget-object v0, p0, Lu/g;->p:[Lu/b;

    return-object v0
.end method

.method public e_()Z
    .registers 2

    iget v0, p0, Lu/g;->m:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()[Lu/P;
    .registers 2

    iget-object v0, p0, Lu/g;->o:[Lu/P;

    return-object v0
.end method

.method public h()Z
    .registers 3

    iget v0, p0, Lu/g;->j:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public i()I
    .registers 2

    iget v0, p0, Lu/g;->e:I

    return v0
.end method

.method public k()Z
    .registers 3

    iget v0, p0, Lu/g;->m:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public l()Z
    .registers 3

    iget v0, p0, Lu/g;->m:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public m()Z
    .registers 3

    iget v0, p0, Lu/g;->m:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public n()Z
    .registers 3

    iget v0, p0, Lu/g;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public o()Z
    .registers 3

    iget v0, p0, Lu/g;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public p()I
    .registers 2

    iget v0, p0, Lu/g;->j:I

    return v0
.end method

.method public q()Lam/b;
    .registers 2

    iget-object v0, p0, Lu/g;->l:Lam/b;

    return-object v0
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method s()Lam/b;
    .registers 10

    const v4, 0x186a0

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v2, Lam/b;

    sget-object v0, LbD/aR;->f:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    iget v0, p0, Lu/g;->a:I

    invoke-virtual {v2, v6, v0}, Lam/b;->a(II)V

    move v0, v1

    :goto_14
    iget-object v3, p0, Lu/g;->b:[Lu/P;

    array-length v3, v3

    if-ge v0, v3, :cond_27

    iget-object v3, p0, Lu/g;->b:[Lu/P;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lu/P;->h()Lam/b;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_27
    const/4 v0, 0x5

    iget v3, p0, Lu/g;->f:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    iget v0, p0, Lu/g;->f:I

    if-le v0, v6, :cond_4b

    const/16 v0, 0x16

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    invoke-static {}, Lcom/google/android/maps/driveabout/app/ci;->a()Lcom/google/android/maps/driveabout/app/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ci;->f()Lcom/google/android/maps/driveabout/app/NavigationService;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationService;->j()Z

    move-result v0

    if-nez v0, :cond_4b

    const/16 v0, 0x20

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    :cond_4b
    const/4 v0, 0x7

    invoke-virtual {v2, v0, v1}, Lam/b;->h(II)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0xf

    invoke-virtual {v2, v0, v6}, Lam/b;->h(II)V

    const/16 v0, 0x14

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0x26

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0x19

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0x15

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0x1d

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0x1f

    invoke-virtual {v2, v0, v6}, Lam/b;->b(IZ)V

    const/16 v0, 0x17

    const/16 v3, 0x32

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    const/16 v0, 0x18

    iget v3, p0, Lu/g;->j:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    sget-object v0, Lu/g;->k:Ljava/lang/String;

    if-eqz v0, :cond_9a

    const/16 v0, 0x23

    sget-object v3, Lu/g;->k:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lam/b;->b(ILjava/lang/String;)V

    :cond_9a
    iget v0, p0, Lu/g;->j:I

    if-nez v0, :cond_c0

    new-instance v0, Lam/b;

    sget-object v3, LbD/cO;->g:Lam/e;

    invoke-direct {v0, v3}, Lam/b;-><init>(Lam/e;)V

    iget-object v3, p0, Lu/g;->b:[Lu/P;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lu/P;->c()Lt/o;

    move-result-object v3

    invoke-static {v3}, Lz/f;->b(Lt/o;)Lam/b;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Lam/b;->a(ILam/b;)V

    invoke-virtual {v0, v8, v4}, Lam/b;->h(II)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v4}, Lam/b;->h(II)V

    const/16 v3, 0x9

    invoke-virtual {v2, v3, v0}, Lam/b;->b(ILam/b;)V

    :cond_c0
    iget-object v0, p0, Lu/g;->c:[Lu/b;

    if-eqz v0, :cond_d7

    iget-object v0, p0, Lu/g;->c:[Lu/b;

    array-length v3, v0

    :goto_c7
    if-ge v1, v3, :cond_d7

    aget-object v4, v0, v1

    const/16 v5, 0xa

    invoke-virtual {v4}, Lu/b;->a()Lam/b;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    :cond_d7
    iget v0, p0, Lu/g;->g:F

    cmpl-float v0, v0, v7

    if-gez v0, :cond_e3

    iget v0, p0, Lu/g;->h:F

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_107

    :cond_e3
    new-instance v0, Lam/b;

    sget-object v1, LbD/aR;->B:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iget v1, p0, Lu/g;->g:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_f6

    iget v1, p0, Lu/g;->g:F

    float-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Lam/b;->h(II)V

    :cond_f6
    iget v1, p0, Lu/g;->h:F

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_102

    iget v1, p0, Lu/g;->h:F

    float-to-int v1, v1

    invoke-virtual {v0, v8, v1}, Lam/b;->h(II)V

    :cond_102
    const/16 v1, 0x11

    invoke-virtual {v2, v1, v0}, Lam/b;->a(ILam/b;)V

    :cond_107
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " mode:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lu/g;->a:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " action:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lu/g;->j:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " startBearing:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lu/g;->g:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " startSpeed:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lu/g;->h:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " waypoints: ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    :goto_3a
    iget-object v3, p0, Lu/g;->b:[Lu/P;

    array-length v3, v3

    if-ge v0, v3, :cond_60

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lu/g;->b:[Lu/P;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lu/g;->b:[Lu/P;

    aget-object v3, v3, v0

    iget-object v4, p0, Lu/g;->i:Lu/P;

    invoke-virtual {v3, v4}, Lu/P;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_60
    iget-boolean v0, p0, Lu/g;->d:Z

    if-eqz v0, :cond_69

    const-string v0, " hasUncertainFromPoint:true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    const-string v0, " maxTripCount:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lu/g;->f:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu/g;->c:[Lu/b;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lu/g;->c:[Lu/b;

    array-length v3, v0

    :goto_7b
    if-ge v1, v3, :cond_8b

    aget-object v4, v0, v1

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    :cond_8b
    iget v0, p0, Lu/g;->e:I

    if-eqz v0, :cond_9a

    const-string v0, " previousAlternateExtraMeters:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lu/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_9a
    const-string v0, " ] ]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
