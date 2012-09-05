.class Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$2;
.super Ljava/lang/Object;
.source "FactoryTestBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->bluetoothTestStart()V
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
    .line 387
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$2;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$2;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->access$100(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 390
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver$2;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;

    #calls: Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->setOnDiscoverable()V
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;->access$200(Lcom/android/samsungtest/FactoryTest/FactoryTestBroadcastReceiver;)V

    .line 391
    return-void
.end method
