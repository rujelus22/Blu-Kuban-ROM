.class final Lcom/google/android/youtube/core/transfer/o;
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
    .line 595
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/o;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 596
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/o;->b:Z

    .line 597
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/o;->b:Z

    return v0
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 604
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 605
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 606
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/o;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 609
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/o;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 613
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 617
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/o;->b:Z

    .line 618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media mounted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/o;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 619
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/o;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Lcom/google/android/youtube/core/transfer/TransfersExecutor;I)I

    .line 620
    return-void
.end method
