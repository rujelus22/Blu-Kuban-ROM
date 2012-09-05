.class public LaD/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lay/r;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/List;


# direct methods
.method constructor <init>(Lay/r;Ljava/util/Set;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/j;->a:Lay/r;

    iput-object p2, p0, LaD/j;->b:Ljava/util/Set;

    invoke-static {}, LK/bR;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, LaD/j;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(LaD/j;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, LaD/j;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Lay/q;)I
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, LaD/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, LaD/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x14

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, LK/bR;->b(I)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, LaD/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_35

    :cond_2d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58

    move v0, v1

    goto :goto_a

    :cond_35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaD/m;

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    invoke-static {v0}, LaD/i;->c(LaD/m;)Lcom/google/googlenav/ui/bG;

    move-result-object v5

    if-eqz v5, :cond_21

    iget-object v6, p0, LaD/j;->b:Ljava/util/Set;

    invoke-virtual {v0}, LaD/m;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_58
    iget-object v0, p0, LaD/j;->a:Lay/r;

    new-instance v1, LaD/k;

    invoke-direct {v1, p0, p1}, LaD/k;-><init>(LaD/j;Lay/q;)V

    invoke-virtual {v0, v3, v1}, Lay/r;->a(Ljava/util/List;Lay/q;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_a
.end method

.method public a()V
    .registers 5

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    :try_start_6
    new-instance v0, LaD/l;

    invoke-direct {v0, p0, v1}, LaD/l;-><init>(LaD/j;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LaD/j;->a(Lay/q;)I
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_18

    move-result v0

    if-lez v0, :cond_16

    const-wide/16 v2, 0x2710

    :try_start_13
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_16} :catch_1b

    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v0

    :catch_1b
    move-exception v0

    goto :goto_16
.end method

.method public a(LaD/m;)V
    .registers 3

    iget-object v0, p0, LaD/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
