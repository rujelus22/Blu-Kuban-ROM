.class Lcom/android/samsungtest/camerafirmware/CameraFirmware$5;
.super Ljava/lang/Object;
.source "CameraFirmware.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camerafirmware/CameraFirmware;->DialogPopup(I)Landroid/app/AlertDialog;
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
    .line 579
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$5;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog1"
    .parameter "which"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$5;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v1, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 584
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$5;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->showUpdateProgress()V

    .line 585
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$5;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->startUpdateThread()V

    .line 586
    return-void
.end method
