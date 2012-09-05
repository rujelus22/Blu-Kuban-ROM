.class Lcom/samsung/map/BluetoothMapService$2;
.super Landroid/bluetooth/IBluetoothMap$Stub;
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
    .line 487
    iput-object p1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothMap$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .registers 6

    .prologue
    .line 519
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v2, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    monitor-enter v2

    .line 522
    :try_start_c
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mState:I
    invoke-static {v1}, Lcom/samsung/map/BluetoothMapService;->access$900(Lcom/samsung/map/BluetoothMapService;)I

    move-result v1

    packed-switch v1, :pswitch_data_5a

    .line 542
    :goto_15
    monitor-exit v2

    .line 543
    return-void

    .line 524
    :pswitch_17
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;
    invoke-static {v1}, Lcom/samsung/map/BluetoothMapService;->access$1000(Lcom/samsung/map/BluetoothMapService;)Lcom/samsung/map/BluetoothMapObexServerSession;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 525
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;
    invoke-static {v1}, Lcom/samsung/map/BluetoothMapService;->access$1000(Lcom/samsung/map/BluetoothMapService;)Lcom/samsung/map/BluetoothMapObexServerSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/map/BluetoothMapObexServerSession;->stop()V

    .line 526
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/map/BluetoothMapService;->mServerSession:Lcom/samsung/map/BluetoothMapObexServerSession;
    invoke-static {v1, v3}, Lcom/samsung/map/BluetoothMapService;->access$1002(Lcom/samsung/map/BluetoothMapService;Lcom/samsung/map/BluetoothMapObexServerSession;)Lcom/samsung/map/BluetoothMapObexServerSession;

    .line 529
    :cond_2e
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/samsung/map/BluetoothMapService;->access$500(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothSocket;
    :try_end_33
    .catchall {:try_start_c .. :try_end_33} :catchall_4d

    move-result-object v1

    if-eqz v1, :cond_45

    .line 531
    :try_start_36
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1}, Lcom/samsung/map/BluetoothMapService;->access$500(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 532
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/map/BluetoothMapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    invoke-static {v1, v3}, Lcom/samsung/map/BluetoothMapService;->access$502(Lcom/samsung/map/BluetoothMapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_45} :catch_50

    .line 537
    :cond_45
    :goto_45
    :try_start_45
    iget-object v1, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    const/4 v3, 0x0

    const/4 v4, 0x2

    #calls: Lcom/samsung/map/BluetoothMapService;->setState(II)V
    invoke-static {v1, v3, v4}, Lcom/samsung/map/BluetoothMapService;->access$1100(Lcom/samsung/map/BluetoothMapService;II)V

    goto :goto_15

    .line 542
    :catchall_4d
    move-exception v1

    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_45 .. :try_end_4f} :catchall_4d

    throw v1

    .line 533
    :catch_50
    move-exception v0

    .line 534
    .local v0, e:Ljava/lang/Exception;
    :try_start_51
    const-string v1, "BtMap Service"

    const-string v3, "IOException thrown"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_4d

    goto :goto_45

    .line 522
    nop

    :pswitch_data_5a
    .packed-switch 0x2
        :pswitch_17
    .end packed-switch
.end method

.method public getClient()Landroid/bluetooth/BluetoothDevice;
    .registers 4

    .prologue
    .line 498
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mState:I
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$900(Lcom/samsung/map/BluetoothMapService;)I

    move-result v0

    if-nez v0, :cond_13

    .line 500
    const/4 v0, 0x0

    .line 502
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$200(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    goto :goto_12
.end method

.method public getState()I
    .registers 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mState:I
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$900(Lcom/samsung/map/BluetoothMapService;)I

    move-result v0

    return v0
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 5
    .parameter "device"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mState:I
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$900(Lcom/samsung/map/BluetoothMapService;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/samsung/map/BluetoothMapService$2;->this$0:Lcom/samsung/map/BluetoothMapService;

    #getter for: Lcom/samsung/map/BluetoothMapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Lcom/samsung/map/BluetoothMapService;->access$200(Lcom/samsung/map/BluetoothMapService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method
