.class public Lcom/infraware/polarisoffice/OfficeMainActivity;
.super Landroid/app/TabActivity;
.source "OfficeMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;
    }
.end annotation


# static fields
.field private static final LIVE_UPDATE_CHECK_ALL:I = 0x2

.field private static final LIVE_UPDATE_CHECK_OFF:I = 0x0

.field private static final LIVE_UPDATE_CHECK_WIFIONLY:I = 0x1

.field public static final LIVE_UPDATE_NOTI:I = 0x3

.field private static final TAB_ID_LOCAL:I = 0x0

.field private static final TAB_ID_RECENT:I = 0x1

.field private static final TAB_ID_WEB:I = 0x2

.field private static final TAB_STRING_ID_LOCAL:Ljava/lang/String; = "TAB_LOCAL"

.field private static final TAB_STRING_ID_RECENT:Ljava/lang/String; = "TAB_RECNET"

.field private static final TAB_STRING_ID_WEB:Ljava/lang/String; = "TAB_WEB"

.field private static final UPDATE_CHECK:I = 0x66


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mEventHandler:Landroid/os/Handler;

.field private mIsSubUpdate:Z

.field private mLiveUpdateNoti:Landroid/app/Notification;

.field private mNotiManager:Landroid/app/NotificationManager;

.field private mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;

.field private m_btnCreate:Landroid/widget/ImageButton;

.field private m_btnSearch:Landroid/widget/ImageButton;

.field private m_iLiveUpdateCheck:I

.field private m_nLocaleCode:I

.field private m_nOrientation:I

.field private m_oLocalContext:Landroid/content/Context;

.field private m_oRecentContext:Landroid/content/Context;

.field private m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

.field private m_oWebContext:Landroid/content/Context;

.field private m_strSubUpdateURL:Ljava/lang/String;

.field private m_strUpdateURL:Ljava/lang/String;

.field private m_strVersionCode:Ljava/lang/String;

.field private m_viewTab1:Landroid/view/View;

.field private m_viewTab2:Landroid/view/View;

.field private m_viewTab3:Landroid/view/View;

.field private updateBinder:Lcom/infraware/common/update/UpdateService;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 38
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nOrientation:I

    .line 39
    iput v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nLocaleCode:I

    .line 44
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    .line 45
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oRecentContext:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oWebContext:Landroid/content/Context;

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_iLiveUpdateCheck:I

    .line 55
    iput-boolean v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mIsSubUpdate:Z

    .line 57
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_strSubUpdateURL:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_strVersionCode:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mEventHandler:Landroid/os/Handler;

    .line 60
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;

    .line 61
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mNotiManager:Landroid/app/NotificationManager;

    .line 62
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mLiveUpdateNoti:Landroid/app/Notification;

    .line 66
    new-instance v0, Lcom/infraware/polarisoffice/OfficeMainActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/OfficeMainActivity$1;-><init>(Lcom/infraware/polarisoffice/OfficeMainActivity;)V

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 117
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab1:Landroid/view/View;

    .line 118
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab2:Landroid/view/View;

    .line 119
    iput-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab3:Landroid/view/View;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/OfficeMainActivity;Lcom/infraware/common/update/UpdateService;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/OfficeMainActivity;)Lcom/infraware/common/update/UpdateService;
    .registers 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    return-object v0
.end method

.method private bindUpdateService()V
    .registers 6

    .prologue
    .line 552
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/common/update/UpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 553
    .local v0, bindIntent:Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mIsSubUpdate:Z

    if-eqz v1, :cond_29

    .line 554
    const-string v1, "DOWNLOAD_URL"

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_strSubUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    :goto_12
    const-string v1, "CURRENT_VER"

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_strVersionCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 558
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/infraware/polarisoffice/OfficeMainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 559
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mEventHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 560
    return-void

    .line 556
    :cond_29
    const-string v1, "DOWNLOAD_URL"

    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_strUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12
.end method

.method private checkLiveUpdate()V
    .registers 5

    .prologue
    .line 532
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 533
    .local v1, netManager:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 534
    .local v0, mobile:Landroid/net/NetworkInfo;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 536
    .local v2, wifi:Landroid/net/NetworkInfo;
    iget v3, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_iLiveUpdateCheck:I

    packed-switch v3, :pswitch_data_32

    .line 549
    :cond_17
    :goto_17
    :pswitch_17
    return-void

    .line 540
    :pswitch_18
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 541
    :cond_24
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->bindUpdateService()V

    goto :goto_17

    .line 544
    :pswitch_28
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 545
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->bindUpdateService()V

    goto :goto_17

    .line 536
    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_17
        :pswitch_28
        :pswitch_18
    .end packed-switch
.end method

.method private getLiveUpdateSettingValue()V
    .registers 5

    .prologue
    .line 522
    new-instance v0, Lcom/infraware/common/util/ini/IniFile;

    const-string v2, "dvToolbarConfig.ini"

    invoke-direct {v0, v2}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 524
    .local v0, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v2, "LIVE_UPDATE_SETTING"

    .line 525
    const-string v3, "LIVE_UPDATE"

    .line 524
    invoke-virtual {v0, v2, v3}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 527
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_iLiveUpdateCheck:I

    .line 529
    :cond_17
    return-void
.end method

.method private getStateUserRegisterAdded()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 473
    const-string v2, "PolarisDocumentMaster"

    invoke-virtual {p0, v2, v3}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 475
    .local v1, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 476
    .local v0, bRegister:Z
    const-string v2, "UserRegisterSuccess"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 478
    return v0
.end method

.method private isExpirationWeek()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 483
    const-string v6, "PolarisDocumentMaster"

    invoke-virtual {p0, v6, v5}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 485
    .local v3, pref:Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 486
    .local v0, bCheck:Z
    const-string v6, "UserRegisterShowAfterWeek"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 488
    if-eqz v0, :cond_35

    .line 490
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 492
    .local v1, cCurTime:Ljava/util/Calendar;
    const-string v6, "UserRegisterCurTime"

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, strOldTime:Ljava/lang/String;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 494
    .local v2, cOldTime:Ljava/util/Calendar;
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 495
    const/4 v6, 0x5

    const/4 v7, 0x7

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 497
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v6

    if-lez v6, :cond_35

    .line 498
    const/4 v5, 0x1

    .line 501
    .end local v1           #cCurTime:Ljava/util/Calendar;
    .end local v2           #cOldTime:Ljava/util/Calendar;
    .end local v4           #strOldTime:Ljava/lang/String;
    :cond_35
    return v5
.end method

.method private isLocalStorage(I)Z
    .registers 4
    .parameter "type"

    .prologue
    const/4 v0, 0x1

    .line 515
    if-eq p1, v0, :cond_6

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 518
    :cond_6
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private isSdcard()Z
    .registers 3

    .prologue
    .line 505
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, stateSd:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 508
    const/4 v1, 0x1

    .line 510
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private setPivotLock(Z)V
    .registers 3
    .parameter "bLock"

    .prologue
    .line 426
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    .line 427
    return-void
.end method

.method private setTabWidget(ILjava/lang/String;)V
    .registers 8
    .parameter "currentTab"
    .parameter "localPath"

    .prologue
    const/4 v4, 0x1

    .line 431
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 434
    .local v1, tabHost:Landroid/widget/TabHost;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab1:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->removeView(Landroid/view/View;)V

    .line 435
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab2:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->removeView(Landroid/view/View;)V

    .line 436
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab3:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->removeView(Landroid/view/View;)V

    .line 439
    :try_start_14
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "key_storage_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 441
    const-string v2, "key_storage_path"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const-string v2, "TAB_LOCAL"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 443
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab1:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 444
    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 442
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 446
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/infraware/polarisoffice/recent/RecentFileActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.LocalVIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const-string v2, "key_recent_close"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 449
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 450
    const-string v2, "TAB_RECNET"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 451
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab2:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 452
    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 450
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 454
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v2, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 455
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "key_storage_type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    const-string v2, "TAB_WEB"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 457
    iget-object v3, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab3:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 458
    invoke-virtual {v2, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 456
    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V
    :try_end_83
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_83} :catch_a2

    .line 463
    .end local v0           #intent:Landroid/content/Intent;
    :goto_83
    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 465
    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f020273

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->setLeftStripDrawable(I)V

    .line 466
    invoke-virtual {v1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const v3, 0x7f020274

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->setRightStripDrawable(I)V

    .line 468
    invoke-virtual {v1, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 469
    return-void

    .line 460
    :catch_a2
    move-exception v2

    goto :goto_83
.end method


# virtual methods
.method public deleteAPKFile()V
    .registers 8

    .prologue
    .line 607
    const-string v4, "/mnt/sdcard/.polarisOffice/polarisTemp"

    const-string v5, "polarisTemp"

    const-string v6, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v4, v5, v6, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, tempPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 609
    .local v2, tempFolder:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 610
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 611
    .local v0, files:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    array-length v4, v0

    if-lt v1, v4, :cond_1e

    .line 619
    .end local v0           #files:[Ljava/io/File;
    .end local v1           #i:I
    :cond_1d
    return-void

    .line 612
    .restart local v0       #files:[Ljava/io/File;
    .restart local v1       #i:I
    :cond_1e
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 613
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 614
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 611
    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 322
    invoke-super {p0, p1, p2, p3}, Landroid/app/TabActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 323
    sparse-switch p1, :sswitch_data_34

    .line 346
    :goto_8
    return-void

    .line 326
    :sswitch_9
    invoke-direct {p0, v2, v3}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setTabWidget(ILjava/lang/String;)V

    goto :goto_8

    .line 329
    :sswitch_d
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2f

    if-eqz p3, :cond_2f

    .line 331
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getStateUserRegisterAdded()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 333
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->isExpirationWeek()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 335
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/common/register/UserRegister;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x1001

    invoke-virtual {p0, v0, v1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_8

    .line 340
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2b
    invoke-direct {p0, v2, v3}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setTabWidget(ILjava/lang/String;)V

    goto :goto_8

    .line 343
    :cond_2f
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->finish()V

    goto :goto_8

    .line 323
    nop

    :sswitch_data_34
    .sparse-switch
        0x1001 -> :sswitch_9
        0x100f -> :sswitch_d
    .end sparse-switch
.end method

.method public onButtonClick(Landroid/view/View;)V
    .registers 4
    .parameter "target"

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    .line 351
    .local v0, manager:Landroid/app/LocalActivityManager;
    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    .line 353
    invoke-static {}, Lcom/infraware/polarisoffice/MyApplication;->isButtonEnable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 366
    :goto_d
    return-void

    .line 356
    :cond_e
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_22

    goto :goto_d

    .line 360
    :pswitch_1a
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->onCreateButtonClick()V

    goto :goto_d

    .line 363
    :pswitch_1e
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->onSearchButtonClick()V

    goto :goto_d

    .line 357
    :pswitch_data_22
    .packed-switch 0x7f0c018b
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method public onChangeScreen(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 411
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "_newConfig"

    .prologue
    const v4, 0x7f0c018e

    .line 287
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 288
    .local v0, nlocale:I
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_18

    .line 290
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nOrientation:I

    .line 291
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nOrientation:I

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeMainActivity;->onChangeScreen(I)V

    .line 294
    :cond_18
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nLocaleCode:I

    if-eq v2, v0, :cond_69

    .line 296
    iput v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nLocaleCode:I

    .line 300
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab1:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 301
    .local v1, tvTitle:Landroid/widget/TextView;
    const v2, 0x7f0800fc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 303
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab2:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tvTitle:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 304
    .restart local v1       #tvTitle:Landroid/widget/TextView;
    const v2, 0x7f0800fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 306
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab3:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tvTitle:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 307
    .restart local v1       #tvTitle:Landroid/widget/TextView;
    const v2, 0x7f0800fe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 309
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    if-eqz v2, :cond_53

    .line 310
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    check-cast v2, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onLocaleChanged()V

    .line 311
    :cond_53
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oRecentContext:Landroid/content/Context;

    if-eqz v2, :cond_5e

    .line 312
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oRecentContext:Landroid/content/Context;

    check-cast v2, Lcom/infraware/polarisoffice/recent/RecentFileActivity;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/recent/RecentFileActivity;->onLocaleChanged()V

    .line 313
    :cond_5e
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oWebContext:Landroid/content/Context;

    if-eqz v2, :cond_69

    .line 314
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oWebContext:Landroid/content/Context;

    check-cast v2, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onLocaleChanged()V

    .line 317
    .end local v1           #tvTitle:Landroid/widget/TextView;
    :cond_69
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 318
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "saveInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v11, 0x7f03003c

    invoke-virtual {p0, v11}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setContentView(I)V

    .line 127
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08030c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_strUpdateURL:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f08030d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_strSubUpdateURL:Ljava/lang/String;

    .line 129
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getVersionCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_strVersionCode:Ljava/lang/String;

    .line 131
    const-string v11, "notification"

    invoke-virtual {p0, v11}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mNotiManager:Landroid/app/NotificationManager;

    .line 133
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v11, "com.infraware.polarisoffice.ACTION_UPDATE_AVAILABE"

    invoke-virtual {v1, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    new-instance v11, Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;

    invoke-direct {v11, p0}, Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;-><init>(Lcom/infraware/polarisoffice/OfficeMainActivity;)V

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;

    .line 137
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;

    invoke-virtual {p0, v11, v1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    new-instance v11, Lcom/infraware/polarisoffice/OfficeMainActivity$2;

    invoke-direct {v11, p0}, Lcom/infraware/polarisoffice/OfficeMainActivity$2;-><init>(Lcom/infraware/polarisoffice/OfficeMainActivity;)V

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mEventHandler:Landroid/os/Handler;

    .line 154
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getLiveUpdateSettingValue()V

    .line 155
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->checkLiveUpdate()V

    .line 158
    const v11, 0x7f0c018c

    invoke-virtual {p0, v11}, Lcom/infraware/polarisoffice/OfficeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_btnSearch:Landroid/widget/ImageButton;

    .line 159
    const v11, 0x7f0c018b

    invoke-virtual {p0, v11}, Lcom/infraware/polarisoffice/OfficeMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_btnCreate:Landroid/widget/ImageButton;

    .line 161
    const-string v11, "layout_inflater"

    invoke-virtual {p0, v11}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 162
    .local v5, layout:Landroid/view/LayoutInflater;
    const v11, 0x7f03003d

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab1:Landroid/view/View;

    .line 163
    const v11, 0x7f03003d

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab2:Landroid/view/View;

    .line 164
    const v11, 0x7f03003d

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab3:Landroid/view/View;

    .line 169
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab1:Landroid/view/View;

    const v12, 0x7f0c018d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 170
    .local v4, ivIcon:Landroid/widget/ImageView;
    const v11, 0x7f0200e4

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 172
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab1:Landroid/view/View;

    const v12, 0x7f0c018e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 173
    .local v8, tvTitle:Landroid/widget/TextView;
    const v11, 0x7f0800fc

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 174
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070034

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 176
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab2:Landroid/view/View;

    const v12, 0x7f0c018d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #ivIcon:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 177
    .restart local v4       #ivIcon:Landroid/widget/ImageView;
    const v11, 0x7f0200e5

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab2:Landroid/view/View;

    const v12, 0x7f0c018e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tvTitle:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 180
    .restart local v8       #tvTitle:Landroid/widget/TextView;
    const v11, 0x7f0800fd

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 181
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070034

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 183
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab3:Landroid/view/View;

    const v12, 0x7f0c018d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #ivIcon:Landroid/widget/ImageView;
    check-cast v4, Landroid/widget/ImageView;

    .line 184
    .restart local v4       #ivIcon:Landroid/widget/ImageView;
    const v11, 0x7f0200e6

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_viewTab3:Landroid/view/View;

    const v12, 0x7f0c018e

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #tvTitle:Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 187
    .restart local v8       #tvTitle:Landroid/widget/TextView;
    const v11, 0x7f0800fe

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 188
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070034

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 190
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v11

    iput-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    .line 191
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v11, p0}, Lcom/infraware/common/config/RuntimeConfig;->initializeSetting(Landroid/content/Context;)V

    .line 193
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v11

    iput v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nLocaleCode:I

    .line 194
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    iput v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nOrientation:I

    .line 196
    new-instance v2, Lcom/infraware/common/util/ini/IniFile;

    const-string v11, "dvToolbarConfig.ini"

    invoke-direct {v2, v11}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v11, "POLSAIRS_DOCUMENT_SETTING"

    const-string v12, "PIVOT_LOCK"

    invoke-virtual {v2, v11, v12}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 198
    .local v9, value:Ljava/lang/String;
    if-eqz v9, :cond_15a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_15c

    .line 199
    :cond_15a
    const-string v9, "0"

    .line 201
    :cond_15c
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x30

    if-ne v11, v12, :cond_198

    const/4 v0, 0x0

    .line 202
    .local v0, bLock:Z
    :goto_166
    if-eqz v0, :cond_175

    .line 204
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v11, p0, v0}, Lcom/infraware/common/config/RuntimeConfig;->setPivotLock(Landroid/app/Activity;Z)V

    .line 205
    iget-object v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v11, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v11

    iput v11, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nOrientation:I

    .line 208
    :cond_175
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->onPivotLock()V

    .line 210
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->deleteAPKFile()V

    .line 212
    invoke-static {}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->getInstance()Lcom/infraware/filemanager/webstorage/WebStorageAPI;

    move-result-object v10

    .line 213
    .local v10, webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    invoke-virtual {v10}, Lcom/infraware/filemanager/webstorage/WebStorageAPI;->clear()Z

    .line 215
    if-nez p1, :cond_19a

    .line 217
    new-instance v3, Landroid/content/Intent;

    const-class v11, Lcom/infraware/polarisoffice/OfficeMainLogo;

    invoke-direct {v3, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v3, intent:Landroid/content/Intent;
    const-string v11, "key_show_time"

    const/16 v12, 0x7d0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const/16 v11, 0x100f

    invoke-virtual {p0, v3, v11}, Lcom/infraware/polarisoffice/OfficeMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    .end local v3           #intent:Landroid/content/Intent;
    :goto_197
    return-void

    .line 201
    .end local v0           #bLock:Z
    .end local v10           #webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    :cond_198
    const/4 v0, 0x1

    goto :goto_166

    .line 223
    .restart local v0       #bLock:Z
    .restart local v10       #webAPI:Lcom/infraware/filemanager/webstorage/WebStorageAPI;
    :cond_19a
    const-string v11, "key_current_tab"

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 224
    .local v7, tabIndex:I
    const-string v11, "key_storage_path"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, localPath:Ljava/lang/String;
    invoke-direct {p0, v7, v6}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setTabWidget(ILjava/lang/String;)V

    goto :goto_197
.end method

.method public onCreateButtonClick()V
    .registers 3

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 371
    .local v0, currentTab:I
    packed-switch v0, :pswitch_data_24

    .line 383
    :cond_b
    :goto_b
    return-void

    .line 375
    :pswitch_c
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    if-eqz v1, :cond_b

    .line 376
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    check-cast v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onCreateEvent()V

    goto :goto_b

    .line 379
    :pswitch_18
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oWebContext:Landroid/content/Context;

    if-eqz v1, :cond_b

    .line 380
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oWebContext:Landroid/content/Context;

    check-cast v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->onCreateEvent()V

    goto :goto_b

    .line 371
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_18
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mUpdateReceiver:Lcom/infraware/polarisoffice/OfficeMainActivity$UpdateReceiver;

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 254
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 256
    invoke-super {p0}, Landroid/app/TabActivity;->onDestroy()V

    .line 257
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 275
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 281
    invoke-super {p0, p1, p2}, Landroid/app/TabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    if-eqz v1, :cond_11

    .line 235
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    check-cast v0, Lcom/infraware/polarisoffice/OfficeFileManager;

    .line 236
    .local v0, oLocal:Lcom/infraware/polarisoffice/OfficeFileManager;
    invoke-virtual {v0}, Lcom/infraware/polarisoffice/OfficeFileManager;->onPauseDialog()V

    .line 238
    .end local v0           #oLocal:Lcom/infraware/polarisoffice/OfficeFileManager;
    :cond_11
    invoke-super {p0}, Landroid/app/TabActivity;->onPause()V

    .line 239
    return-void
.end method

.method public onPivotLock()V
    .registers 3

    .prologue
    .line 415
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->isPivotLock(Landroid/content/Context;)Z

    move-result v0

    .line 417
    .local v0, bLock:Z
    if-eqz v0, :cond_10

    .line 418
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v1, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nOrientation:I

    .line 420
    :cond_10
    iget v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->onChangeScreen(I)V

    .line 421
    invoke-direct {p0, v0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setPivotLock(Z)V

    .line 422
    return-void
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/TabActivity;->onResume()V

    .line 245
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 263
    .local v0, tabHost:Landroid/widget/TabHost;
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v1

    if-ltz v1, :cond_19

    .line 264
    const-string v1, "key_current_tab"

    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 266
    :cond_19
    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    if-eqz v1, :cond_30

    .line 267
    const-string v2, "key_storage_path"

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    check-cast v1, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v1}, Lcom/infraware/polarisoffice/OfficeFileManager;->getCurPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_30
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 270
    return-void
.end method

.method public onSearchButtonClick()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 387
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 388
    .local v1, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    .line 389
    .local v0, currentTab:I
    if-ne v0, v2, :cond_f

    .line 391
    invoke-static {v2}, Lcom/infraware/polarisoffice/MyApplication;->setButtonEnable(Z)V

    .line 406
    :cond_e
    :goto_e
    return-void

    .line 395
    :cond_f
    packed-switch v0, :pswitch_data_2c

    :pswitch_12
    goto :goto_e

    .line 398
    :pswitch_13
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    if-eqz v2, :cond_e

    .line 399
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    check-cast v2, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onSearchEvent()V

    goto :goto_e

    .line 402
    :pswitch_1f
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oWebContext:Landroid/content/Context;

    if-eqz v2, :cond_e

    .line 403
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oWebContext:Landroid/content/Context;

    check-cast v2, Lcom/infraware/polarisoffice/OfficeFileManager;

    invoke-virtual {v2}, Lcom/infraware/polarisoffice/OfficeFileManager;->onSearchEvent()V

    goto :goto_e

    .line 395
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_1f
    .end packed-switch
.end method

.method public onStopService()Z
    .registers 11

    .prologue
    const v9, 0x7f080059

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 563
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    if-eqz v2, :cond_15

    .line 564
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    iput-boolean v7, v2, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    .line 565
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v2}, Lcom/infraware/polarisoffice/OfficeMainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 566
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    .line 568
    :cond_15
    iget v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_iLiveUpdateCheck:I

    if-eqz v2, :cond_76

    .line 569
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mLiveUpdateNoti:Landroid/app/Notification;

    if-nez v2, :cond_76

    .line 570
    new-instance v2, Landroid/app/Notification;

    const v3, 0x7f020101

    .line 571
    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 570
    iput-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mLiveUpdateNoti:Landroid/app/Notification;

    .line 573
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mLiveUpdateNoti:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    .line 574
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mLiveUpdateNoti:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 576
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 577
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.infraware.polarisoffice.ACTION_OFFICE_INFO"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const/high16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 580
    const-string v2, "OfficeProductInfoCallType"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const/high16 v2, 0x4000

    invoke-static {p0, v7, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 582
    .local v0, content:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mLiveUpdateNoti:Landroid/app/Notification;

    .line 583
    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 584
    invoke-virtual {p0, v9}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 582
    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 587
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mNotiManager:Landroid/app/NotificationManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->mLiveUpdateNoti:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 591
    .end local v0           #content:Landroid/app/PendingIntent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_76
    return v8
.end method

.method public setBtnCreate(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->isSdcard()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->isLocalStorage(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 97
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_btnCreate:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 100
    :goto_12
    return-void

    .line 99
    :cond_13
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_btnCreate:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_12
.end method

.method public setBtnSearch(I)V
    .registers 4
    .parameter "type"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->isSdcard()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/OfficeMainActivity;->isLocalStorage(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 104
    :cond_c
    if-eqz p1, :cond_18

    .line 105
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oRecentContext:Landroid/content/Context;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oRecentContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/infraware/polarisoffice/recent/RecentFileActivity;

    if-eqz v0, :cond_1f

    .line 106
    :cond_18
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_btnSearch:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 109
    :goto_1e
    return-void

    .line 108
    :cond_1f
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_btnSearch:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1e
.end method

.method public setContext(Landroid/content/Context;I)V
    .registers 4
    .parameter "context"
    .parameter "type"

    .prologue
    .line 80
    instance-of v0, p1, Lcom/infraware/polarisoffice/OfficeFileManager;

    if-eqz v0, :cond_16

    .line 81
    const/4 v0, 0x1

    if-ne p2, v0, :cond_13

    .line 82
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oLocalContext:Landroid/content/Context;

    .line 86
    :goto_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oRecentContext:Landroid/content/Context;

    .line 91
    :cond_c
    :goto_c
    invoke-virtual {p0, p2}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setBtnCreate(I)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/infraware/polarisoffice/OfficeMainActivity;->setBtnSearch(I)V

    .line 93
    return-void

    .line 84
    :cond_13
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oWebContext:Landroid/content/Context;

    goto :goto_9

    .line 88
    :cond_16
    instance-of v0, p1, Lcom/infraware/polarisoffice/recent/RecentFileActivity;

    if-eqz v0, :cond_c

    .line 89
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity;->m_oRecentContext:Landroid/content/Context;

    goto :goto_c
.end method

.method public setEnabled(Z)V
    .registers 4
    .parameter "isEnable"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 114
    .local v0, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 115
    return-void
.end method
