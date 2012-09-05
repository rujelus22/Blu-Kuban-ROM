.class Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$17;
.super Ljava/lang/Object;
.source "FunctionTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->bluetoothTestStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V
    .registers 2
    .parameter

    .prologue
    .line 1100
    iput-object p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$17;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$17;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #getter for: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$300(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1103
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest$17;->this$0:Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;

    #calls: Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->setOnDiscoverable()V
    invoke-static {v0}, Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;->access$400(Lcom/android/samsungtest/SimpleFunctionTest/FunctionTest;)V

    .line 1104
    return-void
.end method
