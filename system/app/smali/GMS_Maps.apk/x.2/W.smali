.class public Lx/W;
.super Lx/k;


# direct methods
.method public constructor <init>(Lat/h;ILjava/util/Locale;Ljava/io/File;)V
    .registers 15

    const-string v2, "lts"

    new-instance v3, Lx/N;

    const/16 v0, 0x100

    invoke-direct {v3, v0}, Lx/N;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lx/k;-><init>(Lat/h;Ljava/lang/String;Lx/av;Lx/x;IZILjava/util/Locale;Ljava/io/File;)V

    return-void
.end method

.method private static a(Lam/b;I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method static a(Lam/b;Lt/Z;Lt/af;)Lt/l;
    .registers 15

    const/4 v8, 0x7

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lam/b;->d(I)I

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {p0, v5}, Lam/b;->l(I)I

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {p0, v4}, Lam/b;->l(I)I

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {p0, v5, v10}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_18

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-static {v2}, Lz/f;->b(Lam/b;)Lt/L;

    move-result-object v2

    invoke-virtual {p2}, Lt/af;->i()Lt/V;

    move-result-object v3

    invoke-virtual {v3, v2}, Lt/V;->a(Lt/L;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v4, v10}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-virtual {v0, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5}, Lx/W;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lx/W;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lx/W;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v8}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_7c

    invoke-virtual {v0, v8}, Lam/b;->d(I)I

    move-result v0

    div-int/lit8 v9, v0, 0xa

    :goto_5c
    const-string v4, ""

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_72

    const/16 v0, 0x22

    invoke-virtual {v1, v0}, Lam/b;->d(I)I

    move-result v0

    if-ltz v0, :cond_72

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_72
    new-array v11, v10, [I

    new-instance v0, Lt/M;

    move-object v1, p2

    move-object v8, p1

    invoke-direct/range {v0 .. v11}, Lt/M;-><init>(Lt/af;Lt/L;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lt/Z;II[I)V

    goto :goto_18

    :cond_7c
    move v9, v10

    goto :goto_5c
.end method


# virtual methods
.method public a(Lt/af;Z)Lt/ae;
    .registers 5

    instance-of v0, p1, Lx/Y;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-super {p0, p1, p2}, Lx/k;->a(Lt/af;Z)Lt/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(Lt/af;Lx/aw;)V
    .registers 5

    instance-of v0, p1, Lx/Y;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "DashServerLayerTileStore only supports LayerCoords"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-super {p0, p1, p2}, Lx/k;->a(Lt/af;Lx/aw;)V

    return-void
.end method

.method public d()Lcom/google/android/maps/driveabout/vector/cU;
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->e:Lcom/google/android/maps/driveabout/vector/cU;

    return-object v0
.end method

.method protected n()Lx/o;
    .registers 3

    new-instance v0, Lx/X;

    iget-object v1, p0, Lx/W;->d:Laf/a;

    invoke-direct {v0, v1}, Lx/X;-><init>(Laf/a;)V

    return-object v0
.end method
