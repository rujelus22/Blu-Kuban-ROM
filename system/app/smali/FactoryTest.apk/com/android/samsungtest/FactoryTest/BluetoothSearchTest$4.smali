.class Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothSearchTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V
    .registers 2
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$4;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 207
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, action:Ljava/lang/String;
    const-string v1, "ServiceBroadCastReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 212
    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$4;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTAddress:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$1102(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    invoke-static {}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$1200()Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 217
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$4;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    const-string v2, "23"

    const-string v3, "P"

    #calls: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$1300(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$1202(Z)Z

    .line 220
    :cond_4c
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$4;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$4;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$1100(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->addSearchedBTItem(Ljava/lang/String;)V

    .line 223
    :cond_57
    return-void
.end method
