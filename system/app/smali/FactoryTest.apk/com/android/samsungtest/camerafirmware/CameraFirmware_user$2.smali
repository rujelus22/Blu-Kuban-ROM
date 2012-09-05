.class Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$2;
.super Ljava/lang/Object;
.source "CameraFirmware_user.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->DialogPopup(I)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;


# direct methods
.method constructor <init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$2;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog1"
    .parameter "which"

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$2;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v1, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 343
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$2;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->showUpdateProgress()V

    .line 344
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$2;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->startUpdateThread()V

    .line 345
    return-void
.end method
