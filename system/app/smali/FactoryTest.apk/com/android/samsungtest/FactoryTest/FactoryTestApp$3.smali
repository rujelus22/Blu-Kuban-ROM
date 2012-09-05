.class Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;
.super Ljava/lang/Object;
.source "FactoryTestApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bluetoothTestStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)V
    .registers 2
    .parameter

    .prologue
    .line 1792
    iput-object p1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const v8, 0x7f090035

    const/16 v7, 0xe10

    const/16 v6, 0x17

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 1794
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #setter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bBtTestSTart:Z
    invoke-static {v1, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$702(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;Z)Z

    .line 1795
    const-string v1, "FactoryTestApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHandlerBTOn btAdapter.getState() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$200(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$200(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9d

    .line 1798
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->myProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$300(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1799
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v1, v1, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x1

    aput v2, v1, v4

    .line 1800
    const-string v1, "FactoryTestApp"

    const-string v2, "[[[BT_TEST]]]=PASS"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$400(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1802
    .local v0, tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v1, v1, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v2, v2, v4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1803
    const-string v1, "net.cdma.factory.BT"

    const-string v2, "PASS"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    const/16 v2, 0x50

    #calls: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V
    invoke-static {v1, v6, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$500(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;CC)V

    .line 1805
    const-string v1, "FactoryTestApp"

    const-string v2, "SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1806
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$200(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 1807
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->btAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$200(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    .line 1808
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #setter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bIsBtStarting:Z
    invoke-static {v1, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$602(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;Z)Z

    .line 1822
    .end local v0           #tv:Landroid/widget/TextView;
    :goto_9c
    return-void

    .line 1811
    :cond_9d
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v1, v1, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v1, v1, v4

    if-nez v1, :cond_e5

    .line 1812
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->myProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$300(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1813
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v1, v1, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    const/4 v2, 0x2

    aput v2, v1, v4

    .line 1814
    const-string v1, "FactoryTestApp"

    const-string v2, "[[[BT_TEST]]]=FAIL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #getter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->mView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$400(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1816
    .restart local v0       #tv:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v1, v1, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->textColor:[I

    iget-object v2, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    iget-object v2, v2, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->testResult:[I

    aget v2, v2, v4

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1817
    const-string v1, "net.cdma.factory.BT"

    const-string v2, "FAIL"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    const/16 v2, 0x46

    #calls: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->sendTestResultToRil(CC)V
    invoke-static {v1, v6, v2}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$500(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;CC)V

    .line 1820
    .end local v0           #tv:Landroid/widget/TextView;
    :cond_e5
    iget-object v1, p0, Lcom/android/samsungtest/FactoryTest/FactoryTestApp$3;->this$0:Lcom/android/samsungtest/FactoryTest/FactoryTestApp;

    #setter for: Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->bIsBtStarting:Z
    invoke-static {v1, v5}, Lcom/android/samsungtest/FactoryTest/FactoryTestApp;->access$602(Lcom/android/samsungtest/FactoryTest/FactoryTestApp;Z)Z

    goto :goto_9c
.end method
