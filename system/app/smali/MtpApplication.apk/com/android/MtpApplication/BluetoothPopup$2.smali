.class Lcom/android/MtpApplication/BluetoothPopup$2;
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
    .line 101
    iput-object p1, p0, Lcom/android/MtpApplication/BluetoothPopup$2;->this$0:Lcom/android/MtpApplication/BluetoothPopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 104
    const-string v1, "BluetoothPopup"

    const-string v2, "user clicked on No"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/MtpApplication/BluetoothPopup$2;->this$0:Lcom/android/MtpApplication/BluetoothPopup;

    .line 106
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mtp_usb_conditions_met"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    iget-object v1, p0, Lcom/android/MtpApplication/BluetoothPopup$2;->this$0:Lcom/android/MtpApplication/BluetoothPopup;

    invoke-virtual {v1}, Lcom/android/MtpApplication/BluetoothPopup;->finish()V

    .line 108
    return-void
.end method
