.class Lcom/samsung/map/MessageNotificationService$1;
.super Landroid/os/Handler;
.source "MessageNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/MessageNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/map/MessageNotificationService;


# direct methods
.method constructor <init>(Lcom/samsung/map/MessageNotificationService;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    .line 139
    :cond_5
    :goto_5
    return-void

    .line 120
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Lcom/samsung/map/MessageNotificationService;->access$000(Lcom/samsung/map/MessageNotificationService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    :try_start_16
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    iget-object v1, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mReceiver_UUID:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/samsung/map/MessageNotificationService;->access$100(Lcom/samsung/map/MessageNotificationService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/map/MessageNotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_21
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_21} :catch_51

    .line 128
    :goto_21
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_49

    .line 129
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    new-instance v1, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

    iget-object v2, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    iget-object v3, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Lcom/samsung/map/MessageNotificationService;->access$000(Lcom/samsung/map/MessageNotificationService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mMASInstanceID:I
    invoke-static {v5}, Lcom/samsung/map/MessageNotificationService;->access$300(Lcom/samsung/map/MessageNotificationService;)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;-><init>(Lcom/samsung/map/MessageNotificationService;Landroid/bluetooth/BluetoothDevice;II)V

    #setter for: Lcom/samsung/map/MessageNotificationService;->mConnectThread:Lcom/samsung/map/MessageNotificationService$SocketConnectThread;
    invoke-static {v0, v1}, Lcom/samsung/map/MessageNotificationService;->access$202(Lcom/samsung/map/MessageNotificationService;Lcom/samsung/map/MessageNotificationService$SocketConnectThread;)Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

    .line 130
    iget-object v0, p0, Lcom/samsung/map/MessageNotificationService$1;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mConnectThread:Lcom/samsung/map/MessageNotificationService$SocketConnectThread;
    invoke-static {v0}, Lcom/samsung/map/MessageNotificationService;->access$200(Lcom/samsung/map/MessageNotificationService;)Lcom/samsung/map/MessageNotificationService$SocketConnectThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/map/MessageNotificationService$SocketConnectThread;->start()V

    goto :goto_5

    .line 133
    :cond_49
    const-string v0, "MAP MNS"

    const-string v1, "SDP query failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 125
    :catch_51
    move-exception v0

    goto :goto_21

    .line 116
    nop

    :pswitch_data_54
    .packed-switch 0xa
        :pswitch_6
    .end packed-switch
.end method
