.class public abstract Lcom/google/android/youtube/app/remote/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/remote/RemoteControl;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

.field private f:Lcom/google/android/youtube/app/remote/al;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/n;->a:Ljava/util/Set;

    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/n;->b:Ljava/util/Set;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/n;->c:Ljava/util/Set;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/n;->d:Landroid/os/Handler;

    .line 35
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/remote/n;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->a:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/app/remote/n;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->c:Ljava/util/Set;

    return-object v0
.end method

.method private b(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V
    .registers 4
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/p;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/p;-><init>(Lcom/google/android/youtube/app/remote/n;Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V
    .registers 4
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/r;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/r;-><init>(Lcom/google/android/youtube/app/remote/n;Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method

.method protected final a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq p1, v0, :cond_26

    const/4 v0, 0x1

    :goto_5
    const-string v1, "use toErrorState for ERROR state"

    invoke-static {v0, v1}, Lcom/google/android/ytremote/util/b;->a(ZLjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    .line 41
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    .line 42
    if-eq v0, p1, :cond_15

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/remote/n;->b(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    .line 45
    :cond_15
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->SLEEP:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_25

    .line 46
    :cond_21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/remote/n;->b(Ljava/lang/String;)V

    .line 48
    :cond_25
    return-void

    .line 39
    :cond_26
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/app/remote/aj;)V
    .registers 3
    .parameter

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 64
    monitor-exit p0

    return-void

    .line 62
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/google/android/youtube/app/remote/al;)V
    .registers 4
    .parameter

    .prologue
    .line 51
    const-string v0, "error can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$State;->OFFLINE:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne v0, v1, :cond_11

    .line 53
    const-string v0, "Remote control trying to move to ERROR state while OFFLINE"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 59
    :goto_10
    return-void

    .line 56
    :cond_11
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/n;->f:Lcom/google/android/youtube/app/remote/al;

    .line 57
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->ERROR:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    iput-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/remote/n;->b(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V

    goto :goto_10
.end method

.method public final declared-synchronized a(Lcom/google/android/youtube/app/remote/ao;)V
    .registers 3
    .parameter

    .prologue
    .line 102
    monitor-enter p0

    :try_start_1
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 104
    monitor-exit p0

    return-void

    .line 102
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Ljava/util/List;)V
    .registers 4
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/q;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/q;-><init>(Lcom/google/android/youtube/app/remote/n;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
.end method

.method protected final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/u;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/u;-><init>(Lcom/google/android/youtube/app/remote/n;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method protected abstract b()V
.end method

.method public final declared-synchronized b(Lcom/google/android/youtube/app/remote/aj;)V
    .registers 3
    .parameter

    .prologue
    .line 67
    monitor-enter p0

    :try_start_1
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 70
    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 71
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/n;->b()V
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 73
    :cond_1e
    monitor-exit p0

    return-void

    .line 67
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/youtube/app/remote/ao;)V
    .registers 3
    .parameter

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract b(Ljava/lang/String;)V
.end method

.method protected final c(I)V
    .registers 4
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/s;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/s;-><init>(Lcom/google/android/youtube/app/remote/n;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method public final declared-synchronized c(Lcom/google/android/youtube/app/remote/aj;)V
    .registers 4
    .parameter

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "listener not added, cannot be made active"

    invoke-static {v0, v1}, Lcom/google/android/ytremote/util/b;->a(ZLjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 80
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/n;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    if-eqz v0, :cond_21

    .line 82
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/n;->a()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 84
    :cond_21
    monitor-exit p0

    return-void

    .line 76
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/o;

    invoke-direct {v1, p0, p1}, Lcom/google/android/youtube/app/remote/o;-><init>(Lcom/google/android/youtube/app/remote/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public final declared-synchronized d(Lcom/google/android/youtube/app/remote/aj;)V
    .registers 4
    .parameter

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "listener not added, cannot be made passive"

    invoke-static {v0, v1}, Lcom/google/android/ytremote/util/b;->a(ZLjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 92
    invoke-virtual {p0}, Lcom/google/android/youtube/app/remote/n;->b()V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 94
    :cond_24
    monitor-exit p0

    return-void

    .line 87
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lcom/google/android/youtube/app/remote/aj;)Z
    .registers 3
    .parameter

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    const-string v0, "listener can not be null"

    invoke-static {p1, v0}, Lcom/google/android/ytremote/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit p0

    return v0

    .line 97
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final r()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->d:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/youtube/app/remote/t;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/app/remote/t;-><init>(Lcom/google/android/youtube/app/remote/n;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 181
    return-void
.end method

.method public final s()Lcom/google/android/youtube/app/remote/RemoteControl$State;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->e:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    return-object v0
.end method

.method public final t()Lcom/google/android/youtube/app/remote/al;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/n;->f:Lcom/google/android/youtube/app/remote/al;

    return-object v0
.end method
