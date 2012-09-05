.class public Lcom/google/googlenav/ui/ak;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/googlenav/ui/at;

.field private final b:Lcom/google/googlenav/ui/wizard/hM;

.field private final c:Lcom/google/googlenav/ay;

.field private volatile d:Ljava/util/List;

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;Lcom/google/googlenav/ay;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ak;->f:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/at;

    iput-object p2, p0, Lcom/google/googlenav/ui/ak;->b:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p3, p0, Lcom/google/googlenav/ui/ak;->c:Lcom/google/googlenav/ay;

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/ui/al;

    const-string v2, "LBS_CRIPPLED_PREF"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/googlenav/ui/al;-><init>(Lcom/google/googlenav/ui/ak;Ljava/lang/String;Lcom/google/googlenav/ui/at;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/ui/am;

    const-string v2, "WIFI_CRIPPLED_PREF"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/googlenav/ui/am;-><init>(Lcom/google/googlenav/ui/ak;Ljava/lang/String;Lcom/google/googlenav/ui/at;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a()V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ar;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ar;->d()V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ak;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/ak;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ak;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/googlenav/ui/ak;->f:Z

    return p1
.end method

.method private b()V
    .registers 4

    iget-object v1, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ar;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ar;->c()V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/ak;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/ak;->a()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/ak;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/ak;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 7

    if-eqz p1, :cond_35

    const-string v0, "c"

    move-object v1, v0

    :goto_5
    const/16 v0, 0x5f

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x21c

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ar;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/ar;->a(Ljava/lang/StringBuilder;)V

    goto :goto_25

    :cond_35
    const-string v0, "s"

    move-object v1, v0

    goto :goto_5

    :cond_39
    const/4 v0, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/ak;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/ap;

    invoke-direct {v4, p0, v2, p1, v1}, Lcom/google/googlenav/ui/ap;-><init>(Lcom/google/googlenav/ui/ak;Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/ak;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/ak;->b()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/ak;)Lcom/google/googlenav/ui/at;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->a:Lcom/google/googlenav/ui/at;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/ak;)Lcom/google/googlenav/ay;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->c:Lcom/google/googlenav/ay;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/ak;)Lcom/google/googlenav/ui/wizard/hM;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->b:Lcom/google/googlenav/ui/wizard/hM;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/ak;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/ak;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/google/googlenav/ui/ak;->e:Z

    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, -0x1

    new-instance v2, Lcom/google/googlenav/ui/an;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/an;-><init>(Lcom/google/googlenav/ui/ak;)V

    invoke-static {v0, v1, v2}, Lax/be;->a(Ljava/lang/String;ILax/bj;)V

    return-void
.end method
