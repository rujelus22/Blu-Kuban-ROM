.class public Lcom/infraware/polarisoffice/OfficeProductInfo;
.super Landroid/app/Activity;
.source "OfficeProductInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;
    }
.end annotation


# static fields
.field public static final APK_FILE_NAME_FOR_INSTALL:Ljava/lang/String; = "APKFileNameForInstall"

.field public static final CALL_BY_DEFAULT:I = 0x0

.field public static final CALL_BY_NOTIFICATION:I = 0x1

.field static final DOWNLOAD_CANCEL:I = 0x1

.field static final DOWNLOAD_CONFIRM_ERROR:I = 0x6

.field static final DOWNLOAD_CONNECTION_ERROR:I = 0x3

.field static final DOWNLOAD_FILE_WRITE_ERROR:I = 0x5

.field static final DOWNLOAD_LATEST_VERSION:I = 0x2

.field static final DOWNLOAD_NETWORK_ERROR:I = 0x4

.field static final DOWNLOAD_SUCCESS:I = 0x0

.field static final DOWNLOAD_UPDATE_AVAILABLE:I = 0x7

.field public static final LIVE_UPDATE_NOTI:I = 0x3

.field public static final OFFICE_INFO_CALL_TYPE:Ljava/lang/String; = "OfficeProductInfoCallType"

.field private static final POPUP_CANCELED:I = 0x258

.field private static final POPUP_MSG:I = 0xc8

.field private static final POPUP_UPDATE:I = 0x190

.field private static final POPUP_UPDATE_CONFIRM:I = 0x12c

.field private static final POPUP_UPDATE_OK_CANCEL:I = 0x1f4

.field private static final UPDATE_CHECK:I = 0x66

.field private static final UPDATE_CHECK_START:I = 0x67

.field private static final UPDATE_DOWN:I = 0x64

.field private static final UPDATE_DOWN_START:I = 0x65


# instance fields
.field private mCancelDialog:Landroid/app/AlertDialog;

.field private mCancelMsg:I

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEventHandler:Landroid/os/Handler;

.field private mIsSubUpdate:Z

.field private mPopupDialog:Landroid/app/AlertDialog;

.field private mPopupMsg:I

.field private mPopupUpdateDialog:Landroid/app/AlertDialog;

.field private mRootPath:Ljava/lang/String;

.field private mTempPath:Ljava/lang/String;

.field private mUpdateConfirmDialog:Landroid/app/AlertDialog;

.field private mUpdateProgressDialog:Landroid/app/AlertDialog;

.field private mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;

.field private m_IsUpdatedCanceled:Z

.field private m_Service_Status:I

.field private m_bPause:Z

.field private m_btUpdate:Landroid/widget/Button;

.field private m_callType:I

.field private m_nDownKey:I

.field private m_nLocaleCode:I

.field private m_nOrientation:I

.field private m_oToastMsg:Landroid/widget/Toast;

.field private m_strFileName:Ljava/lang/String;

.field private m_strSubUpdateURL:Ljava/lang/String;

.field private m_strUpdateURL:Ljava/lang/String;

.field private m_strVersion:Ljava/lang/String;

.field private m_strVersionCode:Ljava/lang/String;

.field private m_tvHomepage:Landroid/widget/TextView;

.field private m_tvUpdateMsg:Landroid/widget/TextView;

.field private updateBinder:Lcom/infraware/common/update/UpdateService;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mRootPath:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mTempPath:Ljava/lang/String;

    .line 27
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nOrientation:I

    .line 28
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nLocaleCode:I

    .line 29
    iput v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nDownKey:I

    .line 31
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersion:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersionCode:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strSubUpdateURL:Ljava/lang/String;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_oToastMsg:Landroid/widget/Toast;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_tvHomepage:Landroid/widget/TextView;

    .line 39
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_tvUpdateMsg:Landroid/widget/TextView;

    .line 40
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_btUpdate:Landroid/widget/Button;

    .line 41
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    iput v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelMsg:I

    .line 42
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mIsSubUpdate:Z

    .line 43
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_bPause:Z

    .line 44
    iput v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_Service_Status:I

    .line 45
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_IsUpdatedCanceled:Z

    .line 47
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    .line 49
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;

    .line 50
    iput v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_callType:I

    .line 77
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strFileName:Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/infraware/polarisoffice/OfficeProductInfo$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$1;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mConnection:Landroid/content/ServiceConnection;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/OfficeProductInfo;Lcom/infraware/common/update/UpdateService;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/OfficeProductInfo;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/OfficeProductInfo;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/OfficeProductInfo;)Lcom/infraware/common/update/UpdateService;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/OfficeProductInfo;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_IsUpdatedCanceled:Z

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/OfficeProductInfo;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/OfficeProductInfo;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/OfficeProductInfo;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelMsg:I

    return-void
.end method

.method static synthetic access$8(Lcom/infraware/polarisoffice/OfficeProductInfo;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mIsSubUpdate:Z

    return-void
.end method


# virtual methods
.method public checkUpdate(Ljava/lang/String;)Z
    .registers 11
    .parameter "str"

    .prologue
    const/4 v8, 0x1

    .line 555
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 556
    .local v2, netManager:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 557
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 559
    .local v3, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 560
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/common/update/UpdateService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 561
    .local v0, bindIntent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mIsSubUpdate:Z

    if-eqz v4, :cond_44

    .line 562
    const-string v4, "DOWNLOAD_URL"

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strSubUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 565
    :goto_30
    const-string v4, "CURRENT_VER"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 567
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v4, v8}, Lcom/infraware/polarisoffice/OfficeProductInfo;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 568
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;

    const/16 v5, 0x67

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 574
    .end local v0           #bindIntent:Landroid/content/Intent;
    :goto_43
    return v8

    .line 564
    .restart local v0       #bindIntent:Landroid/content/Intent;
    :cond_44
    const-string v4, "DOWNLOAD_URL"

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30

    .line 571
    .end local v0           #bindIntent:Landroid/content/Intent;
    :cond_4c
    const v4, 0x7f080068

    iput v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    .line 572
    const/16 v4, 0xc8

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_43
.end method

.method protected makeOfficeDir()V
    .registers 4

    .prologue
    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mTempPath:Ljava/lang/String;

    .line 685
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->makeRootDir()V

    .line 686
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisTemp"

    const-string v1, "polarisTemp"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mTempPath:Ljava/lang/String;

    .line 687
    return-void
.end method

.method protected makeRootDir()V
    .registers 3

    .prologue
    .line 679
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 680
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mRootPath:Ljava/lang/String;

    .line 681
    :cond_11
    return-void
.end method

.method public onChangeScreen(I)V
    .registers 5
    .parameter "nType"

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 366
    const/4 v1, 0x2

    if-ne p1, v1, :cond_48

    .line 368
    const v1, 0x7f03003f

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->setContentView(I)V

    .line 380
    :goto_10
    const v1, 0x7f0c0191

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 381
    .local v0, tvVersion:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    const v1, 0x7f0c0193

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_tvHomepage:Landroid/widget/TextView;

    .line 384
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_tvHomepage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 387
    const v1, 0x7f0c0194

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_btUpdate:Landroid/widget/Button;

    .line 388
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_btUpdate:Landroid/widget/Button;

    new-instance v2, Lcom/infraware/polarisoffice/OfficeProductInfo$4;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$4;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    return-void

    .line 374
    .end local v0           #tvVersion:Landroid/widget/TextView;
    :cond_48
    const v1, 0x7f030041

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->setContentView(I)V

    goto :goto_10
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "_newConfig"

    .prologue
    const v7, 0x7f080045

    const/4 v6, -0x2

    const v5, 0x7f080043

    const v4, 0x7f080023

    const/4 v3, -0x1

    .line 297
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1a

    .line 299
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nOrientation:I

    .line 300
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onChangeScreen(I)V

    .line 303
    :cond_1a
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 304
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nLocaleCode:I

    if-eq v1, v0, :cond_26

    .line 306
    iput v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nLocaleCode:I

    .line 311
    :cond_26
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_btUpdate:Landroid/widget/Button;

    if-eqz v1, :cond_32

    .line 312
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_btUpdate:Landroid/widget/Button;

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 315
    :cond_32
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_60

    .line 316
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 317
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 318
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 320
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 323
    :cond_60
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_85

    .line 324
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 325
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 326
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 330
    :cond_85
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_aa

    .line 331
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 332
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 333
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 337
    :cond_aa
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_cc

    .line 338
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_cc

    .line 339
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_tvUpdateMsg:Landroid/widget/TextView;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 341
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 344
    :cond_cc
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_fe

    .line 345
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 346
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 347
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    const v2, 0x7f080058

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 349
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 354
    :cond_fe
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 355
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v6, 0x7f080057

    iput v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    .line 94
    const v6, 0x7f0800b8

    iput v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelMsg:I

    .line 96
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 97
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2a

    .line 99
    const-string v6, "OfficeProductInfoCallType"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_callType:I

    .line 100
    iget v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_callType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a

    .line 101
    const/16 v6, 0x12c

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    .line 105
    :cond_2a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v6

    iput v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nLocaleCode:I

    .line 106
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nOrientation:I

    .line 108
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onPivotLock()V

    .line 110
    iget v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_11a

    .line 112
    const v6, 0x7f03003f

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeProductInfo;->setContentView(I)V

    .line 125
    :goto_4e
    const v6, 0x7f08030e

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, venderName:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 127
    .local v4, venderLenth:I
    add-int/lit8 v6, v4, -0x4

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 128
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ver "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getVersionName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersion:Ljava/lang/String;

    .line 132
    const v6, 0x7f0c0191

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeProductInfo;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 133
    .local v3, tvVersion:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersion:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v6, 0x7f0c0193

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeProductInfo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_tvHomepage:Landroid/widget/TextView;

    .line 136
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_tvHomepage:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 139
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getVersionCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersionCode:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08030c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strUpdateURL:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08030d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strSubUpdateURL:Ljava/lang/String;

    .line 144
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 145
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "com.infraware.polarisoffice.ACTION_UPDATE_AVAILABE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v6, "com.infraware.polarisoffice.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v6, "com.infraware.polarisoffice.ACTION_DISABLE_CONFIRM_VERSION"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v6, "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string v6, "com.infraware.polarisoffice.ACTION_CONNECTION_ERROR"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 150
    const-string v6, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v6, "com.infraware.polarisoffice.ACTION_FILE_WRITE_ERROR"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v6, "com.infraware.polarisoffice.ACTION_USER_CANCEL"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    new-instance v6, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;

    .line 155
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;

    invoke-virtual {p0, v6, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    new-instance v6, Lcom/infraware/polarisoffice/OfficeProductInfo$2;

    invoke-direct {v6, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$2;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;

    .line 187
    const v6, 0x7f0c0194

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeProductInfo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_btUpdate:Landroid/widget/Button;

    .line 188
    iget-object v6, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_btUpdate:Landroid/widget/Button;

    new-instance v7, Lcom/infraware/polarisoffice/OfficeProductInfo$3;

    invoke-direct {v7, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$3;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void

    .line 118
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #tvVersion:Landroid/widget/TextView;
    .end local v4           #venderLenth:I
    .end local v5           #venderName:Ljava/lang/String;
    :cond_11a
    const v6, 0x7f030041

    invoke-virtual {p0, v6}, Lcom/infraware/polarisoffice/OfficeProductInfo;->setContentView(I)V

    goto/16 :goto_4e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v8, 0x7f080045

    const v7, 0x7f080043

    const v5, 0x7f080023

    const/4 v6, 0x0

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 427
    .local v2, view:Landroid/view/View;
    sparse-switch p1, :sswitch_data_11a

    .line 539
    :goto_10
    return-object v3

    .line 429
    :sswitch_11
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 430
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030016

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 432
    const v3, 0x7f0c0073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_tvUpdateMsg:Landroid/widget/TextView;

    .line 433
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 434
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 435
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 436
    invoke-virtual {p0, v8}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 437
    new-instance v5, Lcom/infraware/polarisoffice/OfficeProductInfo$5;

    invoke-direct {v5, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$5;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    .line 436
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 447
    new-instance v4, Lcom/infraware/polarisoffice/OfficeProductInfo$6;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$6;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 463
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 433
    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    .line 464
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 465
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 466
    .local v1, nm:Landroid/app/NotificationManager;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 467
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    goto :goto_10

    .line 470
    .end local v1           #nm:Landroid/app/NotificationManager;
    :sswitch_68
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 471
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 472
    iget v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelMsg:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 473
    new-instance v4, Lcom/infraware/polarisoffice/OfficeProductInfo$7;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$7;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 477
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 470
    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    .line 478
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 479
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mCancelDialog:Landroid/app/AlertDialog;

    goto :goto_10

    .line 482
    :sswitch_8e
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 483
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 485
    iget v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 486
    new-instance v4, Lcom/infraware/polarisoffice/OfficeProductInfo$8;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$8;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 490
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 482
    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    .line 491
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 492
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupDialog:Landroid/app/AlertDialog;

    goto/16 :goto_10

    .line 495
    :sswitch_b5
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 496
    const v4, 0x7f08002d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 497
    const v4, 0x7f080058

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 498
    new-instance v4, Lcom/infraware/polarisoffice/OfficeProductInfo$9;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$9;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 509
    new-instance v4, Lcom/infraware/polarisoffice/OfficeProductInfo$10;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$10;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 514
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 495
    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    .line 515
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 516
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateConfirmDialog:Landroid/app/AlertDialog;

    goto/16 :goto_10

    .line 519
    :sswitch_e9
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 520
    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 522
    iget v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 523
    new-instance v4, Lcom/infraware/polarisoffice/OfficeProductInfo$11;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$11;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v3, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 530
    new-instance v4, Lcom/infraware/polarisoffice/OfficeProductInfo$12;

    invoke-direct {v4, p0}, Lcom/infraware/polarisoffice/OfficeProductInfo$12;-><init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 534
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 519
    iput-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    .line 535
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 536
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    goto/16 :goto_10

    .line 427
    nop

    :sswitch_data_11a
    .sparse-switch
        0xc8 -> :sswitch_8e
        0x12c -> :sswitch_b5
        0x190 -> :sswitch_11
        0x1f4 -> :sswitch_e9
        0x258 -> :sswitch_68
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 264
    return-void
.end method

.method public onInstall(Ljava/lang/String;)V
    .registers 6
    .parameter "installPath"

    .prologue
    .line 578
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, apkFile:Ljava/io/File;
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    .line 587
    .end local v1           #intent:Landroid/content/Intent;
    :goto_18
    return-void

    .line 584
    :catch_19
    move-exception v2

    goto :goto_18
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 268
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nDownKey:I

    .line 269
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    .line 275
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nDownKey:I

    if-eq v1, p1, :cond_9

    .line 276
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nDownKey:I

    .line 291
    :goto_8
    return v0

    .line 280
    :cond_9
    sparse-switch p1, :sswitch_data_16

    .line 290
    :sswitch_c
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nDownKey:I

    .line 291
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8

    .line 286
    :sswitch_13
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nDownKey:I

    goto :goto_8

    .line 280
    :sswitch_data_16
    .sparse-switch
        0x4 -> :sswitch_c
        0x52 -> :sswitch_13
        0x54 -> :sswitch_13
    .end sparse-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_bPause:Z

    .line 240
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 241
    return-void
.end method

.method public onPivotLock()V
    .registers 2

    .prologue
    .line 359
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 360
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_nOrientation:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onChangeScreen(I)V

    .line 361
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 544
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 546
    sparse-switch p1, :sswitch_data_c

    .line 552
    :goto_6
    return-void

    .line 549
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->removeDialog(I)V

    goto :goto_6

    .line 546
    nop

    :sswitch_data_c
    .sparse-switch
        0xc8 -> :sswitch_7
        0x190 -> :sswitch_7
    .end sparse-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_bPause:Z

    .line 248
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_Service_Status:I

    if-eq v0, v1, :cond_f

    .line 250
    iget v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_Service_Status:I

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    .line 251
    iput v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_Service_Status:I

    .line 254
    :cond_f
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 255
    return-void
.end method

.method public onStopService(I)Z
    .registers 6
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xc8

    .line 590
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;

    if-eqz v0, :cond_14

    .line 591
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    .line 592
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->unbindService(Landroid/content/ServiceConnection;)V

    .line 593
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;

    .line 595
    :cond_14
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_bPause:Z

    if-eqz v0, :cond_1b

    .line 597
    iput p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_Service_Status:I

    .line 651
    :cond_1a
    :goto_1a
    :pswitch_1a
    return v3

    .line 600
    :cond_1b
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    .line 602
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 603
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mUpdateProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 606
    :cond_2c
    packed-switch p1, :pswitch_data_8e

    :pswitch_2f
    goto :goto_1a

    .line 608
    :pswitch_30
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->makeOfficeDir()V

    .line 609
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strFileName:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mTempPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onInstall(Ljava/lang/String;)V

    goto :goto_1a

    .line 614
    :pswitch_50
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_IsUpdatedCanceled:Z

    if-nez v0, :cond_1a

    .line 616
    const v0, 0x7f080057

    iput v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    .line 617
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_1a

    .line 627
    :pswitch_5d
    const v0, 0x7f080068

    iput v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    .line 628
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_1a

    .line 632
    :pswitch_66
    iget-boolean v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mIsSubUpdate:Z

    if-nez v0, :cond_75

    .line 633
    const v0, 0x7f08006a

    iput v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    .line 634
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_1a

    .line 636
    :cond_75
    const v0, 0x7f080069

    iput v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    .line 637
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_1a

    .line 642
    :pswitch_7e
    const v0, 0x7f08006b

    iput v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mPopupMsg:I

    .line 643
    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_1a

    .line 647
    :pswitch_87
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->showDialog(I)V

    goto :goto_1a

    .line 606
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_50
        :pswitch_5d
        :pswitch_66
        :pswitch_7e
        :pswitch_1a
        :pswitch_87
    .end packed-switch
.end method

.method public onToastMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "message"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_oToastMsg:Landroid/widget/Toast;

    if-nez v0, :cond_11

    .line 407
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_oToastMsg:Landroid/widget/Toast;

    .line 411
    :goto_b
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_oToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 412
    return-void

    .line 409
    :cond_11
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_oToastMsg:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_b
.end method

.method public onUpdateApk(Ljava/lang/String;)Z
    .registers 11
    .parameter "str"

    .prologue
    const/4 v8, 0x1

    .line 655
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/infraware/polarisoffice/OfficeProductInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 657
    .local v2, netManager:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 659
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 661
    .local v3, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_43

    .line 662
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/common/update/UpdateService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    .local v0, bindIntent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mIsSubUpdate:Z

    if-eqz v4, :cond_44

    .line 664
    const-string v4, "DOWNLOAD_URL"

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strSubUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    :goto_30
    const-string v4, "CURRENT_VER"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v4, v8}, Lcom/infraware/polarisoffice/OfficeProductInfo;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 669
    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->mEventHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 674
    .end local v0           #bindIntent:Landroid/content/Intent;
    :cond_43
    return v8

    .line 666
    .restart local v0       #bindIntent:Landroid/content/Intent;
    :cond_44
    const-string v4, "DOWNLOAD_URL"

    iget-object v5, p0, Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30
.end method
