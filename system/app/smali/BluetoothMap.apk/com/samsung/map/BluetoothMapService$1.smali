.class Lcom/samsung/map/BluetoothMapService$1;
.super Landroid/os/Handler;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/map/BluetoothMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/map/BluetoothMapService;


# direct methods
.method constructor <init>(Lcom/samsung/map/BluetoothMapService;)V
    .registers 2
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_ea

    .line 380
    :cond_7
    :goto_7
    return-void

    .line 325
    :sswitch_8
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$000(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 326
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #calls: Lcom/samsung/map/BluetoothMapService;->startSocketListener()V
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$100(Lcom/samsung/map/BluetoothMapService;)V

    goto :goto_7

    .line 332
    :sswitch_1a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/map/BluetoothMapService;->access$200(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 334
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #setter for: Lcom/samsung/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v0, v3}, Lcom/samsung/map/BluetoothMapService;->access$302(Lcom/samsung/map/BluetoothMapService;Z)Z

    .line 338
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #calls: Lcom/samsung/map/BluetoothMapService;->stopObexServerSession()V
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$400(Lcom/samsung/map/BluetoothMapService;)V

    goto :goto_7

    .line 342
    :sswitch_43
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mSocketListener:[Lcom/samsung/map/BluetoothMapRfcommListener;
    invoke-static {v1}, Lcom/samsung/map/BluetoothMapService;->access$600(Lcom/samsung/map/BluetoothMapService;)[Lcom/samsung/map/BluetoothMapRfcommListener;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/samsung/map/BluetoothMapRfcommListener;->getBluetoothConnSocket()Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    #setter for: Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v0, v1}, Lcom/samsung/map/BluetoothMapService;->access$502(Lcom/samsung/map/BluetoothMapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;

    .line 343
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/samsung/map/BluetoothMapService;->access$500(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    #setter for: Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0, v1}, Lcom/samsung/map/BluetoothMapService;->access$202(Lcom/samsung/map/BluetoothMapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 344
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$200(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_73

    .line 345
    const-string v0, "BtMap Service"

    const-string v1, "getRemoteDevice() = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 349
    :cond_73
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$200(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getMapTrustState()Z

    move-result v0

    .line 352
    if-eqz v0, :cond_8a

    .line 353
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/map/BluetoothMapObexTransport;

    .line 354
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #calls: Lcom/samsung/map/BluetoothMapService;->createServerSession(Lcom/samsung/map/BluetoothMapObexTransport;)V
    invoke-static {v1, v0}, Lcom/samsung/map/BluetoothMapService;->access$700(Lcom/samsung/map/BluetoothMapService;Lcom/samsung/map/BluetoothMapObexTransport;)V

    goto/16 :goto_7

    .line 356
    :cond_8a
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 357
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.bluetooth.BluetoothPermissionRequest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Lcom/samsung/map/BluetoothMapService;->access$200(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 361
    const-string v1, "android.bluetooth.device.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    invoke-virtual {v2}, Lcom/samsung/map/BluetoothMapService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v1, "android.bluetooth.device.extra.CLASS_NAME"

    const-class v2, Lcom/samsung/map/BluetoothMapReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    const/4 v1, 0x1

    #setter for: Lcom/samsung/map/BluetoothMapService;->isWaitingAuthorization:Z
    invoke-static {v0, v1}, Lcom/samsung/map/BluetoothMapService;->access$302(Lcom/samsung/map/BluetoothMapService;Z)Z

    .line 371
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$800(Lcom/samsung/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/samsung/map/BluetoothMapService;->access$800(Lcom/samsung/map/BluetoothMapService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 377
    :sswitch_e3
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$1;->this$0:Lcom/samsung/map/BluetoothMapService;

    #calls: Lcom/samsung/map/BluetoothMapService;->stopObexServerSession()V
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$400(Lcom/samsung/map/BluetoothMapService;)V

    goto/16 :goto_7

    .line 323
    :sswitch_data_ea
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_1a
        0x64 -> :sswitch_43
        0x1388 -> :sswitch_e3
    .end sparse-switch
.end method
