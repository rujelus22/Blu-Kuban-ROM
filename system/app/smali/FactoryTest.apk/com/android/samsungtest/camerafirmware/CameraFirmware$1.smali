.class Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;
.super Ljava/lang/Object;
.source "CameraFirmware.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/samsungtest/camerafirmware/CameraFirmware;
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
    .line 94
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const v2, 0x7f080031

    const/4 v5, 0x1

    .line 96
    const-string v0, "CameraFirmware"

    const-string v1, "Button Clicked "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_244

    .line 218
    :goto_12
    return-void

    .line 99
    :pswitch_13
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 100
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 103
    :cond_24
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    if-eqz v0, :cond_31

    .line 104
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    invoke-virtual {v0, v5}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 107
    :cond_31
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cam FW Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

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

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$002(Lcom/android/samsungtest/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 110
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12

    .line 115
    :pswitch_79
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    if-eqz v0, :cond_8e

    .line 117
    :try_start_7f
    const-string v0, "CameraFirmware"

    const-string v1, "mCameraDevice.setFirmwareMode(CameraDeviceController.FIRMWAREMODE_VERSION)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7f .. :try_end_8e} :catch_241

    .line 126
    :cond_8e
    :goto_8e
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->ChkUserFirmwareFile()Z
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$100(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 127
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    const v2, 0x7f080032

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->DialogPopup(I)Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$300(Lcom/android/samsungtest/camerafirmware/CameraFirmware;I)Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$202(Lcom/android/samsungtest/camerafirmware/CameraFirmware;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 128
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$200(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_12

    .line 133
    :cond_af
    const-string v0, "CameraFirmware"

    const-string v1, "valid vendor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->IsNewFirmwareDate()I
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$400(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)I

    move-result v0

    packed-switch v0, :pswitch_data_254

    goto/16 :goto_12

    .line 161
    :pswitch_c1
    const-string v0, "CameraFirmware"

    const-string v1, "This is the latest version.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V
    invoke-static {v0, v2}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$600(Lcom/android/samsungtest/camerafirmware/CameraFirmware;I)V

    goto/16 :goto_12

    .line 138
    :pswitch_cf
    const-string v0, "CameraFirmware"

    const-string v1, "Updating New Firmwareversion..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v1, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 141
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->showUpdateProgress()V

    .line 142
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->startUpdateThread()V

    goto/16 :goto_12

    .line 147
    :pswitch_eb
    const-string v0, "CameraFirmware"

    const-string v1, "Same date.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->IsNewFirmwareVersion()Z
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$500(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Z

    move-result v0

    if-eqz v0, :cond_116

    .line 150
    const-string v0, "CameraFirmware"

    const-string v1, "Updating New Firmwareversion..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v1, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 153
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->showUpdateProgress()V

    .line 154
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->startUpdateThread()V

    goto/16 :goto_12

    .line 156
    :cond_116
    const-string v0, "CameraFirmware"

    const-string v1, "This is the latest version.."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #calls: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V
    invoke-static {v0, v2}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$600(Lcom/android/samsungtest/camerafirmware/CameraFirmware;I)V

    goto/16 :goto_12

    .line 174
    :pswitch_124
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_135

    .line 175
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 178
    :cond_135
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    if-eqz v0, :cond_142

    .line 179
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    invoke-virtual {v0, v5}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 182
    :cond_142
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISP Ver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getISPVer1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$002(Lcom/android/samsungtest/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 184
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 188
    :pswitch_173
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_184

    .line 189
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 192
    :cond_184
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v4, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v4, v4, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v4, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v4, v4, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$002(Lcom/android/samsungtest/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 195
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 199
    :pswitch_1d1
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_1e2

    .line 200
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 203
    :cond_1e2
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    if-eqz v0, :cond_1ef

    .line 204
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    invoke-virtual {v0, v5}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 207
    :cond_1ef
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCAMFWCalAF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v3, v3, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v3}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCAMFWCalSEN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$002(Lcom/android/samsungtest/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 209
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    #getter for: Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_12

    .line 213
    :pswitch_22c
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    iget-object v0, v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v1, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_DUMP:[B

    invoke-virtual {v0, v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->setManageMode([B)V

    .line 214
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->showUpdateProgress()V

    .line 215
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;->this$0:Lcom/android/samsungtest/camerafirmware/CameraFirmware;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->startUpdateThread()V

    goto/16 :goto_12

    .line 119
    :catch_241
    move-exception v0

    goto/16 :goto_8e

    .line 97
    :pswitch_data_244
    .packed-switch 0x7f090023
        :pswitch_13
        :pswitch_79
        :pswitch_124
        :pswitch_173
        :pswitch_1d1
        :pswitch_22c
    .end packed-switch

    .line 135
    :pswitch_data_254
    .packed-switch -0x1
        :pswitch_c1
        :pswitch_eb
        :pswitch_cf
    .end packed-switch
.end method
