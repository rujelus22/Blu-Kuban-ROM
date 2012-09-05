.class Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$2;
.super Ljava/lang/Object;
.source "BluetoothSearchTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->init()V
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
    .line 163
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$2;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$2;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$000(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 168
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$2;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #calls: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BTsearchCheck()V
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$600(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V

    .line 169
    return-void
.end method
