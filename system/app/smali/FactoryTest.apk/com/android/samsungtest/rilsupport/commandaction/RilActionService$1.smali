.class Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;
.super Landroid/content/BroadcastReceiver;
.source "RilActionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V
    .registers 2
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, mAction:Ljava/lang/String;
    :try_start_4
    const-string v5, "com.android.samsungtest.HDMITEST_RUN"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 206
    const-string v5, "RilActionService"

    const-string v6, "HDMITEST RUN Done!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "OK"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    .line 343
    :cond_20
    :goto_20
    return-void

    .line 210
    :cond_21
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 211
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "status"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryStatus:I
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$302(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 212
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "voltage"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryVoltage:I
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$402(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 213
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "health"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mBatteryHealth:I
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$502(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I
    :try_end_4d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4d} :catch_4e

    goto :goto_20

    .line 340
    :catch_4e
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_20

    .line 215
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_53
    :try_start_53
    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    const-string v5, "06"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 216
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "0000000000000000"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 217
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 218
    .local v2, mBa:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 219
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "FOUND"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto :goto_20

    .line 222
    .end local v2           #mBa:Landroid/bluetooth/BluetoothAdapter;
    :cond_8b
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bf

    .line 223
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 226
    .local v3, state:I
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 227
    .restart local v2       #mBa:Landroid/bluetooth/BluetoothAdapter;
    const-string v5, "RilACtionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBroadcastReceiver -android.bluetooth.adapter.action.STATE_CHANGED-> state["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] mCommand["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] BT Enable["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v5, "06"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 230
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_13e

    .line 231
    const/16 v5, 0x17

    invoke-virtual {v2, v5}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "bluetooth_on"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 233
    const-string v5, "06000300"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_136

    .line 235
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "ON"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 238
    :goto_120
    const-string v5, "bustle.jang"

    const-string v6, "sendResultCommand"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    .line 240
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "0000000000000000"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 237
    :cond_136
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "ON"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_120

    .line 243
    :cond_13e
    const-string v5, "06000200"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_169

    .line 244
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "OFF"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    .line 246
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "0000000000000000"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 248
    :cond_169
    const-string v5, "06000201"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_194

    .line 250
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "OFF"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    .line 252
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "0000000000000000"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 254
    :cond_194
    const-string v5, "06000400"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 256
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "OFF"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    .line 258
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "0000000000000000"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 263
    .end local v2           #mBa:Landroid/bluetooth/BluetoothAdapter;
    .end local v3           #state:I
    :cond_1bf
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f3

    .line 264
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "state"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHeadset:I
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$702(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 265
    const-string v5, "RilActionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receive Intent : ACTION_HEADSET_PLUG - value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mHeadset:I
    invoke-static {v7}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$700(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 267
    :cond_1f3
    const-string v5, "com.sec.android.app.wlantest.WIFI_TEST_RESPONSE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20e

    .line 268
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "S_DATA"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 272
    :cond_20e
    const-string v5, "android.intent.action.WIFI_DRIVER_INDICATION"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26a

    .line 273
    const-string v5, "STATUS"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ready"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_263

    .line 274
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$802(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    .line 275
    const-string v5, "18"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_243

    .line 276
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->parsing()V
    invoke-static {v5}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$900(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)V

    .line 281
    :cond_243
    :goto_243
    const-string v5, "RilActionService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI_DRIVER_INDICATION status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I
    invoke-static {v7}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$800(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 279
    :cond_263
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x0

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mWlanTest:I
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$802(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)I

    goto :goto_243

    .line 283
    :cond_26a
    const-string v5, "test.mode.radio.freq.response"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a0

    .line 284
    const-string v5, "08"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 285
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "signal_strength"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    .line 287
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "0000000000000000"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$602(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_20

    .line 290
    :cond_2a0
    const-string v5, "com.android.samsungtest.CameraStop.Pass"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b7

    .line 291
    const-string v5, "RilActionService"

    const-string v6, "Camera Good"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x0

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 294
    :cond_2b7
    const-string v5, "com.android.samsungtest.CameraStop.Fail"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ce

    .line 295
    const-string v5, "RilActionService"

    const-string v6, "Camera Bad"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x3

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 298
    :cond_2ce
    const-string v5, "com.android.samsungtest.CameraStart.Pass"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e5

    .line 299
    const-string v5, "RilActionService"

    const-string v6, "Camera Good"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x0

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 302
    :cond_2e5
    const-string v5, "com.android.samsungtest.CameraStart.Fail"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2fc

    .line 303
    const-string v5, "RilActionService"

    const-string v6, "Camera Bad"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x3

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 306
    :cond_2fc
    const-string v5, "com.android.samsungtest.wimaxtest.Response"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_337

    .line 307
    const-string v5, "RilActionService"

    const-string v6, "com.android.samsungtest.wimaxtest.Response"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v5, "Response"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, wimaxresponse:Ljava/lang/String;
    const-string v5, "OK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_328

    .line 310
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "OK"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 314
    :cond_328
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "NG"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 315
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 319
    .end local v4           #wimaxresponse:Ljava/lang/String;
    :cond_337
    const-string v5, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 320
    const-string v5, "RilActionService"

    const-string v6, "com.android.samsungtest.wimaxtest.MACResponse"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v5, "010100"

    iget-object v6, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #getter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$600(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const/16 v8, 0xc

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36e

    .line 322
    const-string v5, "MacRead"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .restart local v4       #wimaxresponse:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 327
    .end local v4           #wimaxresponse:Ljava/lang/String;
    :cond_36e
    const-string v5, "Response"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    .restart local v4       #wimaxresponse:Ljava/lang/String;
    const-string v5, "OK"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38b

    .line 329
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "OK"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 330
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V

    goto/16 :goto_20

    .line 333
    :cond_38b
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const-string v6, "NG"

    #setter for: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->mData:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$102(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;Ljava/lang/String;)Ljava/lang/String;

    .line 334
    iget-object v5, p0, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService$1;->this$0:Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;

    const/4 v6, 0x1

    #calls: Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->sendResultCommand(I)V
    invoke-static {v5, v6}, Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;->access$200(Lcom/android/samsungtest/rilsupport/commandaction/RilActionService;I)V
    :try_end_398
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_53 .. :try_end_398} :catch_4e

    goto/16 :goto_20
.end method
