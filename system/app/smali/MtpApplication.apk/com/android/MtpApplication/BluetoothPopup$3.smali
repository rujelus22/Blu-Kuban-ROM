.class Lcom/android/MtpApplication/BluetoothPopup$3;
.super Ljava/lang/Object;
.source "BluetoothPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/MtpApplication/BluetoothPopup;->displayBluetoothPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/BluetoothPopup;


# direct methods
.method constructor <init>(Lcom/android/MtpApplication/BluetoothPopup;)V
    .registers 2
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/MtpApplication/BluetoothPopup$3;->this$0:Lcom/android/MtpApplication/BluetoothPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 86
    const-string v3, "BluetoothPopup"

    const-string v4, "user clicked on Yes"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string v3, "BluetoothPopup"

    const-string v4, "deactivating bluetooth....."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 90
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 91
    :cond_17
    sget-object v3, Lcom/android/MtpApplication/BluetoothPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 92
    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    .line 93
    sget-object v3, Lcom/android/MtpApplication/BluetoothPopup;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    iget-object v1, p0, Lcom/android/MtpApplication/BluetoothPopup$3;->this$0:Lcom/android/MtpApplication/BluetoothPopup;

    .line 95
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mtp_usb_conditions_met"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    iget-object v3, p0, Lcom/android/MtpApplication/BluetoothPopup$3;->this$0:Lcom/android/MtpApplication/BluetoothPopup;

    invoke-virtual {v3}, Lcom/android/MtpApplication/BluetoothPopup;->finish()V

    .line 97
    return-void
.end method
