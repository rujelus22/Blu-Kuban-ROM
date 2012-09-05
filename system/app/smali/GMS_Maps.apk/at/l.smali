.class public Lat/l;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lat/h;

.field private volatile b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lat/h;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lat/l;->a:Lat/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lat/l;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lat/h;Ljava/lang/String;Lat/i;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lat/l;-><init>(Lat/h;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lat/l;)J
    .registers 3

    invoke-direct {p0}, Lat/l;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a(Lat/l;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lat/l;->b:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lat/l;->a:Lat/h;

    invoke-virtual {v0}, Lat/h;->l()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_2c

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lat/l;->a:Lat/h;

    invoke-static {v0}, Lat/h;->g(Lat/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lat/n;->b(Lat/n;Z)Lat/o;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lat/o;->a()V
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_2c

    goto :goto_9

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lat/l;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Lat/l;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "REQUEST"

    invoke-static {v0, p1}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lat/l;->a:Lat/h;

    invoke-virtual {v0}, Lat/h;->s()V

    iget-object v0, p0, Lat/l;->a:Lat/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/h;->a(I)V

    return-void
.end method

.method private b()V
    .registers 2

    invoke-direct {p0}, Lat/l;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lat/l;->a()V

    :cond_9
    return-void
.end method

.method static synthetic b(Lat/l;)V
    .registers 1

    invoke-direct {p0}, Lat/l;->b()V

    return-void
.end method

.method static synthetic c(Lat/l;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lat/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lat/l;->a:Lat/h;

    invoke-virtual {v0}, Lat/h;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lat/l;->a:Lat/h;

    invoke-static {v0}, Lat/h;->g(Lat/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/n;

    invoke-static {v0}, Lat/n;->b(Lat/n;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_a

    :cond_29
    move v0, v1

    goto :goto_a
.end method

.method private d()J
    .registers 7

    iget-object v0, p0, Lat/l;->a:Lat/h;

    invoke-static {v0}, Lat/h;->h(Lat/h;)I

    move-result v0

    packed-switch v0, :pswitch_data_2c

    iget-object v0, p0, Lat/l;->a:Lat/h;

    invoke-static {v0}, Lat/h;->i(Lat/h;)J

    move-result-wide v0

    :goto_f
    return-wide v0

    :pswitch_10
    iget-object v0, p0, Lat/l;->a:Lat/h;

    invoke-static {v0}, Lat/h;->i(Lat/h;)J

    move-result-wide v0

    const-wide/16 v2, 0x320

    add-long/2addr v0, v2

    iget-object v2, p0, Lat/l;->a:Lat/h;

    invoke-static {v2}, Lat/h;->j(Lat/h;)Ljava/util/Random;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    iget-object v4, p0, Lat/l;->a:Lat/h;

    invoke-static {v4}, Lat/h;->i(Lat/h;)J

    move-result-wide v4

    rem-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_f

    :pswitch_data_2c
    .packed-switch 0x4
        :pswitch_10
    .end packed-switch
.end method

.method static synthetic d(Lat/l;)V
    .registers 1

    invoke-direct {p0}, Lat/l;->a()V

    return-void
.end method

.method private e()V
    .registers 1

    invoke-direct {p0}, Lat/l;->b()V

    return-void
.end method

.method static synthetic e(Lat/l;)V
    .registers 1

    invoke-direct {p0}, Lat/l;->e()V

    return-void
.end method
