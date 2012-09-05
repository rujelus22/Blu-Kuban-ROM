.class Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$2;
.super Landroid/os/Handler;
.source "RilActionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->btSearchWithAck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V
    .registers 2
    .parameter

    .prologue
    .line 2339
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$2;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 2342
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2343
    .local v0, mBa:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2344
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 2345
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$2;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v2, "NOT FOUND"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 2346
    iget-object v1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$2;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v2, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v1, v2}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    .line 2348
    :cond_1a
    return-void
.end method
