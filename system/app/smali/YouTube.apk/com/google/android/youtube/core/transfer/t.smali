.class final Lcom/google/android/youtube/core/transfer/t;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V
    .registers 4
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/t;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 622
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/t;->b:Z

    .line 623
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/t;->b:Z

    return v0
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 630
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 631
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 634
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/t;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 635
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 639
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 643
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/t;->b:Z

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "media mounted "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/t;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 645
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/t;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->c(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V

    .line 646
    return-void
.end method
