.class Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$3;
.super Ljava/lang/Object;
.source "FactoryTestBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->setOnDiscoverable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->access$300(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "My device can be discoverable!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 401
    const-string v0, "BT\'s visibility on"

    const-string v1, "BT\'s visibility is changed on"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->access$100(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 403
    return-void
.end method
