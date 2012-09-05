.class Lcom/samsung/map/MessageNotificationService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 247
    iput-object p1, p0, Lcom/samsung/map/MessageNotificationService$2;->this$0:Lcom/samsung/map/MessageNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bluetooth.device.action.UUID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 251
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 252
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/samsung/map/MessageNotificationService$2;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/samsung/map/MessageNotificationService;->access$000(Lcom/samsung/map/MessageNotificationService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 254
    const/4 v0, -0x1

    .line 255
    .local v0, channel:I
    const-string v5, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 256
    .local v3, uuid:[Landroid/os/Parcelable;
    if-eqz v3, :cond_51

    .line 257
    array-length v5, v3

    new-array v4, v5, [Landroid/os/ParcelUuid;

    .line 258
    .local v4, uuids:[Landroid/os/ParcelUuid;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2d
    array-length v5, v3

    if-ge v2, v5, :cond_39

    .line 259
    aget-object v5, v3, v2

    check-cast v5, Landroid/os/ParcelUuid;

    aput-object v5, v4, v2

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 262
    :cond_39
    invoke-static {}, Lcom/samsung/map/MessageNotificationService;->access$400()Landroid/os/ParcelUuid;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 264
    iget-object v5, p0, Lcom/samsung/map/MessageNotificationService$2;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/samsung/map/MessageNotificationService;->access$000(Lcom/samsung/map/MessageNotificationService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-static {}, Lcom/samsung/map/MessageNotificationService;->access$400()Landroid/os/ParcelUuid;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->getServiceChannel(Landroid/os/ParcelUuid;)I

    move-result v0

    .line 267
    .end local v2           #i:I
    .end local v4           #uuids:[Landroid/os/ParcelUuid;
    :cond_51
    iget-object v5, p0, Lcom/samsung/map/MessageNotificationService$2;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mSessionHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/samsung/map/MessageNotificationService;->access$500(Lcom/samsung/map/MessageNotificationService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0xa

    const/4 v7, -0x1

    iget-object v8, p0, Lcom/samsung/map/MessageNotificationService$2;->this$0:Lcom/samsung/map/MessageNotificationService;

    #getter for: Lcom/samsung/map/MessageNotificationService;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v8}, Lcom/samsung/map/MessageNotificationService;->access$000(Lcom/samsung/map/MessageNotificationService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 271
    .end local v0           #channel:I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #uuid:[Landroid/os/Parcelable;
    :cond_67
    return-void
.end method
