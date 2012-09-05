.class Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;
.super Ljava/lang/Object;
.source "BluetoothSearchTest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;)V
    .registers 2
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 89
    const-string v0, "BluetoothSearch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT\'s on/off state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$000(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$000(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 92
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$100(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$200(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Bluetooth Search in progress"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_4f
    return-void

    .line 95
    :cond_50
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$100(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBTInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$200(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Bluetooth Search is done"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    iget-object v0, v0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1$1;->this$1:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;

    iget-object v1, v1, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest$1;->this$0:Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;

    #getter for: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->mBtListCount:I
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$300(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;)I

    move-result v1

    #calls: Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->resetBTDeviceName(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;->access$400(Lcom/android/samsungtest/FactoryTest/BluetoothSearchTest;I)V

    goto :goto_4f
.end method
