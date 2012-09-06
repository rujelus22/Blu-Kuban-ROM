.class public Lcom/google/googlenav/ui/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/ap;

.field private final b:Lcom/google/googlenav/ui/wizard/ju;

.field private final c:Lcom/google/googlenav/aA;

.field private volatile d:Ljava/util/List;

.field private volatile e:Z

.field private volatile f:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/ap;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/aA;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/ah;->f:Z

    .line 87
    iput-object p1, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/ap;

    .line 88
    iput-object p2, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/wizard/ju;

    .line 89
    iput-object p3, p0, Lcom/google/googlenav/ui/ah;->c:Lcom/google/googlenav/aA;

    .line 91
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/ui/ai;

    const-string v2, "LBS_CRIPPLED_PREF"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/googlenav/ui/ai;-><init>(Lcom/google/googlenav/ui/ah;Ljava/lang/String;Lcom/google/googlenav/ui/ap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/ui/aj;

    const-string v2, "WIFI_CRIPPLED_PREF"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/googlenav/ui/aj;-><init>(Lcom/google/googlenav/ui/ah;Ljava/lang/String;Lcom/google/googlenav/ui/ap;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 173
    iget-object v1, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    monitor-enter v1

    .line 176
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ao;

    .line 177
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ao;->d()V

    goto :goto_9

    .line 179
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

    .line 180
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ah;)Z
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/googlenav/ui/ah;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/google/googlenav/ui/ah;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ah;->f:Z

    return p1
.end method

.method private b()V
    .registers 4

    .prologue
    .line 183
    iget-object v1, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    monitor-enter v1

    .line 184
    :try_start_3
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ao;

    .line 187
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ao;->c()V

    goto :goto_9

    .line 189
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

    .line 190
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/ah;)V
    .registers 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/googlenav/ui/ah;->a()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/ah;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/ah;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .registers 7
    .parameter

    .prologue
    .line 200
    .line 201
    if-eqz p1, :cond_35

    const-string v0, "c"

    move-object v1, v0

    .line 204
    :goto_5
    const/16 v0, 0x5f

    const-string v2, "1"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    const/16 v0, 0x24f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/ao;

    .line 212
    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/ao;->a(Ljava/lang/StringBuilder;)V

    goto :goto_25

    .line 201
    :cond_35
    const-string v0, "s"

    move-object v1, v0

    goto :goto_5

    .line 215
    :cond_39
    const/4 v0, 0x1

    .line 216
    iget-object v3, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v3

    new-instance v4, Lcom/google/googlenav/ui/am;

    invoke-direct {v4, p0, v2, p1, v1}, Lcom/google/googlenav/ui/am;-><init>(Lcom/google/googlenav/ui/ah;Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 277
    return-void
.end method

.method static synthetic c(Lcom/google/googlenav/ui/ah;)V
    .registers 1
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/googlenav/ui/ah;->b()V

    return-void
.end method

.method static synthetic d(Lcom/google/googlenav/ui/ah;)Lcom/google/googlenav/ui/ap;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->a:Lcom/google/googlenav/ui/ap;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/ah;)Lcom/google/googlenav/aA;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->c:Lcom/google/googlenav/aA;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/ah;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->b:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/ah;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/googlenav/ui/ah;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/google/googlenav/ui/ah;->e:Z

    .line 142
    const-string v0, "LBS_GO_AWAY_AND_DONT_COME_BACK"

    const/4 v1, -0x1

    new-instance v2, Lcom/google/googlenav/ui/ak;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/ak;-><init>(Lcom/google/googlenav/ui/ah;)V

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V

    .line 170
    return-void
.end method
