.class public Lcom/google/googlenav/aJ;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/aL;

.field private b:Ljava/util/Map;

.field private c:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/aL;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/aJ;->b:Ljava/util/Map;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/googlenav/aJ;->c:J

    iput-object p1, p0, Lcom/google/googlenav/aJ;->a:Lcom/google/googlenav/aL;

    return-void
.end method

.method public static a()Lcom/google/googlenav/aJ;
    .registers 1

    invoke-static {}, Lcom/google/googlenav/aM;->a()Lcom/google/googlenav/aJ;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 13

    const-wide/32 v10, 0xa4cb80

    iget-object v0, p0, Lcom/google/googlenav/aJ;->a:Lcom/google/googlenav/aL;

    invoke-interface {v0}, Lcom/google/googlenav/aL;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/googlenav/aJ;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_4c

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/google/googlenav/aJ;->c:J

    sub-long v1, v0, v10

    iget-object v0, p0, Lcom/google/googlenav/aJ;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-gez v0, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_22

    :cond_40
    add-long v6, v4, v10

    iget-wide v8, p0, Lcom/google/googlenav/aJ;->c:J

    cmp-long v0, v6, v8

    if-gez v0, :cond_22

    add-long/2addr v4, v10

    iput-wide v4, p0, Lcom/google/googlenav/aJ;->c:J

    goto :goto_22

    :cond_4c
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/a;)V
    .registers 3

    invoke-virtual {p1}, Lcom/google/googlenav/a;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/googlenav/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aJ;->b(Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/aJ;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)Z
    .registers 5

    iget-object v1, p0, Lcom/google/googlenav/aJ;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/googlenav/aJ;->b()V

    iget-object v0, p0, Lcom/google/googlenav/aJ;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/googlenav/ah;->aa()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 10

    const-wide/32 v6, 0xa4cb80

    iget-object v0, p0, Lcom/google/googlenav/aJ;->a:Lcom/google/googlenav/aL;

    invoke-interface {v0}, Lcom/google/googlenav/aL;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/googlenav/aJ;->b:Ljava/util/Map;

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lcom/google/googlenav/aJ;->b:Ljava/util/Map;

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_23

    add-long v2, v0, v6

    iget-wide v4, p0, Lcom/google/googlenav/aJ;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_22

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/google/googlenav/aJ;->c:J

    :cond_22
    return-void

    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method
