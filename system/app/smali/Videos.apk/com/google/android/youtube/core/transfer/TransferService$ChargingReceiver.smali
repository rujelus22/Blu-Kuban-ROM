.class public Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChargingReceiver"
.end annotation


# instance fields
.field private charging:Z

.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 2
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public isCharging()Z
    .registers 2

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->charging:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 746
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->charging:Z

    .line 747
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    .line 748
    return-void
.end method

.method public register()V
    .registers 9

    .prologue
    const/4 v3, 0x1

    .line 752
    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    const/4 v5, 0x0

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/google/android/youtube/core/transfer/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 754
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 755
    .local v2, plugged:I
    if-eq v2, v3, :cond_1b

    const/4 v4, 0x2

    if-ne v2, v4, :cond_32

    :cond_1b
    :goto_1b
    iput-boolean v3, p0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->charging:Z

    .line 758
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 759
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 761
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v3, p0, v0}, Lcom/google/android/youtube/core/transfer/TransferService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 762
    return-void

    .line 755
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_32
    const/4 v3, 0x0

    goto :goto_1b
.end method

.method public unregister()V
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransferService$ChargingReceiver;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/TransferService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 766
    return-void
.end method
