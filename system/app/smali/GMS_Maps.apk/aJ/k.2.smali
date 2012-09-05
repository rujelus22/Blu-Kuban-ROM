.class public LaJ/k;
.super Ljava/lang/Object;

# interfaces
.implements LaJ/o;
.implements Laf/j;
.implements Lar/m;


# instance fields
.field private final a:Ljava/util/Hashtable;

.field private final b:Ljava/util/Hashtable;

.field private volatile c:LaJ/l;

.field private final d:Ljava/util/Vector;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaJ/k;->b:Ljava/util/Hashtable;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, LaJ/k;->e:J

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaJ/k;->f:J

    return-void
.end method

.method static synthetic a(LaJ/k;)Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    return-object v0
.end method

.method private declared-synchronized a(LaJ/P;LaJ/n;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, LaJ/k;->c(LaJ/P;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_24

    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, LaJ/k;->c:LaJ/l;

    if-nez v0, :cond_19

    new-instance v0, LaJ/l;

    invoke-direct {v0, p0}, LaJ/l;-><init>(LaJ/k;)V

    iput-object v0, p0, LaJ/k;->c:LaJ/l;

    :cond_19
    iget-object v0, p0, LaJ/k;->c:LaJ/l;

    invoke-virtual {v0, p2}, LaJ/l;->a(LaJ/n;)V

    iget-object v0, p0, LaJ/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_24

    goto :goto_c

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(LaJ/k;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, LaJ/k;->b:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(LaJ/k;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    return-object v0
.end method

.method private c(LaJ/P;)Z
    .registers 5

    invoke-virtual {p1}, LaJ/P;->e()LaJ/Y;

    move-result-object v0

    invoke-virtual {v0}, LaJ/Y;->a()I

    move-result v2

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_11
    if-ltz v1, :cond_2b

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/m;

    invoke-interface {v0}, LaJ/m;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/layer/m;->b(I)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_11

    :cond_2b
    const/4 v0, 0x0

    goto :goto_26
.end method


# virtual methods
.method public declared-synchronized a(LaJ/P;)LaJ/n;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v0}, LaJ/k;->a(LaJ/P;Z)LaJ/n;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(LaJ/P;Z)LaJ/n;
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/n;

    iget-object v1, p0, LaJ/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaJ/n;

    if-eqz v0, :cond_4c

    iget-wide v2, p0, LaJ/k;->e:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4a

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v2

    invoke-virtual {v2}, Laf/b;->v()Laf/a;

    move-result-object v2

    invoke-interface {v2}, Laf/a;->c()J

    move-result-wide v2

    invoke-virtual {v0}, LaJ/n;->a()J

    move-result-wide v4

    sub-long v6, v2, v4

    if-eqz p2, :cond_4a

    if-nez v1, :cond_4a

    const-wide/high16 v8, -0x8000

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4a

    iget-wide v4, p0, LaJ/k;->e:J

    cmp-long v1, v6, v4

    if-lez v1, :cond_4a

    iget-wide v4, p0, LaJ/k;->f:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_47

    iget-object v1, p0, LaJ/k;->c:LaJ/l;

    if-eqz v1, :cond_4a

    :cond_47
    invoke-direct {p0, p1, v0}, LaJ/k;->a(LaJ/P;LaJ/n;)V
    :try_end_4a
    .catchall {:try_start_1 .. :try_end_4a} :catchall_5d

    :cond_4a
    :goto_4a
    monitor-exit p0

    return-object v0

    :cond_4c
    if-eqz v1, :cond_50

    move-object v0, v1

    goto :goto_4a

    :cond_50
    if-nez p2, :cond_54

    const/4 v0, 0x0

    goto :goto_4a

    :cond_54
    :try_start_54
    new-instance v0, LaJ/n;

    invoke-direct {v0, p1}, LaJ/n;-><init>(LaJ/P;)V

    invoke-direct {p0, p1, v0}, LaJ/k;->a(LaJ/P;LaJ/n;)V
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5d

    goto :goto_4a

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, LaJ/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public a(LaJ/m;)V
    .registers 8

    const-wide/16 v4, -0x1

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, LaJ/m;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->i()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_21

    iget-wide v2, p0, LaJ/k;->e:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1f

    iget-wide v2, p0, LaJ/k;->e:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_21

    :cond_1f
    iput-wide v0, p0, LaJ/k;->e:J

    :cond_21
    invoke-virtual {p0}, LaJ/k;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;[Lam/b;)V
    .registers 5

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/m;

    invoke-interface {v0, p1, p2}, LaJ/m;->a(Ljava/lang/String;[Lam/b;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    return-void
.end method

.method public a(Z)V
    .registers 2

    invoke-virtual {p0}, LaJ/k;->a()V

    return-void
.end method

.method public declared-synchronized b(LaJ/P;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/n;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, LaJ/n;->e()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, LaJ/n;->d()V

    iget-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(LaJ/m;)V
    .registers 10

    const-wide/16 v6, -0x1

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iput-wide v6, p0, LaJ/k;->e:J

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_12
    if-ltz v1, :cond_3a

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/m;

    invoke-interface {v0}, LaJ/m;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->i()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-eqz v0, :cond_36

    iget-wide v4, p0, LaJ/k;->e:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_34

    iget-wide v4, p0, LaJ/k;->e:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_36

    :cond_34
    iput-wide v2, p0, LaJ/k;->e:J

    :cond_36
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_12

    :cond_3a
    invoke-virtual {p0}, LaJ/k;->a()V

    return-void
.end method

.method public b()Z
    .registers 2

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public c()V
    .registers 3

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_1a

    iget-object v0, p0, LaJ/k;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/m;

    invoke-interface {v0}, LaJ/m;->c()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    return-void
.end method

.method public d()V
    .registers 1

    invoke-static {p0}, Laf/l;->c(Laf/j;)V

    return-void
.end method

.method public declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/k;->c:LaJ/l;

    if-eqz v0, :cond_22

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    iget-object v1, p0, LaJ/k;->c:LaJ/l;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/k;->c:LaJ/l;

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iget-wide v2, p0, LaJ/k;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, LaJ/k;->f:J
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v2

    iget-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/P;

    iget-object v1, p0, LaJ/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LaJ/n;

    invoke-virtual {v1}, LaJ/n;->b()J

    move-result-wide v5

    const-wide/16 v7, 0xfa0

    add-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-gez v1, :cond_13

    invoke-virtual {p0, v0}, LaJ/k;->b(LaJ/P;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_36

    goto :goto_13

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_39
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized g()Lar/k;
    .registers 4

    monitor-enter p0

    :try_start_1
    new-instance v1, Lar/k;

    const-string v0, "LayerService"

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lar/k;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, LaJ/k;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/n;

    invoke-virtual {v0}, LaJ/n;->g()Lar/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lar/k;->a(Lar/k;)Lar/k;

    move-result-object v1

    goto :goto_f

    :cond_24
    iget-object v0, p0, LaJ/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaJ/n;

    invoke-virtual {v0}, LaJ/n;->g()Lar/k;

    move-result-object v0

    invoke-virtual {v1, v0}, Lar/k;->a(Lar/k;)Lar/k;
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_42

    move-result-object v0

    move-object v1, v0

    goto :goto_2a

    :cond_40
    monitor-exit p0

    return-object v1

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/k;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_e

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
