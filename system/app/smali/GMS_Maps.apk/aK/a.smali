.class public LaK/a;
.super LaJ/p;


# instance fields
.field private final c:Lcom/google/android/maps/driveabout/vector/cV;

.field private d:Lcom/google/android/maps/driveabout/vector/dh;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:[LaJ/P;

.field private h:B

.field private i:Lcom/google/android/maps/driveabout/vector/cI;

.field private j:Lcom/google/android/maps/driveabout/vector/cI;

.field private k:Z

.field private l:Lr/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILaJ/B;LaJ/Y;I)V
    .registers 15

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, LaJ/p;-><init>(IIILaJ/B;LaJ/Y;I)V

    const/4 v0, 0x0

    iput-object v0, p0, LaK/a;->f:Landroid/widget/TextView;

    new-instance v0, LaK/b;

    invoke-direct {v0, p0, p1}, LaK/b;-><init>(LaK/a;Landroid/content/Context;)V

    iput-object v0, p0, LaK/a;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-static {}, Lr/l;->a()Lr/l;

    move-result-object v0

    iput-object v0, p0, LaK/a;->l:Lr/l;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/dl;

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dl;-><init>(Lat/h;)V

    new-instance v1, LaK/c;

    invoke-direct {v1, p0}, LaK/c;-><init>(LaK/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dl;->a(Lcom/google/android/maps/driveabout/vector/dm;)V

    new-instance v1, LaK/d;

    invoke-direct {v1, p0}, LaK/d;-><init>(LaK/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/dl;->a(Lcom/google/android/maps/driveabout/vector/dn;)V

    iget-object v1, p0, LaK/a;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Lcom/google/android/maps/driveabout/vector/dl;)V

    const/4 v0, 0x0

    new-array v0, v0, [LaJ/P;

    iput-object v0, p0, LaK/a;->g:[LaJ/P;

    return-void
.end method

.method static synthetic a(LaK/a;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, LaK/a;->d(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LaK/a;)Lr/l;
    .registers 2

    iget-object v0, p0, LaK/a;->l:Lr/l;

    return-object v0
.end method

.method private d(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private x()V
    .registers 3

    iget-object v0, p0, LaK/a;->j:Lcom/google/android/maps/driveabout/vector/cI;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, LaK/a;->k:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, LaK/a;->w()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    iget-object v1, p0, LaK/a;->j:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dh;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaK/a;->k:Z

    goto :goto_4

    :cond_1a
    iget-boolean v0, p0, LaK/a;->k:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, LaK/a;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    iget-object v1, p0, LaK/a;->j:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dh;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LaK/a;->k:Z

    goto :goto_4
.end method

.method private y()V
    .registers 5

    iget-object v0, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, LaK/a;->k()B

    move-result v0

    iget-byte v1, p0, LaK/a;->h:B

    if-ne v0, v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-virtual {p0}, LaK/a;->k()B

    move-result v0

    iput-byte v0, p0, LaK/a;->h:B

    invoke-virtual {p0}, LaK/a;->b()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->e()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, LaJ/H;->g()Z

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->i:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->e:Lcom/google/android/maps/driveabout/vector/I;

    :goto_27
    iget-object v2, p0, LaK/a;->i:Lcom/google/android/maps/driveabout/vector/cI;

    if-eqz v2, :cond_32

    iget-object v2, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    iget-object v3, p0, LaK/a;->i:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-interface {v2, v3}, Lcom/google/android/maps/driveabout/vector/dh;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_32
    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    if-eq v0, v2, :cond_93

    sget-object v2, Lcom/google/android/maps/driveabout/vector/I;->e:Lcom/google/android/maps/driveabout/vector/I;

    if-ne v1, v2, :cond_82

    iget-object v2, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/dh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/cI;->c(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    iput-object v0, p0, LaK/a;->i:Lcom/google/android/maps/driveabout/vector/cI;

    :goto_4a
    iget-object v0, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    iget-object v2, p0, LaK/a;->i:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/vector/dh;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :goto_51
    iget-object v0, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dh;->a(Lcom/google/android/maps/driveabout/vector/I;)V

    goto :goto_c

    :cond_57
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    goto :goto_27

    :cond_5c
    invoke-virtual {v0}, LaJ/H;->f()Z

    move-result v1

    if-eqz v1, :cond_72

    invoke-virtual {v0}, LaJ/H;->g()Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->h:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->e:Lcom/google/android/maps/driveabout/vector/I;

    goto :goto_27

    :cond_6d
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->c:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->d:Lcom/google/android/maps/driveabout/vector/I;

    goto :goto_27

    :cond_72
    invoke-virtual {v0}, LaJ/H;->g()Z

    move-result v0

    if-eqz v0, :cond_7d

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->g:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->e:Lcom/google/android/maps/driveabout/vector/I;

    goto :goto_27

    :cond_7d
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    goto :goto_27

    :cond_82
    iget-object v2, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    invoke-interface {v2}, Lcom/google/android/maps/driveabout/vector/dh;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/vector/cI;->b(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    iput-object v0, p0, LaK/a;->i:Lcom/google/android/maps/driveabout/vector/cI;

    goto :goto_4a

    :cond_93
    const/4 v0, 0x0

    iput-object v0, p0, LaK/a;->i:Lcom/google/android/maps/driveabout/vector/cI;

    goto :goto_51
.end method


# virtual methods
.method public a(LaJ/B;II)LaJ/B;
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getMapPoint should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized a(LaJ/H;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_5

    :goto_3
    monitor-exit p0

    return-void

    :cond_5
    :try_start_5
    iput-object p1, p0, LaK/a;->b:LaJ/H;

    invoke-direct {p0}, LaK/a;->y()V

    invoke-direct {p0}, LaK/a;->x()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_3

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaJ/Y;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setZoom should be called on the MapController, not map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bx;)V
    .registers 3

    iput-object p1, p0, LaK/a;->j:Lcom/google/android/maps/driveabout/vector/cI;

    const/4 v0, 0x0

    iput-boolean v0, p0, LaK/a;->k:Z

    invoke-direct {p0}, LaK/a;->x()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dh;)V
    .registers 4

    iput-object p1, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    if-eqz p1, :cond_16

    iget-object v0, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    iget-object v1, p0, LaK/a;->c:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/dh;->a(Lcom/google/android/maps/driveabout/vector/cV;)V

    invoke-virtual {p0}, LaK/a;->b()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->c()I

    move-result v0

    invoke-virtual {p0, v0}, LaK/a;->b(I)V

    :cond_16
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 8

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [LaJ/P;

    iput-object v0, p0, LaK/a;->g:[LaJ/P;

    const/4 v0, 0x0

    invoke-virtual {p0}, LaK/a;->k()B

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/af;

    invoke-virtual {v0}, Lt/af;->b()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v4

    if-eqz v4, :cond_86

    invoke-virtual {v0}, Lt/af;->c()I

    move-result v5

    invoke-virtual {v0}, Lt/af;->d()I

    move-result v0

    invoke-static {v2, v5, v0, v4}, LaJ/P;->a(BIILaJ/Y;)LaJ/P;

    move-result-object v4

    iget-object v5, p0, LaK/a;->g:[LaJ/P;

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v5, v1

    :goto_3f
    move v1, v0

    goto :goto_15

    :cond_41
    iget-object v0, p0, LaK/a;->a:LaJ/D;

    invoke-virtual {v0}, LaJ/D;->l()V

    iget-object v0, p0, LaK/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_79

    iget-object v0, p0, LaK/a;->b:LaJ/H;

    invoke-virtual {v0}, LaJ/H;->c()I

    move-result v0

    if-nez v0, :cond_79

    invoke-static {}, Lcom/google/googlenav/prefetch/android/a;->d()Lcom/google/googlenav/prefetch/android/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LaK/a;->g()[LaJ/P;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/prefetch/android/a;->a([LaJ/P;)I

    move-result v0

    iget-object v1, p0, LaK/a;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "% prefetched"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_79
    iget-object v0, p0, LaK/a;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, LaK/a;->f:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_86
    move v0, v1

    goto :goto_3f
.end method

.method public a(LaJ/B;Z)Z
    .registers 5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "canCover should not be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LaJ/B;ZLaJ/Y;)Z
    .registers 6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "canCover should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LaJ/P;)Z
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p0, LaK/a;->g:[LaJ/P;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_c

    aget-object v4, v2, v1

    if-ne p1, v4, :cond_d

    const/4 v0, 0x1

    :cond_c
    return v0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method

.method public a(Lah/e;ZZZZ)Z
    .registers 8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "drawMap should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized b(LaJ/B;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setCenterPoint should be called on the MapController, not map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(LaJ/B;)V
    .registers 2

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public g()[LaJ/P;
    .registers 2

    iget-object v0, p0, LaK/a;->g:[LaJ/P;

    return-object v0
.end method

.method public t()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public u()Lcom/google/android/maps/driveabout/vector/cV;
    .registers 2

    iget-object v0, p0, LaK/a;->c:Lcom/google/android/maps/driveabout/vector/cV;

    return-object v0
.end method

.method public v()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaK/a;->d:Lcom/google/android/maps/driveabout/vector/dh;

    invoke-virtual {p0, v0}, LaK/a;->a(Lt/x;)V

    iput-object v0, p0, LaK/a;->e:Landroid/widget/TextView;

    iput-object v0, p0, LaK/a;->i:Lcom/google/android/maps/driveabout/vector/cI;

    iput-object v0, p0, LaK/a;->j:Lcom/google/android/maps/driveabout/vector/cI;

    const/4 v0, 0x0

    iput-byte v0, p0, LaK/a;->h:B

    return-void
.end method

.method public w()Z
    .registers 3

    invoke-virtual {p0}, LaK/a;->b()LaJ/H;

    move-result-object v0

    invoke-virtual {v0}, LaJ/H;->d()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, LaJ/H;->g()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
