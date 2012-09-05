.class Lcom/android/samsungtest/camerafirmware/CameraFirmware$2;
.super Ljava/lang/Object;
.source "CameraFirmware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camerafirmware/CameraFirmware;->showUpdateProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V
    .registers 2
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$2;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 252
    const-string v0, "CameraFirmware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProgressDialog - onKey : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    sparse-switch p2, :sswitch_data_20

    .line 260
    const/4 v0, 0x1

    :goto_1c
    return v0

    .line 256
    :sswitch_1d
    const/4 v0, 0x0

    goto :goto_1c

    .line 253
    nop

    :sswitch_data_20
    .sparse-switch
        0x3 -> :sswitch_1d
        0x1a -> :sswitch_1d
    .end sparse-switch
.end method
