.class public Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;
.super Lcom/android/samsungtest/camerafirmware/CameraFirmware;
.source "CameraFirmware_user.java"


# instance fields
.field mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentToast:Landroid/widget/Toast;

.field private mDate:Ljava/util/Date;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mPopup:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;-><init>()V

    .line 42
    new-instance v0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-direct {v0}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    .line 44
    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;

    .line 46
    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    .line 48
    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    .line 50
    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mDate:Ljava/util/Date;

    .line 58
    new-instance v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$1;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)V

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private CheckCamFWDate()J
    .registers 13

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, CamFW:Ljava/lang/String;
    const/4 v1, 0x0

    .line 302
    .local v1, CamFWVersionDate:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v8}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v0

    .line 303
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 304
    .local v3, CamFWVersionY:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 305
    .local v6, ch:[C
    aget-char v8, v6, v9

    add-int/lit8 v8, v8, -0x43

    add-int/lit16 v5, v8, 0x7d9

    .line 306
    .local v5, Year:I
    const/4 v8, 0x4

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, CamFWVersionM:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 308
    .local v7, ch1:[C
    aget-char v8, v7, v9

    add-int/lit8 v8, v8, -0x41

    add-int/lit8 v4, v8, 0x1

    .line 310
    .local v4, Month:I
    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v4, v9}, Ljava/util/Date;-><init>(III)V

    iput-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mDate:Ljava/util/Date;

    .line 311
    const-string v8, "CameraFirmware_user"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CamFW Date = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    return-wide v8
.end method

.method private CheckCamFWVersion()I
    .registers 8

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, CamFW:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v4}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v0

    .line 320
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, CamFWVersionD:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 322
    .local v3, ch2:[C
    const/4 v4, 0x0

    aget-char v4, v3, v4

    mul-int/lit8 v4, v4, 0x7b

    const/4 v5, 0x1

    aget-char v5, v3, v5

    add-int v2, v4, v5

    .line 323
    .local v2, Version:I
    const-string v4, "CameraFirmware_user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckCamFWVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return v2
.end method

.method private CheckPhoneFWDate()J
    .registers 13

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 271
    const/4 v4, 0x0

    .line 272
    .local v4, phoneFW:Ljava/lang/String;
    const/4 v5, 0x0

    .line 273
    .local v5, phoneFWVersionDate:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v8}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v4

    .line 274
    const/4 v8, 0x2

    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 275
    .local v7, phoneFWVersionY:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 276
    .local v2, ch:[C
    aget-char v8, v2, v9

    add-int/lit8 v8, v8, -0x43

    add-int/lit16 v1, v8, 0x7d9

    .line 277
    .local v1, Year:I
    const/4 v8, 0x4

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, phoneFWVersionM:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 279
    .local v3, ch1:[C
    aget-char v8, v3, v9

    add-int/lit8 v8, v8, -0x41

    add-int/lit8 v0, v8, 0x1

    .line 281
    .local v0, Month:I
    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v0, v9}, Ljava/util/Date;-><init>(III)V

    iput-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mDate:Ljava/util/Date;

    .line 282
    const-string v8, "CameraFirmware_user"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhoneFW Date = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    return-wide v8
.end method

.method private CheckPhoneFWVersion()I
    .registers 8

    .prologue
    .line 289
    const/4 v2, 0x0

    .line 290
    .local v2, phoneFW:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v4}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    .line 291
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, phoneFWVersionD:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 293
    .local v1, ch2:[C
    const/4 v4, 0x0

    aget-char v4, v1, v4

    mul-int/lit8 v4, v4, 0x7b

    const/4 v5, 0x1

    aget-char v5, v1, v5

    add-int v0, v4, v5

    .line 294
    .local v0, Version:I
    const-string v4, "CameraFirmware_user"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckPhoneFWVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v0
.end method

.method private ChkUserFirmwareFile()Z
    .registers 6

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    .local v0, UserFirmwareFile:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v3, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    const-string v3, "RS_M5LS.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v2, "CameraFirmware_user"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChkUserFirmwareFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 221
    const-string v2, "CameraFirmware_user"

    const-string v3, "User Firmware file exists"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v2, 0x1

    .line 225
    :goto_45
    return v2

    .line 224
    :cond_46
    const-string v2, "CameraFirmware_user"

    const-string v3, "User Firmware file doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v2, 0x0

    goto :goto_45
.end method

.method private DialogPopup(I)Landroid/app/AlertDialog;
    .registers 5
    .parameter "messageId"

    .prologue
    .line 328
    const-string v1, "CameraFirmware_user"

    const-string v2, "DialogPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 331
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 334
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cam FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Phone FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 337
    const v1, 0x7f080019

    new-instance v2, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$2;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$2;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 347
    const-string v1, "No"

    new-instance v2, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$3;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$3;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private IsNewFirmwareDate()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 249
    const-string v0, "CameraFirmware_user"

    const-string v1, "IsNewFirmwareDate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->CheckPhoneFWDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->CheckCamFWDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_18

    .line 252
    const/4 v0, 0x1

    .line 260
    :goto_17
    return v0

    .line 254
    :cond_18
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->CheckPhoneFWDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->CheckCamFWDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_27

    .line 256
    const/4 v0, 0x0

    goto :goto_17

    .line 260
    :cond_27
    const/4 v0, -0x1

    goto :goto_17
.end method

.method private IsNewFirmwareVersion()Z
    .registers 3

    .prologue
    .line 265
    const-string v0, "CameraFirmware_user"

    const-string v1, "IsNewFirmwareVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->CheckPhoneFWVersion()I

    move-result v0

    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->CheckCamFWVersion()I

    move-result v1

    if-le v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCurrentToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->ChkUserFirmwareFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->getPhoneFWVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->getCamFWVendor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->IsNewFirmwareDate()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)Landroid/app/AlertDialog;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->DialogPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->IsNewFirmwareVersion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->dialogErrorPopup(I)V

    return-void
.end method

.method private dialogErrorPopup(I)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 359
    const-string v1, "CameraFirmware_user"

    const-string v2, "dialogErrorPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 362
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 364
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cam FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Phone FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 368
    const v1, 0x7f080018

    new-instance v2, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$4;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user$4;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 375
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    .line 377
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 378
    return-void
.end method

.method private getCamFWVendor()Ljava/lang/String;
    .registers 6

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, cameraFW:Ljava/lang/String;
    const/4 v1, 0x0

    .line 232
    .local v1, cameraFWvendor:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v0

    .line 233
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v2, "CameraFirmware_user"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCamFWVendor() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object v1
.end method

.method private getPhoneFWVendor()Ljava/lang/String;
    .registers 6

    .prologue
    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, phoneFW:Ljava/lang/String;
    const/4 v1, 0x0

    .line 241
    .local v1, phoneFWvendor:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v0

    .line 242
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string v2, "CameraFirmware_user"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPhoneFWVendor() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-object v1
.end method

.method private init()V
    .registers 3

    .prologue
    .line 197
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->resetFWInfo()V

    .line 202
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->setContentView(I)V

    .line 55
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->init()V

    .line 56
    return-void
.end method

.method protected updateFirmwareUpdateCount()V
    .registers 5

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->getUpdateCount(Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, updateCount:I
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware_user;->setUpdateCount(Ljava/lang/String;I)V

    .line 208
    const-string v1, "CameraFirmware_user"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFirmwareUpdateCount - PREF_KEY_UPCOUNT_USER:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method
