.class public LaM/A;
.super Ljava/lang/Object;

# interfaces
.implements LaM/w;
.implements LaM/y;
.implements LaM/z;
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field private a:Z

.field private final b:LaM/B;

.field private final c:LaM/d;

.field private final d:LaM/b;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Lcom/google/googlenav/ui/wizard/hM;

.field private h:Ljava/util/List;


# direct methods
.method public constructor <init>(LaM/B;Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SYNC_DATA_LOCAL"

    iput-object v0, p0, LaM/A;->e:Ljava/lang/String;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaM/A;->h:Ljava/util/List;

    iput-object p1, p0, LaM/A;->b:LaM/B;

    iput-object p2, p0, LaM/A;->g:Lcom/google/googlenav/ui/wizard/hM;

    new-instance v0, LaM/d;

    invoke-direct {v0}, LaM/d;-><init>()V

    iput-object v0, p0, LaM/A;->c:LaM/d;

    new-instance v0, LaM/b;

    invoke-direct {v0}, LaM/b;-><init>()V

    iput-object v0, p0, LaM/A;->d:LaM/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, LaM/A;->f:Z

    invoke-direct {p0}, LaM/A;->i()V

    return-void
.end method

.method private a(Lam/b;Ljava/util/List;)V
    .registers 8

    const/4 v4, 0x2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_25

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    invoke-virtual {v0, v4}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_20
    return-void

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_25
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method private declared-synchronized c(ILjava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaM/A;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/y;

    invoke-interface {v0, p1, p2}, LaM/y;->a_(ILjava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_17

    goto :goto_7

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1a
    monitor-exit p0

    return-void
.end method

.method private c(Lam/b;)V
    .registers 10

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lam/b;->d(I)I

    move-result v1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lam/g;->h(Lam/b;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0, v1}, LaM/d;->c(I)V

    invoke-direct {p0, v1}, LaM/A;->e(I)V

    :cond_1e
    invoke-virtual {p1, v7}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v2, :cond_42

    invoke-virtual {p1, v7, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-virtual {v3, v6}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_34

    iget-object v4, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v4, v1, v3}, LaM/d;->a(ILam/b;)Z

    :cond_34
    invoke-virtual {v3, v5}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v4, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v4, v1, v3}, LaM/b;->b(ILam/b;)Z

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_42
    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {p1, v6}, Lam/b;->e(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, LaM/b;->a(IJ)V

    goto :goto_e
.end method

.method private d(ILjava/lang/String;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Laf/m;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    const-string v2, "i"

    invoke-static {v1, v2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private d(Lam/b;)V
    .registers 4

    const/4 v1, 0x1

    if-eqz p1, :cond_f

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v1}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, LaM/A;->f:Z

    :cond_f
    return-void
.end method

.method private d(Z)V
    .registers 3

    iput-boolean p1, p0, LaM/A;->a:Z

    if-eqz p1, :cond_9

    const-string v0, "SYNC_DATA"

    :goto_6
    iput-object v0, p0, LaM/A;->e:Ljava/lang/String;

    return-void

    :cond_9
    const-string v0, "SYNC_DATA_LOCAL"

    goto :goto_6
.end method

.method private e(I)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, p1, v0}, LaM/A;->c(ILjava/lang/String;)V

    return-void
.end method

.method private e(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/A;->f:Z

    invoke-virtual {p0}, LaM/A;->d()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LaM/A;->d(Z)V

    if-eqz p1, :cond_19

    invoke-virtual {p0}, LaM/A;->d()V

    :goto_f
    invoke-direct {p0}, LaM/A;->j()V

    invoke-virtual {p0}, LaM/A;->b()V

    invoke-virtual {p0}, LaM/A;->c()V

    return-void

    :cond_19
    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0}, LaM/b;->b()V

    invoke-virtual {p0}, LaM/A;->e()V

    goto :goto_f
.end method

.method private i()V
    .registers 2

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0, p0}, LaM/d;->a(LaM/y;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaM/A;->d(Z)V

    return-void
.end method

.method private j()V
    .registers 3

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0}, LaM/d;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, LaM/A;->e(I)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method private k()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbC/j;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-boolean v2, p0, LaM/A;->f:Z

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    return-object v0
.end method


# virtual methods
.method public a(I)LaM/w;
    .registers 3

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0, p1}, LaM/d;->a(I)LaM/w;

    return-object p0
.end method

.method public a()Lam/b;
    .registers 2

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0}, LaM/b;->a()Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/lang/String;)Lam/b;
    .registers 5

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0, p1, p2}, LaM/b;->a(ILjava/lang/String;)Lam/b;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0, p1, p2}, LaM/d;->a(ILjava/lang/String;)Lam/b;

    move-result-object v0

    goto :goto_d
.end method

.method public declared-synchronized a(LaM/y;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaM/A;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lam/b;)V
    .registers 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-boolean v0, p0, LaM/A;->a:Z

    if-nez v0, :cond_13

    const-string v0, "MAPS"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "MyPlaces: updateStorage called with sync off"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {p1, v3}, Lam/b;->l(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v1, :cond_24

    invoke-virtual {p1, v3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    invoke-direct {p0, v2}, LaM/A;->c(Lam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_24
    invoke-virtual {p1, v4}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Lam/g;->c(Lam/b;II)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/login/g;->a(I)V

    goto :goto_12
.end method

.method a(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 2

    iput-object p1, p0, LaM/A;->g:Lcom/google/googlenav/ui/wizard/hM;

    return-void
.end method

.method public a(Z)V
    .registers 5

    const/4 v2, 0x1

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0, v2}, LaM/b;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, LaM/A;->d(ILjava/lang/String;)V

    invoke-direct {p0, v2}, LaM/A;->e(Z)V

    return-void
.end method

.method public a(ILam/b;)Z
    .registers 6

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iget-object v1, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v1, p1, v0}, LaM/b;->a(ILam/b;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LaM/A;->c(ILjava/lang/String;)V

    invoke-virtual {p0}, LaM/A;->c()V

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public a_(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, LaM/A;->c(ILjava/lang/String;)V

    return-void
.end method

.method public b(I)Ljava/util/List;
    .registers 6

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0, p1}, LaM/d;->b(I)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0, p1}, LaM/b;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/b;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-direct {p0, v0, v1}, LaM/A;->a(Lam/b;Ljava/util/List;)V

    goto :goto_10

    :cond_25
    return-object v1
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0}, LaM/d;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, LaM/A;->d(I)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0, p1, p2}, LaM/d;->b(ILjava/lang/String;)V

    return-void
.end method

.method public b(Lam/b;)V
    .registers 3

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0, p1}, LaM/b;->a(Lam/b;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    iget-object v0, p0, LaM/A;->d:LaM/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/b;->b(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "2"

    invoke-direct {p0, v0, v1}, LaM/A;->d(ILjava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaM/A;->e(Z)V

    return-void
.end method

.method public b(ILam/b;)Z
    .registers 4

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0, p1, p2}, LaM/d;->a(ILam/b;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .registers 3

    iget-boolean v0, p0, LaM/A;->a:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0}, LaM/b;->a()Lam/b;

    move-result-object v0

    iget-object v1, p0, LaM/A;->b:LaM/B;

    invoke-interface {v1, v0}, LaM/B;->a_(Lam/b;)V

    iget-object v1, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v1, v0}, LaM/b;->a(Lam/b;)V

    goto :goto_4
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0, p1}, LaM/d;->c(I)V

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0, p1}, LaM/b;->c(I)V

    return-void
.end method

.method public c(Z)V
    .registers 2

    return-void
.end method

.method public d()V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    :try_start_8
    new-instance v1, Lam/b;

    sget-object v2, LbC/j;->e:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x1

    invoke-direct {p0}, LaM/A;->k()Lam/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILam/b;)V

    const/4 v2, 0x2

    iget-object v3, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v3}, LaM/d;->c()Lam/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILam/b;)V

    const/4 v2, 0x3

    iget-object v3, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v3}, LaM/b;->d()Lam/b;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lam/b;->b(ILam/b;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v3, v1}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v2, p0, LaM/A;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_41} :catch_42
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_41} :catch_49

    :goto_41
    return-void

    :catch_42
    move-exception v0

    const-string v1, "MAPSError saving Sync prefs"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41

    :catch_49
    move-exception v0

    const-string v1, "MAPSOOME saving Sync prefs"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_41
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0, p1}, LaM/b;->a(I)V

    return-void
.end method

.method public e()V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    iget-object v1, p0, LaM/A;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_13

    array-length v1, v0

    if-nez v1, :cond_14

    :cond_13
    :goto_13
    return-void

    :cond_14
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_1e
    sget-object v0, LbC/j;->e:Lam/e;

    invoke-static {v0, v1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-direct {p0, v1}, LaM/A;->d(Lam/b;)V

    iget-object v1, p0, LaM/A;->c:LaM/d;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v2

    invoke-virtual {v1, v2}, LaM/d;->a(Lam/b;)V

    iget-object v1, p0, LaM/A;->d:LaM/b;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v1, v0}, LaM/b;->b(Lam/b;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_40} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_40} :catch_48

    goto :goto_13

    :catch_41
    move-exception v0

    const-string v1, "MAPSError loading Sync prefs"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13

    :catch_48
    move-exception v0

    const-string v1, "MAPSError loading Sync prefs"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13
.end method

.method public f()V
    .registers 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-boolean v0, p0, LaM/A;->a:Z

    if-nez v0, :cond_10

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->u()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-boolean v0, p0, LaM/A;->f:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0}, LaM/b;->c()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "1"

    invoke-direct {p0, v5, v0}, LaM/A;->d(ILjava/lang/String;)V

    iput-boolean v5, p0, LaM/A;->f:Z

    :cond_24
    iget-boolean v0, p0, LaM/A;->f:Z

    if-eqz v0, :cond_41

    iget-object v0, p0, LaM/A;->g:Lcom/google/googlenav/ui/wizard/hM;

    if-eqz v0, :cond_41

    iget-object v0, p0, LaM/A;->g:Lcom/google/googlenav/ui/wizard/hM;

    const/16 v1, 0x4af

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4ae

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v6, v3

    move-object v7, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/google/googlenav/ui/wizard/aX;)V

    goto :goto_10

    :cond_41
    iget-boolean v0, p0, LaM/A;->f:Z

    invoke-direct {p0, v0}, LaM/A;->e(Z)V

    goto :goto_10
.end method

.method public g()V
    .registers 2

    iget-boolean v0, p0, LaM/A;->a:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LaM/A;->b:LaM/B;

    invoke-interface {v0}, LaM/B;->f()V

    iget-object v0, p0, LaM/A;->c:LaM/d;

    invoke-virtual {v0}, LaM/d;->b()V

    iget-object v0, p0, LaM/A;->d:LaM/b;

    invoke-virtual {v0}, LaM/b;->b()V

    invoke-virtual {p0}, LaM/A;->d()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LaM/A;->d(Z)V

    invoke-virtual {p0}, LaM/A;->e()V

    invoke-direct {p0}, LaM/A;->j()V

    goto :goto_4
.end method

.method public h()Z
    .registers 2

    iget-boolean v0, p0, LaM/A;->a:Z

    return v0
.end method
