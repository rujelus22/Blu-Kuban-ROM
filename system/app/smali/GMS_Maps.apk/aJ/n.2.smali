.class public LaJ/n;
.super Ljava/lang/Object;

# interfaces
.implements Lar/m;


# instance fields
.field private final a:LaJ/P;

.field private final b:Ljava/util/Hashtable;

.field private c:Lah/f;

.field private d:J

.field private e:J

.field private f:Z


# direct methods
.method public constructor <init>(LaJ/P;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaJ/n;->e:J

    iput-object p1, p0, LaJ/n;->a:LaJ/P;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, LaJ/n;->b:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/n;->f:Z

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-virtual {p0}, LaJ/n;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    :goto_12
    return-wide v0

    :cond_13
    iget-wide v0, p0, LaJ/n;->e:J

    goto :goto_12
.end method

.method public a(Ljava/lang/String;J)Ljava/util/Hashtable;
    .registers 6

    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_1d

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/n;->d:J

    :goto_14
    iget-object v0, p0, LaJ/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    return-object v0

    :cond_1d
    iput-wide p2, p0, LaJ/n;->d:J

    goto :goto_14
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, LaJ/n;->d:J

    return-void
.end method

.method public declared-synchronized a([BJ)V
    .registers 7

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_1f

    :try_start_7
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/n;->d:J

    :goto_15
    if-eqz p1, :cond_1a

    array-length v0, p1

    if-nez v0, :cond_25

    :cond_1a
    const/4 v0, 0x0

    iput-object v0, p0, LaJ/n;->c:Lah/f;
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_22

    :goto_1d
    monitor-exit p0

    return-void

    :cond_1f
    :try_start_1f
    iput-wide p2, p0, LaJ/n;->d:J
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_22

    goto :goto_15

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_25
    :try_start_25
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->o()Lah/h;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v0, p1, v1, v2}, Lah/h;->a([BII)Lah/f;

    move-result-object v0

    iput-object v0, p0, LaJ/n;->c:Lah/f;
    :try_end_35
    .catchall {:try_start_25 .. :try_end_35} :catchall_22

    goto :goto_1d
.end method

.method public a([Lcom/google/googlenav/layer/j;J)V
    .registers 5

    iget-object v0, p0, LaJ/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-nez p1, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/n;->f:Z

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0, p1, p2, p3}, LaJ/n;->b([Lcom/google/googlenav/layer/j;J)V

    goto :goto_a
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, LaJ/n;->d:J

    return-wide v0
.end method

.method public declared-synchronized b(J)Lah/f;
    .registers 5

    monitor-enter p0

    const-wide/high16 v0, -0x8000

    cmp-long v0, p1, v0

    if-nez v0, :cond_19

    :try_start_7
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/n;->d:J

    :goto_15
    iget-object v0, p0, LaJ/n;->c:Lah/f;
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1c

    monitor-exit p0

    return-object v0

    :cond_19
    :try_start_19
    iput-wide p1, p0, LaJ/n;->d:J
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1c

    goto :goto_15

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b([Lcom/google/googlenav/layer/j;J)V
    .registers 13

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const-wide/high16 v0, -0x8000

    cmp-long v0, p2, v0

    if-nez v0, :cond_67

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/n;->d:J

    :goto_17
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1b
    if-ltz v3, :cond_79

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/google/googlenav/layer/j;->g()[Lcom/google/googlenav/layer/o;

    move-result-object v5

    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_27
    if-ltz v2, :cond_75

    aget-object v6, v5, v2

    iget-object v0, p0, LaJ/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/google/googlenav/layer/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    const/4 v1, 0x0

    if-nez v0, :cond_6a

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v7, p0, LaJ/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v6}, Lcom/google/googlenav/layer/o;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_48
    if-nez v1, :cond_63

    new-instance v1, Lcom/google/googlenav/T;

    invoke-direct {v1, v6, v4}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/o;Lcom/google/googlenav/layer/j;)V

    iget-object v7, p0, LaJ/n;->a:LaJ/P;

    invoke-virtual {v7}, LaJ/P;->e()LaJ/Y;

    move-result-object v7

    invoke-virtual {v7}, LaJ/Y;->a()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/googlenav/T;->f(I)V

    invoke-virtual {v6}, Lcom/google/googlenav/layer/o;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_27

    :cond_67
    iput-wide p2, p0, LaJ/n;->d:J

    goto :goto_17

    :cond_6a
    invoke-virtual {v6}, Lcom/google/googlenav/layer/o;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/T;

    goto :goto_48

    :cond_75
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1b

    :cond_79
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->v()Laf/a;

    move-result-object v0

    invoke-interface {v0}, Laf/a;->c()J

    move-result-wide v0

    iput-wide v0, p0, LaJ/n;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, LaJ/n;->f:Z

    goto/16 :goto_2
.end method

.method public c()LaJ/P;
    .registers 2

    iget-object v0, p0, LaJ/n;->a:LaJ/P;

    return-object v0
.end method

.method public declared-synchronized d()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LaJ/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, LaJ/n;->c:Lah/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, LaJ/n;->f:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, LaJ/n;->f:Z

    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, LaJ/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized g()Lar/k;
    .registers 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, LaJ/n;->c:Lah/f;

    if-eqz v0, :cond_1a

    new-instance v0, Lar/k;

    const-string v3, "image"

    iget-object v4, p0, LaJ/n;->c:Lah/f;

    invoke-interface {v4}, Lah/f;->g()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    iget-object v0, p0, LaJ/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/T;

    invoke-virtual {v0}, Lcom/google/googlenav/T;->g()Lar/k;

    move-result-object v0

    iget v0, v0, Lar/k;->b:I

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_30

    :cond_45
    new-instance v0, Lar/k;

    const-string v3, "cache"

    invoke-direct {v0, v3, v1}, Lar/k;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    new-instance v1, Lar/k;

    const-string v3, "LayerTile"

    invoke-direct {v1, v3, v0, v2}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_59

    monitor-exit p0

    return-object v1

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h()Z
    .registers 2

    iget-object v0, p0, LaJ/n;->c:Lah/f;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
