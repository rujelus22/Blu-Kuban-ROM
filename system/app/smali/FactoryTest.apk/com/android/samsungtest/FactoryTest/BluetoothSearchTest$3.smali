.class Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;
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
    .line 172
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$000(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 175
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    const-string v1, "Bluetooth\'state is changed to On!! wait for 10 seconds"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    const-string v1, "After 10 seconds, Bluetooth search start!"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :goto_24
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #calls: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->bluetoothOn()V
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$700(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)V

    .line 193
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mHandlerBTSearch:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$1000(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTSearchRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$800(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->BT_ON_DURATION:J
    invoke-static {v2}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$900(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 195
    return-void

    .line 184
    :cond_3f
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$3;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    const-string v1, "Bluetooth\'state is On!!, Bluetooth search start! right now"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_24
.end method
