.class public Lcom/android/samsungtest/camerafirmware/CameraFirmware;
.super Landroid/app/Activity;
.source "CameraFirmware.java"


# instance fields
.field protected PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

.field protected PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

.field mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

.field mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentToast:Landroid/widget/Toast;

.field private mDate:Ljava/util/Date;

.field private mErrorPopup:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mPopup:Landroid/app/AlertDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    new-instance v0, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-direct {v0}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    .line 56
    new-instance v0, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    invoke-direct {v0}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;-><init>()V

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    .line 60
    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;

    .line 77
    const-string v0, "pref_firmware_upcount_eng_key"

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

    .line 79
    const-string v0, "pref_firmware_upcount_user_key"

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_USER:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    .line 83
    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    .line 85
    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    .line 94
    new-instance v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware$1;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    .line 419
    new-instance v0, Lcom/android/samsungtest/camerafirmware/CameraFirmware$4;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware$4;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private CheckCamFWDate()J
    .registers 13

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, CamFW:Ljava/lang/String;
    const/4 v1, 0x0

    .line 543
    .local v1, CamFWVersionDate:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v8}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v0

    .line 544
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, CamFWVersionY:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 546
    .local v6, ch:[C
    aget-char v8, v6, v9

    add-int/lit8 v8, v8, -0x43

    add-int/lit16 v5, v8, 0x7d9

    .line 547
    .local v5, Year:I
    const/4 v8, 0x4

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, CamFWVersionM:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 549
    .local v7, ch1:[C
    aget-char v8, v7, v9

    add-int/lit8 v8, v8, -0x41

    add-int/lit8 v4, v8, 0x1

    .line 551
    .local v4, Month:I
    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x1

    invoke-direct {v8, v5, v4, v9}, Ljava/util/Date;-><init>(III)V

    iput-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    .line 552
    const-string v8, "CameraFirmware"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CamFW Date = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    iget-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    return-wide v8
.end method

.method private CheckCamFWVersion()I
    .registers 8

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, CamFW:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v4}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getCamFWVer()Ljava/lang/String;

    move-result-object v0

    .line 561
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 562
    .local v1, CamFWVersionD:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 563
    .local v3, ch2:[C
    const/4 v4, 0x0

    aget-char v4, v3, v4

    mul-int/lit8 v4, v4, 0x7b

    const/4 v5, 0x1

    aget-char v5, v3, v5

    add-int v2, v4, v5

    .line 564
    .local v2, Version:I
    const-string v4, "CameraFirmware"

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

    .line 565
    return v2
.end method

.method private CheckPhoneFWDate()J
    .registers 13

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 512
    const/4 v4, 0x0

    .line 513
    .local v4, phoneFW:Ljava/lang/String;
    const/4 v5, 0x0

    .line 514
    .local v5, phoneFWVersionDate:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v8}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v4

    .line 515
    const/4 v8, 0x2

    invoke-virtual {v4, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 516
    .local v7, phoneFWVersionY:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 517
    .local v2, ch:[C
    aget-char v8, v2, v9

    add-int/lit8 v8, v8, -0x43

    add-int/lit16 v1, v8, 0x7d9

    .line 518
    .local v1, Year:I
    const/4 v8, 0x4

    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 519
    .local v6, phoneFWVersionM:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 520
    .local v3, ch1:[C
    aget-char v8, v3, v9

    add-int/lit8 v8, v8, -0x41

    add-int/lit8 v0, v8, 0x1

    .line 522
    .local v0, Month:I
    new-instance v8, Ljava/util/Date;

    const/4 v9, 0x1

    invoke-direct {v8, v1, v0, v9}, Ljava/util/Date;-><init>(III)V

    iput-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    .line 523
    const-string v8, "CameraFirmware"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhoneFW Date = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v8, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    return-wide v8
.end method

.method private CheckPhoneFWVersion()I
    .registers 8

    .prologue
    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, phoneFW:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v4}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    .line 532
    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 533
    .local v3, phoneFWVersionD:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 534
    .local v1, ch2:[C
    const/4 v4, 0x0

    aget-char v4, v1, v4

    mul-int/lit8 v4, v4, 0x7b

    const/4 v5, 0x1

    aget-char v5, v1, v5

    add-int v0, v4, v5

    .line 535
    .local v0, Version:I
    const-string v4, "CameraFirmware"

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

    .line 536
    return v0
.end method

.method private ChkUserFirmwareFile()Z
    .registers 6

    .prologue
    .line 454
    const/4 v0, 0x0

    .line 456
    .local v0, UserFirmwareFile:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    sget-object v3, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAMERA_FIRMWARE_INFO_USER_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    const-string v3, "RS_M5LS.bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    const-string v2, "CameraFirmware"

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

    .line 460
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 461
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 462
    const-string v2, "CameraFirmware"

    const-string v3, "User Firmware file exists"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v2, 0x1

    .line 466
    :goto_45
    return v2

    .line 465
    :cond_46
    const-string v2, "CameraFirmware"

    const-string v3, "User Firmware file doesn\'t exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v2, 0x0

    goto :goto_45
.end method

.method private DialogPopup(I)Landroid/app/AlertDialog;
    .registers 5
    .parameter "messageId"

    .prologue
    .line 569
    const-string v1, "CameraFirmware"

    const-string v2, "DialogPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 572
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 575
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 576
    .local v0, Dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cam FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

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

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 578
    const v1, 0x7f080019

    new-instance v2, Lcom/android/samsungtest/camerafirmware/CameraFirmware$5;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware$5;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 588
    const-string v1, "No"

    new-instance v2, Lcom/android/samsungtest/camerafirmware/CameraFirmware$6;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware$6;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 596
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private IsNewFirmwareDate()I
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 490
    const-string v0, "CameraFirmware"

    const-string v1, "IsNewFirmwareDate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->CheckPhoneFWDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->CheckCamFWDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_18

    .line 493
    const/4 v0, 0x1

    .line 501
    :goto_17
    return v0

    .line 495
    :cond_18
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->CheckPhoneFWDate()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->CheckCamFWDate()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_27

    .line 497
    const/4 v0, 0x0

    goto :goto_17

    .line 501
    :cond_27
    const/4 v0, -0x1

    goto :goto_17
.end method

.method private IsNewFirmwareVersion()Z
    .registers 3

    .prologue
    .line 506
    const-string v0, "CameraFirmware"

    const-string v1, "IsNewFirmwareVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->CheckPhoneFWVersion()I

    move-result v0

    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->CheckCamFWVersion()I

    move-result v1

    if-le v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method static synthetic access$000(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/samsungtest/camerafirmware/CameraFirmware;Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCurrentToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->ChkUserFirmwareFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/samsungtest/camerafirmware/CameraFirmware;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/samsungtest/camerafirmware/CameraFirmware;I)Landroid/app/AlertDialog;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->DialogPopup(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->IsNewFirmwareDate()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->IsNewFirmwareVersion()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/samsungtest/camerafirmware/CameraFirmware;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->dialogErrorPopup(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->manageFirmware()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/samsungtest/camerafirmware/CameraFirmware;Z)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->setBlockHold(Z)Z

    move-result v0

    return v0
.end method

.method private dialogErrorPopup(I)V
    .registers 5
    .parameter "messageId"

    .prologue
    .line 600
    const-string v1, "CameraFirmware"

    const-string v2, "dialogErrorPopup"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 603
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 605
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 606
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cam FW Ver : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

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

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v2}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getPhoneFWVer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 609
    const v1, 0x7f080018

    new-instance v2, Lcom/android/samsungtest/camerafirmware/CameraFirmware$7;

    invoke-direct {v2, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware$7;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 616
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    .line 618
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mErrorPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 619
    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 282
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 283
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x2000000a

    const-string v2, "TouchFirmware"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWindowManager:Landroid/view/IWindowManager;

    .line 288
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    .line 289
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 290
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 292
    const v1, 0x7f090023

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v1, 0x7f090024

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v1, 0x7f090025

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    const v1, 0x7f090026

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v1, 0x7f090027

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const v1, 0x7f090028

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->resetFWInfo()V

    .line 300
    return-void
.end method

.method private manageFirmware()V
    .registers 6

    .prologue
    const-wide/32 v3, 0x3a980

    .line 369
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 371
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_15

    .line 372
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 375
    :cond_15
    const-string v1, "Start the firmware update"

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 376
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 377
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 379
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getManageMode()[B

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    if-ne v1, v2, :cond_48

    .line 380
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 388
    :cond_33
    :goto_33
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    if-eqz v1, :cond_47

    .line 389
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getManageMode()[B

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_UPDATE:[B

    if-ne v1, v2, :cond_5a

    .line 390
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    .line 395
    :cond_47
    :goto_47
    return-void

    .line 381
    :cond_48
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCamFirmMgr:Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;

    invoke-virtual {v1}, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->getManageMode()[B

    move-result-object v1

    sget-object v2, Lcom/android/samsungtest/camerafirmware/FirmwareFileMgr;->CAM_FLAG_FIRMWARE_DUMP:[B

    if-ne v1, v2, :cond_33

    .line 382
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_33

    .line 392
    :cond_5a
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->setFirmwareMode(I)V

    goto :goto_47
.end method

.method private setBlockHold(Z)Z
    .registers 7
    .parameter "bBlock"

    .prologue
    .line 316
    const-string v2, "CameraFirmware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBlockHold - bBlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, bResult:Z
    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v2, :cond_29

    .line 320
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWindowManager:Landroid/view/IWindowManager;

    .line 323
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 324
    iget-object v2, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWindowManager:Landroid/view/IWindowManager;

    const/16 v3, 0x1a

    invoke-virtual {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v2, v3, v4, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_40} :catch_5b

    move-result v2

    or-int/2addr v0, v2

    .line 329
    :goto_42
    const-string v2, "CameraFirmware"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBlockHold - bResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v0

    .line 325
    :catch_5b
    move-exception v1

    .line 326
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_42
.end method


# virtual methods
.method protected getUpdateCount(Ljava/lang/String;)I
    .registers 4
    .parameter "key"

    .prologue
    .line 414
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 416
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected hideUpdateProgress()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 277
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 278
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    .line 279
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->init()V

    .line 92
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 364
    const-string v0, "CameraFirmware"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 366
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 222
    const-string v0, "CameraFirmware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown()-keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sparse-switch p1, :sswitch_data_22

    .line 231
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1f
    return v0

    .line 226
    :sswitch_20
    const/4 v0, 0x0

    goto :goto_1f

    .line 223
    :sswitch_data_22
    .sparse-switch
        0x3 -> :sswitch_20
        0x1a -> :sswitch_20
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 235
    const-string v0, "CameraFirmware"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown()-keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    sparse-switch p1, :sswitch_data_22

    .line 244
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1f
    return v0

    .line 239
    :sswitch_20
    const/4 v0, 0x0

    goto :goto_1f

    .line 236
    :sswitch_data_22
    .sparse-switch
        0x3 -> :sswitch_20
        0x1a -> :sswitch_20
    .end sparse-switch
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 348
    const-string v0, "CameraFirmware"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 350
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 354
    :cond_14
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->releaseCamera()V

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->setBlockHold(Z)Z

    .line 359
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 360
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 334
    const-string v0, "CameraFirmware"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->mCameraDevice:Lcom/android/samsungtest/camerafirmware/CameraDeviceController;

    invoke-virtual {v0}, Lcom/android/samsungtest/camerafirmware/CameraDeviceController;->openCamera()Z

    move-result v0

    if-nez v0, :cond_21

    .line 337
    const-string v0, "CameraFirmware"

    const-string v1, "onResume - camera is not opened"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const v0, 0x7f08003b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 344
    :cond_21
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 345
    return-void
.end method

.method protected setUpdateCount(Ljava/lang/String;I)V
    .registers 5
    .parameter "key"
    .parameter "count"

    .prologue
    .line 405
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 410
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    return-void
.end method

.method protected showUpdateProgress()V
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_21

    .line 249
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    .line 250
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/samsungtest/camerafirmware/CameraFirmware$2;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware$2;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 268
    :cond_21
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Now Updating... Warning!\nDo not turn off!\nIt will take 3 min."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_35

    .line 272
    iget-object v0, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 273
    :cond_35
    return-void
.end method

.method protected startUpdateThread()V
    .registers 3

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->setBlockHold(Z)Z

    .line 307
    new-instance v0, Ljava/lang/Thread;

    .end local v0           #thread:Ljava/lang/Thread;
    new-instance v1, Lcom/android/samsungtest/camerafirmware/CameraFirmware$3;

    invoke-direct {v1, p0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware$3;-><init>(Lcom/android/samsungtest/camerafirmware/CameraFirmware;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 312
    .restart local v0       #thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 313
    return-void
.end method

.method protected updateFirmwareUpdateCount()V
    .registers 5

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->getUpdateCount(Ljava/lang/String;)I

    move-result v0

    .line 400
    .local v0, updateCount:I
    iget-object v1, p0, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->PREF_KEY_UPCOUNT_ENG:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/camerafirmware/CameraFirmware;->setUpdateCount(Ljava/lang/String;I)V

    .line 401
    const-string v1, "CameraFirmware"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFirmwareUpdateCount - PREF_KEY_UPCOUNT_ENG:["

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

    .line 402
    return-void
.end method
