.class Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAddrViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;


# direct methods
.method constructor <init>(Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, action:Ljava/lang/String;
    const-string v2, "BluetoothAddrViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive(), action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 30
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31
    .local v1, state:I
    packed-switch v1, :pswitch_data_4c

    .line 38
    .end local v1           #state:I
    :cond_2f
    :goto_2f
    return-void

    .line 33
    .restart local v1       #state:I
    :pswitch_30
    const-string v2, "BluetoothAddrViewer"

    const-string v3, "BluetoothAdapter.STATE_ON"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v2, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;

    #getter for: Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mTv:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->access$100(Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer$1;->this$0:Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;

    #getter for: Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v3}, Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;->access$000(Lcom/sec/android/app/bluetoothtest/BluetoothAddrViewer;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f

    .line 31
    nop

    :pswitch_data_4c
    .packed-switch 0xc
        :pswitch_30
    .end packed-switch
.end method
