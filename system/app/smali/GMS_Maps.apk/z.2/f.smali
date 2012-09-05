.class public Lz/f;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/location/Location;)LaJ/B;
    .registers 7

    const-wide v4, 0x412e848000000000L

    new-instance v0, LaJ/B;

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    return-object v0
.end method

.method public static a(Lt/au;)Lam/b;
    .registers 14

    const-wide v11, 0x412e848000000000L

    const-wide v9, 0x404ca5dc1a63c1f8L

    const-wide v7, 0x3e3921fb54442d18L

    invoke-virtual {p0}, Lt/au;->b()Lt/L;

    move-result-object v0

    invoke-virtual {p0}, Lt/au;->e()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Lt/L;->b()D

    move-result-wide v3

    const-wide v5, 0x3f91df46a2529d39L

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    mul-double/2addr v1, v7

    mul-double/2addr v1, v9

    mul-double/2addr v1, v11

    double-to-int v1, v1

    invoke-virtual {p0}, Lt/au;->d()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v7

    mul-double/2addr v2, v9

    mul-double/2addr v2, v11

    double-to-int v2, v2

    new-instance v3, Lam/b;

    sget-object v4, LbD/cO;->g:Lam/e;

    invoke-direct {v3, v4}, Lam/b;-><init>(Lam/e;)V

    const/4 v4, 0x1

    invoke-static {v0}, Lz/f;->a(Lt/L;)Lt/o;

    move-result-object v0

    invoke-static {v0}, Lz/f;->b(Lt/o;)Lam/b;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lam/b;->b(ILam/b;)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Lam/b;->h(II)V

    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Lam/b;->h(II)V

    return-object v3
.end method

.method public static a(Lt/o;)Lam/b;
    .registers 5

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {p0}, Lt/o;->a()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lt/o;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    new-instance v1, Lam/b;

    sget-object v2, LbD/cO;->d:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v2}, Lam/b;->h(II)V

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lam/b;->b(ILam/b;)V

    return-object v1
.end method

.method public static a(LaJ/B;)Lt/L;
    .registers 3

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v1

    invoke-static {v0, v1}, Lt/L;->b(II)Lt/L;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lam/b;)Lt/o;
    .registers 6

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_6

    :cond_5
    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0, v3}, Lam/b;->d(I)I

    move-result v1

    if-ne v1, v3, :cond_20

    invoke-virtual {p0, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {v1, v4}, Lam/b;->d(I)I

    move-result v1

    new-instance v0, Lt/o;

    invoke-direct {v0, v2, v1}, Lt/o;-><init>(II)V

    goto :goto_5

    :cond_20
    const/4 v2, 0x5

    if-ne v1, v2, :cond_39

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v3}, Lam/b;->d(I)I

    move-result v2

    invoke-virtual {v1, v4}, Lam/b;->d(I)I

    move-result v1

    new-instance v0, Lt/o;

    invoke-direct {v0, v2, v1}, Lt/o;-><init>(II)V

    goto :goto_5

    :cond_39
    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lz/f;->b(Lam/b;)Lt/L;

    move-result-object v0

    invoke-static {v0}, Lz/f;->a(Lt/L;)Lt/o;

    move-result-object v0

    goto :goto_5
.end method

.method public static a(Lt/L;)Lt/o;
    .registers 4

    new-instance v0, Lt/o;

    invoke-virtual {p0}, Lt/L;->a()I

    move-result v1

    invoke-virtual {p0}, Lt/L;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lt/o;-><init>(II)V

    return-object v0
.end method

.method public static a(LaJ/B;Lt/L;)V
    .registers 4

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v0

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lt/L;->e(II)V

    return-void
.end method

.method public static b(Lt/L;)LaJ/B;
    .registers 4

    new-instance v0, LaJ/B;

    invoke-virtual {p0}, Lt/L;->a()I

    move-result v1

    invoke-virtual {p0}, Lt/L;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, LaJ/B;-><init>(II)V

    return-object v0
.end method

.method public static b(Lt/o;)Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->a:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    invoke-virtual {p0}, Lt/o;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lt/o;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    return-object v0
.end method

.method public static b(Lam/b;)Lt/L;
    .registers 6

    const/high16 v4, 0x2000

    const/4 v3, 0x1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v0

    invoke-virtual {p0, v3}, Lam/b;->d(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lam/b;->d(I)I

    move-result v2

    rsub-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, -0x7

    shl-int v0, v3, v0

    mul-int/2addr v1, v0

    sub-int/2addr v1, v4

    mul-int/2addr v0, v2

    sub-int v0, v4, v0

    new-instance v2, Lt/L;

    invoke-direct {v2, v1, v0}, Lt/L;-><init>(II)V

    return-object v2
.end method
