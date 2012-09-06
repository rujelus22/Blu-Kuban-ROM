.class final Lcom/google/android/youtube/core/transfer/v;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

.field private volatile b:Z

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V
    .registers 4
    .parameter

    .prologue
    .line 578
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/v;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 579
    invoke-static {p1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 581
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/v;->a(Landroid/net/NetworkInfo;)V

    .line 582
    return-void
.end method

.method private a(Landroid/net/NetworkInfo;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 609
    if-eqz p1, :cond_16

    .line 610
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/youtube/core/transfer/v;->b:Z

    .line 611
    iget-boolean v2, p0, Lcom/google/android/youtube/core/transfer/v;->b:Z

    if-eqz v2, :cond_19

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v0, :cond_17

    :goto_14
    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/v;->c:Z

    .line 613
    :cond_16
    return-void

    :cond_17
    move v0, v1

    .line 611
    goto :goto_14

    :cond_19
    move v0, v1

    goto :goto_14
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 585
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/v;->b:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 589
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/v;->c:Z

    return v0
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 593
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/v;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 595
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/v;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 599
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 603
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/v;->a(Landroid/net/NetworkInfo;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/v;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 605
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/v;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V

    .line 606
    return-void
.end method
