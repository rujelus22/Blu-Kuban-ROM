.class Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;
.super Ljava/lang/Object;
.source "CameraFirmware_user.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;
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
    .line 58
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    const v3, 0x7f080032

    const v2, 0x7f080031

    const/4 v4, 0x1

    .line 60
    const-string v0, "CameraFirmware_user"

    const-string v1, "Button Clicked "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_210

    .line 193
    :goto_15
    return-void

    .line 63
    :pswitch_16
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 64
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 67
    :cond_27
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    if-eqz v0, :cond_3c

    .line 69
    :try_start_2d
    const-string v0, "CameraFirmware_user"

    const-string v1, "mCameraDevice.setFirmwareMode(CameraDeviceController.FIRMWAREMODE_VERSION)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V
    :try_end_3c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_3c} :catch_20c

    .line 76
    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cam FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Phone FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$002(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 79
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15

    .line 85
    :pswitch_84
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    if-eqz v0, :cond_99

    .line 87
    :try_start_8a
    const-string v0, "CameraFirmware_user"

    const-string v1, "mCameraDevice.setFirmwareMode(CameraDeviceController.FIRMWAREMODE_VERSION)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V
    :try_end_99
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8a .. :try_end_99} :catch_209

    .line 96
    :cond_99
    :goto_99
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->ChkUserFirmwareFile()Z
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$100(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 98
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->getCamFWVendor()Ljava/lang/String;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$300(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->getPhoneFWVendor()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$200(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 100
    const-string v0, "CameraFirmware_user"

    const-string v1, "valid vendor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->IsNewFirmwareDate()I
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$400(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)I

    move-result v0

    packed-switch v0, :pswitch_data_21a

    goto/16 :goto_15

    .line 122
    :pswitch_c5
    const-string v0, "CameraFirmware_user"

    const-string v1, "SDCARD: This is the latest version.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v0, v2}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$800(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_15

    .line 105
    :pswitch_d3
    const-string v0, "CameraFirmware_user"

    const-string v1, "SDCARD: Updating New Firmwareversion..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->DialogPopup(I)Landroid/app/AlertDialog;
    invoke-static {v1, v3}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$600(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$502(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 107
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$500(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_15

    .line 110
    :pswitch_f0
    const-string v0, "CameraFirmware_user"

    const-string v1, "SDCARD: Same date.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->IsNewFirmwareVersion()Z
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$700(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 113
    const-string v0, "CameraFirmware_user"

    const-string v1, "SDCARD: Updating New Firmwareversion..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->DialogPopup(I)Landroid/app/AlertDialog;
    invoke-static {v1, v3}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$600(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$502(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 115
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$500(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_15

    .line 117
    :cond_11c
    const-string v0, "CameraFirmware_user"

    const-string v1, "SDCARD: This is the latest version.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v0, v2}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$800(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_15

    .line 127
    :cond_12a
    const-string v0, "CameraFirmware_user"

    const-string v1, "SDCARD: Invalid vendor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    const v1, 0x7f080030

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$800(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_15

    .line 134
    :cond_13b
    const-string v0, "CameraFirmware_user"

    const-string v1, "valid vendor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->IsNewFirmwareDate()I
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$400(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)I

    move-result v0

    packed-switch v0, :pswitch_data_224

    goto/16 :goto_15

    .line 162
    :pswitch_14d
    const-string v0, "CameraFirmware_user"

    const-string v1, "This is the latest version.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v0, v2}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$800(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_15

    .line 139
    :pswitch_15b
    const-string v0, "CameraFirmware_user"

    const-string v1, "Updating New Firmwareversion..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v1, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 142
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->showUpdateProgress()V

    .line 143
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->startUpdateThread()V

    goto/16 :goto_15

    .line 148
    :pswitch_177
    const-string v0, "CameraFirmware_user"

    const-string v1, "Same date.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->IsNewFirmwareVersion()Z
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$700(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Z

    move-result v0

    if-eqz v0, :cond_1a2

    .line 151
    const-string v0, "CameraFirmware_user"

    const-string v1, "Updating New Firmwareversion..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v1, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 154
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->showUpdateProgress()V

    .line 155
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->startUpdateThread()V

    goto/16 :goto_15

    .line 157
    :cond_1a2
    const-string v0, "CameraFirmware_user"

    const-string v1, "This is the latest version.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V
    invoke-static {v0, v2}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$800(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)V

    goto/16 :goto_15

    .line 175
    :pswitch_1b0
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_1c1

    .line 176
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 179
    :cond_1c1
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    if-eqz v0, :cond_1d6

    .line 181
    :try_start_1c7
    const-string v0, "CameraFirmware_user"

    const-string v1, "mCameraDevice.setFirmwareMode(CameraDeviceController.FIRMWAREMODE_VERSION)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V
    :try_end_1d6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c7 .. :try_end_1d6} :catch_207

    .line 188
    :cond_1d6
    :goto_1d6
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    iget-object v3, v3, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$002(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 190
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15

    .line 183
    :catch_207
    move-exception v0

    goto :goto_1d6

    .line 89
    :catch_209
    move-exception v0

    goto/16 :goto_99

    .line 71
    :catch_20c
    move-exception v0

    goto/16 :goto_3c

    .line 61
    nop

    :pswitch_data_210
    .packed-switch 0x7f090029
        :pswitch_16
        :pswitch_84
        :pswitch_1b0
    .end packed-switch

    .line 102
    :pswitch_data_21a
    .packed-switch -0x1
        :pswitch_c5
        :pswitch_f0
        :pswitch_d3
    .end packed-switch

    .line 136
    :pswitch_data_224
    .packed-switch -0x1
        :pswitch_14d
        :pswitch_177
        :pswitch_15b
    .end packed-switch
.end method
