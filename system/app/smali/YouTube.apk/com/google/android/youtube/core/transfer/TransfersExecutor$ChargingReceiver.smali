.class public Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)V
    .registers 2
    .parameter

    .prologue
    .line 624
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 629
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->h(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->b:Z

    .line 630
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 631
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 632
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 634
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->b(Lcom/google/android/youtube/core/transfer/TransfersExecutor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 638
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->b:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 646
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->b:Z

    .line 647
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersExecutor$ChargingReceiver;->a:Lcom/google/android/youtube/core/transfer/TransfersExecutor;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersExecutor;->a(Lcom/google/android/youtube/core/transfer/TransfersExecutor;I)I

    .line 648
    return-void
.end method
