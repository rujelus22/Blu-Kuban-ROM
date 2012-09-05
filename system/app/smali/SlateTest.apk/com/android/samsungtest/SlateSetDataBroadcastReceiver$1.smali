.class Lcom/android/samsungtest/SlateSetDataBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "SlateSetDataBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->access$000(Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 85
    :goto_10
    return-void

    .line 81
    :pswitch_11
    iget-object v0, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->access$000(Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SET_DISABLE_CHARGING_EVENT : SetCharging on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver$1;->this$0:Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->DelayTime:I
    invoke-static {v2}, Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;->access$100(Lcom/android/samsungtest/SlateSetDataBroadcastReceiver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v0, "persist.service.slate_mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10

    .line 79
    nop

    :pswitch_data_3c
    .packed-switch 0x10
        :pswitch_11
    .end packed-switch
.end method
