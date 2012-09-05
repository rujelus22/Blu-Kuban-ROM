.class Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothRfTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;


# direct methods
.method constructor <init>(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)V
    .registers 2
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 34
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 35
    .local v1, state:I
    packed-switch v1, :pswitch_data_72

    .line 46
    .end local v1           #state:I
    :cond_18
    :goto_18
    const-string v2, "com.android.samsungtest.BluetoothRfTestOff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 47
    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;

    #getter for: Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->access$000(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Exit Bluetooth RF test mode"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 49
    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;

    #getter for: Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->access$200(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_46

    .line 50
    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;

    #getter for: Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->access$200(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 52
    :cond_46
    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;

    invoke-virtual {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->finish()V

    .line 54
    :cond_4b
    return-void

    .line 37
    .restart local v1       #state:I
    :pswitch_4c
    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;

    #getter for: Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->access$000(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "BT is turned on"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 38
    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;

    #calls: Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->onEnterBtRfTest()V
    invoke-static {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->access$100(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)V

    goto :goto_18

    .line 41
    :pswitch_61
    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;

    #getter for: Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;->access$000(Lcom/sec/android/app/bluetoothtest/BluetoothRfTest;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Turning BT on, Please wait..."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_18

    .line 35
    nop

    :pswitch_data_72
    .packed-switch 0xb
        :pswitch_61
        :pswitch_4c
    .end packed-switch
.end method
