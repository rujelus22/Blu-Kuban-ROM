.class public Lcom/google/googlenav/layer/f;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private final d:Ljava/util/Map;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/lang/Object;

.field private g:Lcom/google/googlenav/ui/x;

.field private h:Z

.field private i:Z

.field private j:Lam/b;

.field private k:Lcom/google/googlenav/layer/l;


# direct methods
.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/googlenav/layer/f;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/layer/f;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    new-instance v0, Lcom/google/googlenav/ui/x;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/x;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/x;

    iput-boolean v2, p0, Lcom/google/googlenav/layer/f;->h:Z

    iput-boolean v2, p0, Lcom/google/googlenav/layer/f;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/layer/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/layer/f;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/layer/f;
    .registers 1

    sget-object v0, Lcom/google/googlenav/layer/h;->a:Lcom/google/googlenav/layer/f;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 4

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/google/googlenav/layer/f;->h:Z

    if-eqz v1, :cond_9

    if-eq p1, v0, :cond_9

    add-int/lit16 v0, p1, 0x3e8

    :cond_9
    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/layer/i;
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public a(Lam/b;)V
    .registers 12

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lam/g;->e(Lam/b;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/f;->a:I

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "__LAYERS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/16 v0, 0xc

    invoke-static {p1, v0}, Lam/g;->f(Lam/b;I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/googlenav/layer/f;->c:J

    :goto_20
    iget-object v3, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_23
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Lcom/google/googlenav/layer/i;->c()[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    :goto_34
    if-ltz v0, :cond_48

    iget-object v5, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    aget-object v6, v4, v0

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_23 .. :try_end_3d} :catchall_d2

    add-int/lit8 v0, v0, -0x1

    goto :goto_34

    :cond_40
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->b:Ljava/lang/String;

    goto :goto_20

    :cond_48
    :try_start_48
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v2

    move v0, v1

    :goto_53
    if-ge v0, v2, :cond_6b

    new-instance v4, Lcom/google/googlenav/layer/i;

    const/4 v5, 0x5

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/googlenav/layer/i;-><init>(Lam/b;)V

    iget-object v5, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/google/googlenav/layer/i;->b()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_6b
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v4

    move v2, v1

    :goto_71
    if-ge v2, v4, :cond_b1

    new-instance v5, Lcom/google/googlenav/layer/e;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/googlenav/layer/e;-><init>(Lam/b;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_87
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v7

    if-eqz v7, :cond_87

    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;Lcom/google/googlenav/layer/e;)V

    iget-object v6, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    invoke-virtual {v5}, Lcom/google/googlenav/layer/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ad
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_71

    :cond_b1
    monitor-exit v3
    :try_end_b2
    .catchall {:try_start_48 .. :try_end_b2} :catchall_d2

    invoke-virtual {p1, v8}, Lam/b;->l(I)I

    move-result v2

    move v0, v1

    :goto_b7
    if-ge v0, v2, :cond_d5

    new-instance v3, Lcom/google/googlenav/layer/m;

    invoke-virtual {p1, v8, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/layer/m;-><init>(Lam/b;)V

    invoke-virtual {v3}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v4

    if-eqz v4, :cond_cf

    invoke-virtual {v4, v3}, Lcom/google/googlenav/layer/e;->a(Lcom/google/googlenav/layer/m;)V

    :cond_cf
    add-int/lit8 v0, v0, 0x1

    goto :goto_b7

    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit v3
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0

    :cond_d5
    invoke-virtual {p1, v9}, Lam/b;->l(I)I

    move-result v2

    move v0, v1

    :goto_da
    if-ge v0, v2, :cond_110

    invoke-virtual {p1, v9, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3}, Lam/b;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/x;

    const/16 v5, 0xa

    invoke-virtual {v1, v5}, Lam/b;->c(I)[B

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/googlenav/ui/x;->a([BJ)Lcom/google/googlenav/ui/z;

    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Lam/b;->k(I)Z

    move-result v4

    if-eqz v4, :cond_10d

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/googlenav/layer/f;->h:Z

    iget-object v4, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/x;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Lam/b;->c(I)[B

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/google/googlenav/layer/f;->a(I)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4, v1, v5, v6}, Lcom/google/googlenav/ui/x;->a([BJ)Lcom/google/googlenav/ui/z;

    :cond_10d
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    :cond_110
    return-void
.end method

.method public a(Lam/b;Lcom/google/googlenav/layer/l;)V
    .registers 5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/layer/f;->i:Z

    if-eqz v0, :cond_a

    iput-object p1, p0, Lcom/google/googlenav/layer/f;->j:Lam/b;

    iput-object p2, p0, Lcom/google/googlenav/layer/f;->k:Lcom/google/googlenav/layer/l;

    :cond_9
    :goto_9
    :pswitch_9
    return-void

    :cond_a
    iput-object v1, p0, Lcom/google/googlenav/layer/f;->j:Lam/b;

    iput-object v1, p0, Lcom/google/googlenav/layer/f;->k:Lcom/google/googlenav/layer/l;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    goto :goto_9

    :pswitch_17
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/f;->a(Lam/b;)V

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lcom/google/googlenav/layer/l;->a()V

    goto :goto_9

    :pswitch_24
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/f;->l()V

    goto :goto_9

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_17
        :pswitch_9
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/google/googlenav/layer/f;->i:Z

    if-nez p1, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/layer/f;->j:Lam/b;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/googlenav/layer/f;->j:Lam/b;

    iget-object v1, p0, Lcom/google/googlenav/layer/f;->k:Lcom/google/googlenav/layer/l;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/layer/f;->a(Lam/b;Lcom/google/googlenav/layer/l;)V

    :cond_f
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    monitor-exit v1

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    monitor-exit v1

    goto :goto_f

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public b()Ljava/util/List;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :catchall_26
    move-exception v0

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_26

    return-object v1
.end method

.method public c()Lcom/google/googlenav/layer/m;
    .registers 2

    const-string v0, "TrafficIncident"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/google/googlenav/layer/e;->d()Lcom/google/googlenav/layer/m;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/layer/m;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/googlenav/layer/e;->d()Lcom/google/googlenav/layer/m;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d()Ljava/util/List;
    .registers 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/layer/f;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/m;

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->k()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_23
    return-object v1
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/googlenav/layer/f;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/i;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public e()Ljava/util/List;
    .registers 6

    const/4 v1, 0x0

    const-string v0, "__LAYERS"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/f;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/i;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/google/googlenav/layer/i;->c()[Ljava/lang/String;

    move-result-object v0

    :goto_d
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_12
    array-length v3, v0

    if-ge v1, v3, :cond_32

    aget-object v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/google/googlenav/layer/f;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Lcom/google/googlenav/layer/e;->e()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v3}, Lcom/google/googlenav/layer/e;->d()Lcom/google/googlenav/layer/m;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_2f
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_d

    :cond_32
    return-object v2
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/layer/f;->a:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/layer/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/layer/f;->c:J

    return-wide v0
.end method

.method public i()V
    .registers 5

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    :try_start_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/googlenav/layer/f;->k()Lam/b;

    move-result-object v3

    invoke-static {v2, v3}, Lam/g;->a(Ljava/io/DataOutput;Lam/b;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "PROTO_SAVED_CATEGORY_TREE_DB"

    invoke-interface {v0, v1, v2}, Lak/m;->b([BLjava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_22} :catch_2a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string v1, "CATEGORY-CategoryTree save"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    :catch_2a
    move-exception v0

    goto :goto_22
.end method

.method public j()V
    .registers 4

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v1

    const-string v0, "PROTO_SAVED_CATEGORY_TREE_DB"

    invoke-static {v1, v0}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v0

    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/google/googlenav/layer/f;->l()V

    sget-object v2, LbD/da;->o:Lam/e;

    invoke-static {v2, v0}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/f;->a(Lam/b;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1d} :catch_1e

    goto :goto_10

    :catch_1e
    move-exception v0

    const-string v2, "CATEGORY-CategoryTree load"

    invoke-static {v2, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "PROTO_SAVED_CATEGORY_TREE_DB"

    invoke-interface {v1, v0}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_10
.end method

.method public k()Lam/b;
    .registers 15

    const/4 v2, 0x0

    const/4 v13, -0x1

    new-instance v3, Lam/b;

    sget-object v0, LbD/da;->o:Lam/e;

    invoke-direct {v3, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0, v2}, Lam/b;->h(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlenav/layer/f;->a:I

    invoke-virtual {v3, v0, v1}, Lam/b;->h(II)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlenav/layer/f;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lam/b;->b(ILjava/lang/String;)V

    const/16 v0, 0xc

    iget-wide v4, p0, Lcom/google/googlenav/layer/f;->c:J

    invoke-virtual {v3, v0, v4, v5}, Lam/b;->b(IJ)V

    const/4 v0, 0x4

    const-string v1, "__ROOT"

    invoke-virtual {v3, v0, v1}, Lam/b;->b(ILjava/lang/String;)V

    iget-object v4, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_29
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/i;

    const/4 v1, 0x5

    invoke-virtual {v0}, Lcom/google/googlenav/layer/i;->a()Lam/b;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lam/b;->a(ILam/b;)V

    invoke-virtual {v0}, Lcom/google/googlenav/layer/i;->c()[Ljava/lang/String;

    move-result-object v6

    move v1, v2

    :goto_4c
    array-length v7, v6

    if-ge v1, v7, :cond_33

    aget-object v7, v6, v1

    invoke-virtual {v0, v7}, Lcom/google/googlenav/layer/i;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/e;

    move-result-object v7

    const/4 v8, 0x6

    invoke-virtual {v7}, Lcom/google/googlenav/layer/e;->g()Lam/b;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lam/b;->a(ILam/b;)V

    invoke-virtual {v7}, Lcom/google/googlenav/layer/e;->d()Lcom/google/googlenav/layer/m;

    move-result-object v8

    if-eqz v8, :cond_6f

    const/4 v8, 0x7

    invoke-virtual {v7}, Lcom/google/googlenav/layer/e;->d()Lcom/google/googlenav/layer/m;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/googlenav/layer/m;->o()Lam/b;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Lam/b;->a(ILam/b;)V

    :cond_6f
    invoke-virtual {v7}, Lcom/google/googlenav/layer/e;->c()I

    move-result v7

    if-eq v7, v13, :cond_a7

    new-instance v8, Lam/b;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lam/b;-><init>(Lam/e;)V

    const/16 v9, 0x9

    invoke-virtual {v8, v9, v7}, Lam/b;->h(II)V

    const/16 v9, 0xa

    iget-object v10, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/x;

    int-to-long v11, v7

    invoke-virtual {v10, v11, v12}, Lcom/google/googlenav/ui/x;->c(J)[B

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lam/b;->b(I[B)V

    invoke-virtual {p0, v7}, Lcom/google/googlenav/layer/f;->a(I)I

    move-result v9

    if-eq v9, v13, :cond_a2

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/x;

    invoke-virtual {p0, v7}, Lcom/google/googlenav/layer/f;->a(I)I

    move-result v7

    int-to-long v11, v7

    invoke-virtual {v10, v11, v12}, Lcom/google/googlenav/ui/x;->c(J)[B

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Lam/b;->b(I[B)V

    :cond_a2
    const/16 v7, 0x8

    invoke-virtual {v3, v7, v8}, Lam/b;->a(ILam/b;)V

    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    :cond_aa
    monitor-exit v4

    return-object v3

    :catchall_ac
    move-exception v0

    monitor-exit v4
    :try_end_ae
    .catchall {:try_start_29 .. :try_end_ae} :catchall_ac

    throw v0
.end method

.method public l()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/google/googlenav/layer/f;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/google/googlenav/layer/f;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/layer/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_28

    iput v2, p0, Lcom/google/googlenav/layer/f;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/f;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/layer/f;->c:J

    iput-boolean v2, p0, Lcom/google/googlenav/layer/f;->i:Z

    iput-object v3, p0, Lcom/google/googlenav/layer/f;->k:Lcom/google/googlenav/layer/l;

    iput-object v3, p0, Lcom/google/googlenav/layer/f;->j:Lam/b;

    iget-object v0, p0, Lcom/google/googlenav/layer/f;->g:Lcom/google/googlenav/ui/x;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/x;->b()V

    iput-boolean v2, p0, Lcom/google/googlenav/layer/f;->h:Z

    return-void

    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method
