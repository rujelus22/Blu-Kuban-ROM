.class public Lcom/sec/android/app/ve/receiver/VEBTReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VEBTReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .parameter "arg0"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, intentAction:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Inside onReceive and state is -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 22
    const-string v3, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 27
    const-string v3, "android.bluetooth.a2dp.extra.SINK_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 28
    .local v2, sinkState:I
    const-string v3, "android.bluetooth.a2dp.extra.PREVIOUS_SINK_STATE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, previousSinkState:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current BT State -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Previous BT State -->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 40
    if-eqz v2, :cond_54

    const/4 v3, 0x3

    if-ne v2, v3, :cond_69

    .line 41
    :cond_54
    const/4 v3, 0x4

    if-ne v1, v3, :cond_69

    .line 43
    const-string v3, "Stopping the preview from VEBTReceiver"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    if-eqz v3, :cond_69

    .line 46
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 51
    .end local v1           #previousSinkState:I
    .end local v2           #sinkState:I
    :cond_69
    return-void
.end method
