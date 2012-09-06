.class public LQi;
.super Ljava/lang/Object;
.source "ServerAclManager.java"

# interfaces
.implements LOR;


# instance fields
.field private final a:LRL;

.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LRL;)V
    .registers 3
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LQi;->a:Ljava/util/List;

    .line 40
    iput-object p1, p0, LQi;->a:LRL;

    .line 41
    return-void
.end method

.method static synthetic a(LQi;)LRL;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LQi;->a:LRL;

    return-object v0
.end method

.method static synthetic a(LQi;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, LQi;->a:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 167
    :goto_0
    const/4 v0, 0x0

    .line 168
    monitor-enter p0

    .line 169
    :try_start_2
    iget-object v1, p0, LQi;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 170
    iget-object v0, p0, LQi;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcg;

    .line 172
    :cond_13
    monitor-exit p0

    .line 173
    if-nez v0, :cond_1a

    .line 186
    return-void

    .line 172
    :catchall_17
    move-exception v0

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_17

    throw v0

    .line 177
    :cond_1a
    invoke-virtual {v0}, Lcg;->a()V

    .line 179
    :try_start_1d
    invoke-virtual {v0}, Lcg;->join()V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_0

    .line 180
    :catch_21
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;LOS;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    monitor-enter p0

    :try_start_1
    new-instance v0, LQj;

    invoke-direct {v0, p0, p2, p1, p3}, LQj;-><init>(LQi;Ljava/lang/String;Ljava/lang/String;LOS;)V

    .line 85
    iget-object v1, p0, LQi;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-virtual {v0}, Lcg;->start()V

    .line 87
    const-string v0, "ServerAclLoader"

    const-string v1, "Started parsing..."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 88
    monitor-exit p0

    return-void

    .line 47
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/util/Set;LOS;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ldq;",
            ">;",
            "LOS;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    new-instance v0, LQk;

    invoke-direct {v0, p0, p2, p3, p1}, LQk;-><init>(LQi;Ljava/util/Set;LOS;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, LQi;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {v0}, Lcg;->start()V

    .line 160
    const-string v0, "ServerAclLoader"

    const-string v1, "Started updating..."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 161
    monitor-exit p0

    return-void

    .line 94
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method
