.class public Lax/bx;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lax/aT;


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lax/aT;

    const-string v1, "location_history"

    const/16 v2, 0x1e

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lax/aT;-><init>(Ljava/lang/String;IJ)V

    iput-object v0, p0, Lax/bx;->a:Lax/aT;

    return-void
.end method

.method private a(Ljava/util/Vector;II)Ljava/util/Vector;
    .registers 11

    const/4 v6, 0x6

    new-instance v2, Ljava/util/Vector;

    sub-int v0, p3, p2

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    :goto_8
    if-ge p2, p3, :cond_2c

    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-virtual {v0, v6}, Lam/b;->l(I)I

    move-result v3

    if-nez v3, :cond_19

    :cond_16
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v3, :cond_16

    invoke-virtual {v0, v6, v1}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2c
    return-object v2
.end method

.method private a(Lam/b;Lam/b;)Z
    .registers 4

    iget-object v0, p0, Lax/bx;->a:Lax/aT;

    invoke-virtual {v0, p1, p2}, Lax/aT;->b(Lam/b;Lam/b;)Z

    move-result v0

    return v0
.end method

.method private b(Lam/b;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lam/b;->d(I)I

    move-result v2

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private d(I)J
    .registers 4

    const/4 v0, 0x2

    if-ne v0, p1, :cond_8

    invoke-virtual {p0}, Lax/bx;->c()J

    move-result-wide v0

    :goto_7
    return-wide v0

    :cond_8
    const/4 v0, 0x1

    if-ne v0, p1, :cond_10

    invoke-virtual {p0}, Lax/bx;->b()J

    move-result-wide v0

    goto :goto_7

    :cond_10
    invoke-virtual {p0}, Lax/bx;->a()J

    move-result-wide v0

    goto :goto_7
.end method

.method private e(I)J
    .registers 4

    const-wide/32 v0, 0x493e0

    return-wide v0
.end method


# virtual methods
.method a()J
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lax/bx;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method a(Lam/b;I)Ljava/util/Vector;
    .registers 8

    const/4 v0, 0x1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_2d

    const/4 v0, 0x1

    :try_start_f
    invoke-virtual {p1, v0, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lam/b;->d(I)I

    move-result v4

    if-ne v4, p2, :cond_1d

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_1d} :catch_21

    :cond_1d
    :goto_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    :catch_21
    move-exception v0

    const-string v4, "Filter location failed"

    invoke-static {v4, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lax/bx;->a:Lax/aT;

    invoke-virtual {v0}, Lax/aT;->d()V

    goto :goto_1d

    :cond_2d
    return-object v2
.end method

.method a(Ljava/util/Vector;J)Ljava/util/Vector;
    .registers 13

    const/4 v2, 0x0

    const/4 v8, 0x5

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->b()J

    move-result-wide v3

    sub-long v4, v3, p2

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move-object v0, v2

    :goto_1d
    if-ltz v3, :cond_31

    invoke-virtual {p1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v0, v8}, Lam/b;->e(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_3d

    :cond_31
    if-eqz v0, :cond_40

    invoke-virtual {v0, v8}, Lam/b;->e(I)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-gtz v0, :cond_40

    move-object v0, v1

    :goto_3c
    return-object v0

    :cond_3d
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    :cond_40
    move-object v0, v2

    goto :goto_3c
.end method

.method public a(Lam/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lax/bx;->b(Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lax/bx;->a:Lax/aT;

    invoke-virtual {v0, p1}, Lax/aT;->a(Lam/b;)V

    goto :goto_6
.end method

.method public a(I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lax/bx;->e()Lam/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lam/b;->l(I)I

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    :goto_c
    return v2

    :cond_d
    invoke-virtual {p0, v0, p1}, Lax/bx;->a(Lam/b;I)Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, p1}, Lax/bx;->d(I)J

    move-result-wide v3

    invoke-virtual {p0, v0, v3, v4}, Lax/bx;->a(Ljava/util/Vector;J)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {p0, p1}, Lax/bx;->b(I)I

    move-result v0

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v4, v0, :cond_2b

    :cond_25
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    goto :goto_c

    :cond_2b
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    if-ne p1, v1, :cond_44

    invoke-virtual {p0, v3}, Lax/bx;->a(Ljava/util/Vector;)Z

    move-result v0

    if-nez v0, :cond_42

    move v0, v1

    :goto_40
    move v2, v0

    goto :goto_c

    :cond_42
    move v0, v2

    goto :goto_40

    :cond_44
    invoke-virtual {p0, v0, v3}, Lax/bx;->a(Lam/b;Ljava/util/Vector;)Z

    move-result v0

    if-nez v0, :cond_4c

    :goto_4a
    move v0, v1

    goto :goto_40

    :cond_4c
    move v1, v2

    goto :goto_4a
.end method

.method a(Lam/b;Ljava/util/Vector;)Z
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-direct {p0, p1, v0}, Lax/bx;->a(Lam/b;Lam/b;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    :cond_15
    return v2

    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method a(Ljava/util/Vector;)Z
    .registers 11

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, p1, v1, v0}, Lax/bx;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lax/bx;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v6

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_17
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v0, v7, :cond_2d

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    const-wide/high16 v7, 0x3ff0

    add-double/2addr v2, v7

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2d
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lax/bx;->a(Ljava/util/Vector;II)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v2, v5

    invoke-virtual {p0, v4}, Lax/bx;->c(I)D

    move-result-wide v5

    cmpg-double v0, v2, v5

    if-gez v0, :cond_44

    move v1, v4

    :cond_44
    return v1
.end method

.method b(I)I
    .registers 3

    const/4 v0, 0x4

    return v0
.end method

.method b()J
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lax/bx;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method c(I)D
    .registers 4

    const-wide v0, 0x3fe3333333333333L

    return-wide v0
.end method

.method c()J
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lax/bx;->e(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lax/bx;->a:Lax/aT;

    invoke-virtual {v0}, Lax/aT;->c()V

    return-void
.end method

.method e()Lam/b;
    .registers 2

    iget-object v0, p0, Lax/bx;->a:Lax/aT;

    invoke-virtual {v0}, Lax/aT;->a()Lam/b;

    move-result-object v0

    return-object v0
.end method
