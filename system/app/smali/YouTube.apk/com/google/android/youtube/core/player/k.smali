.class final Lcom/google/android/youtube/core/player/k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/d;

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/core/player/d;)V
    .registers 3
    .parameter

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/player/k;-><init>(Lcom/google/android/youtube/core/player/d;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/core/player/d;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 660
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/k;->b:Z

    if-nez v0, :cond_18

    .line 661
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/d;->j(Lcom/google/android/youtube/core/player/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 663
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/k;->b:Z
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 665
    :cond_18
    monitor-exit p0

    return-void

    .line 660
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .registers 2

    .prologue
    .line 668
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/k;->b:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->j(Lcom/google/android/youtube/core/player/d;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 669
    iget-object v0, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->j(Lcom/google/android/youtube/core/player/d;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/k;->b:Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 672
    :cond_19
    monitor-exit p0

    return-void

    .line 668
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .registers 2

    .prologue
    .line 695
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/k;->c:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Z
    .registers 2

    .prologue
    .line 699
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/k;->d:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 676
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/k;->b:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_55

    if-nez v1, :cond_8

    .line 692
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 680
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/d;->k(Lcom/google/android/youtube/core/player/d;)Lcom/google/android/youtube/core/utils/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/i;->a()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/k;->c:Z

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/youtube/core/player/k;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 682
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/k;->c:Z

    if-eqz v1, :cond_3d

    .line 683
    iget-object v1, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/d;->k(Lcom/google/android/youtube/core/player/d;)Lcom/google/android/youtube/core/utils/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/utils/i;->c()Z

    move-result v1

    if-nez v1, :cond_58

    :goto_3b
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/k;->d:Z

    .line 685
    :cond_3d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/d;->l(Lcom/google/android/youtube/core/player/d;)Lcom/google/android/youtube/core/transfer/a;

    move-result-object v0

    if-nez v0, :cond_6

    .line 686
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/k;->c:Z

    if-eqz v0, :cond_5a

    .line 687
    iget-object v0, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/d;->g(Lcom/google/android/youtube/core/player/d;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/youtube/core/player/d;->b(Lcom/google/android/youtube/core/player/d;J)V
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_55

    goto :goto_6

    .line 676
    :catchall_55
    move-exception v0

    monitor-exit p0

    throw v0

    .line 683
    :cond_58
    const/4 v0, 0x0

    goto :goto_3b

    .line 689
    :cond_5a
    :try_start_5a
    iget-object v0, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/k;->a:Lcom/google/android/youtube/core/player/d;

    const/4 v2, 0x1

    const/16 v3, -0xfa0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/youtube/core/player/d;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_64
    .catchall {:try_start_5a .. :try_end_64} :catchall_55

    goto :goto_6
.end method
