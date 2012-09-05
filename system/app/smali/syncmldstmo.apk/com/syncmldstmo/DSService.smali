.class public Lcom/syncmldstmo/DSService;
.super Landroid/app/Service;
.source "DSService.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/DSService$smlAccountsUpdatedListener;
    }
.end annotation


# static fields
.field public static ErrorMessage:Landroid/os/Handler;

.field public static PhoneState:Lcom/syncmldstmo/cust/smlPhoneStatus;

.field public static _task:Lcom/syncmldstmo/base/smlTask;

.field public static _uitask:Lcom/syncmldstmo/smluiTask;

.field public static agent:Lcom/syncmldstmo/base/smlAgent;

.field public static bAutoSyncReady:Z

.field private static bGetFriendSyncing:Z

.field public static hAutoConnecting:Landroid/os/Handler;

.field private static mContext:Landroid/content/Context;

.field private static mSyncIndecator:Landroid/app/NotificationManager;

.field private static nChangedItem:I

.field public static smldsApnHandler:Landroid/os/Handler;

.field private static szCurrentReleaseVer:Ljava/lang/String;


# instance fields
.field public mAccountsUpdatedListener:Lcom/syncmldstmo/DSService$smlAccountsUpdatedListener;

.field private final mHandler:Landroid/os/Handler;

.field private mLocaleReceiver:Landroid/content/BroadcastReceiver;

.field private mSyncStatusObserver:Landroid/content/SyncStatusObserver;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 46
    sput-object v0, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    .line 47
    sput-object v0, Lcom/syncmldstmo/DSService;->smldsApnHandler:Landroid/os/Handler;

    .line 48
    sput-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    .line 50
    sput-object v0, Lcom/syncmldstmo/DSService;->_task:Lcom/syncmldstmo/base/smlTask;

    .line 51
    sput-object v0, Lcom/syncmldstmo/DSService;->_uitask:Lcom/syncmldstmo/smluiTask;

    .line 54
    sput-boolean v1, Lcom/syncmldstmo/DSService;->bAutoSyncReady:Z

    .line 69
    sput-object v0, Lcom/syncmldstmo/DSService;->mSyncIndecator:Landroid/app/NotificationManager;

    .line 71
    const-string v0, ""

    sput-object v0, Lcom/syncmldstmo/DSService;->szCurrentReleaseVer:Ljava/lang/String;

    .line 72
    sput v1, Lcom/syncmldstmo/DSService;->nChangedItem:I

    .line 73
    sput-boolean v1, Lcom/syncmldstmo/DSService;->bGetFriendSyncing:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/syncmldstmo/DSService;->mToast:Landroid/widget/Toast;

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/syncmldstmo/DSService;->mHandler:Landroid/os/Handler;

    .line 477
    new-instance v0, Lcom/syncmldstmo/DSService$4;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/DSService$4;-><init>(Lcom/syncmldstmo/DSService;)V

    iput-object v0, p0, Lcom/syncmldstmo/DSService;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    .line 550
    new-instance v0, Lcom/syncmldstmo/DSService$5;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/DSService$5;-><init>(Lcom/syncmldstmo/DSService;)V

    iput-object v0, p0, Lcom/syncmldstmo/DSService;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    .line 787
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/syncmldstmo/DSService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/syncmldstmo/DSService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getChangedItem()I
    .registers 1

    .prologue
    .line 853
    sget v0, Lcom/syncmldstmo/DSService;->nChangedItem:I

    return v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 674
    sget-object v0, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getGetFriendSyncing()Z
    .registers 1

    .prologue
    .line 863
    sget-boolean v0, Lcom/syncmldstmo/DSService;->bGetFriendSyncing:Z

    return v0
.end method

.method public static setChangedItem(I)V
    .registers 1
    .parameter "ChangedItem"

    .prologue
    .line 858
    sput p0, Lcom/syncmldstmo/DSService;->nChangedItem:I

    .line 859
    return-void
.end method

.method public static setGetFriendSyncing(Z)V
    .registers 1
    .parameter "GetFriendSyncing"

    .prologue
    .line 868
    sput-boolean p0, Lcom/syncmldstmo/DSService;->bGetFriendSyncing:Z

    .line 869
    return-void
.end method

.method public static smlCheckBeforeStartSync()Z
    .registers 6

    .prologue
    const/16 v5, 0x39

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 383
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    .line 385
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    iget-boolean v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    if-nez v3, :cond_12

    .line 387
    const-string v3, "profileInfo.bIsMember is false. return false"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 437
    :goto_11
    return v1

    .line 391
    :cond_12
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlGetRoamingUI()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 393
    const-string v3, "Roaming UI Display. return false"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11

    .line 397
    :cond_1e
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getSyncStart()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 399
    const-string v3, "already sync start... return false"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11

    .line 403
    :cond_2a
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 405
    const-string v3, "Syncing... return false"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_11

    .line 409
    :cond_36
    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v3, :cond_4d

    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v3, :cond_4d

    .line 411
    const-string v3, "no selecte syncitem. unable sync. return false"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 412
    sget-object v2, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11

    .line 416
    :cond_4d
    invoke-static {}, Lcom/syncmldstmo/DSService;->getChangedItem()I

    move-result v3

    if-eqz v3, :cond_82

    .line 418
    invoke-static {}, Lcom/syncmldstmo/DSService;->getChangedItem()I

    move-result v3

    if-ne v3, v2, :cond_6a

    .line 420
    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v3, :cond_82

    .line 422
    const-string v3, "unchecked contacts item. unable sync. return false"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 423
    sget-object v2, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11

    .line 427
    :cond_6a
    invoke-static {}, Lcom/syncmldstmo/DSService;->getChangedItem()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_82

    .line 429
    iget-object v3, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v3, :cond_82

    .line 431
    const-string v3, "unchecked calendar item. unable sync. return false"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 432
    sget-object v2, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11

    :cond_82
    move v1, v2

    .line 437
    goto :goto_11
.end method

.method public static smlCheckSIMInfo()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    .line 339
    sget-object v3, Lcom/syncmldstmo/cust/smlPhoneStatus;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 341
    .local v0, nSIMState:I
    const/4 v3, 0x5

    if-eq v3, v0, :cond_f

    .line 343
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetExistSIMforRetry(Z)V

    .line 372
    :goto_e
    return-void

    .line 348
    :cond_f
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetIMSIFromSIM()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, szIMSI:Ljava/lang/String;
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetPhoneIMSI()Ljava/lang/String;

    move-result-object v2

    .line 351
    .local v2, szSavedIMSI:Ljava/lang/String;
    invoke-static {v5}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetExistSIMforRetry(Z)V

    .line 352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new SIM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", old SIM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 354
    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 355
    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlSetPhoneIMSI(Ljava/lang/String;)V

    .line 357
    :cond_43
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetPhoneIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 359
    const-string v3, "SIM db swap!!!"

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 361
    sget-object v3, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/syncmldstmo/database/smlDbSql;->smlDbSqlFullReset(Landroid/content/Context;)V

    .line 362
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlDbInit()V

    .line 364
    invoke-static {v1}, Lcom/syncmldstmo/database/smlDb;->smlSetPhoneIMSI(Ljava/lang/String;)V

    goto :goto_e

    .line 368
    :cond_5e
    const-string v3, "SIM equals!!!"

    invoke-static {v5, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_e
.end method

.method public static smlGetAutoSyncReady()Z
    .registers 1

    .prologue
    .line 468
    sget-boolean v0, Lcom/syncmldstmo/DSService;->bAutoSyncReady:Z

    return v0
.end method

.method public static smlGetCalendarString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 752
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 753
    .local v1, szSalesCode:Ljava/lang/String;
    const-string v0, ""

    .line 755
    .local v0, szCalendar:Ljava/lang/String;
    const-string v2, "DTM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 757
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f06004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 784
    :goto_17
    return-object v0

    .line 759
    :cond_18
    const-string v2, "TMZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 761
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f06004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 763
    :cond_2a
    const-string v2, "MAX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 765
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 767
    :cond_3c
    const-string v2, "CRO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 769
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060054

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 771
    :cond_4e
    const-string v2, "TMS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 773
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060057

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 775
    :cond_60
    const-string v2, "COS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 777
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f06005a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 781
    :cond_72
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f06002a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public static smlGetContactString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 715
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 716
    .local v1, szSalesCode:Ljava/lang/String;
    const-string v0, ""

    .line 718
    .local v0, szContact:Ljava/lang/String;
    const-string v2, "DTM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 720
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f06004a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 747
    :goto_17
    return-object v0

    .line 722
    :cond_18
    const-string v2, "TMZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 724
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 726
    :cond_2a
    const-string v2, "MAX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 728
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060050

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 730
    :cond_3c
    const-string v2, "CRO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 732
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060053

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 734
    :cond_4e
    const-string v2, "TMS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 736
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060056

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 738
    :cond_60
    const-string v2, "COS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 740
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060059

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 744
    :cond_72
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060029

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public static smlGetMyPhonebookString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 679
    invoke-static {}, Lcom/syncmldstmo/cust/smlDevInfoAdapter;->smldevAdpGetSalesCode()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, szSalesCode:Ljava/lang/String;
    const-string v0, ""

    .line 681
    .local v0, szMyPhonebook:Ljava/lang/String;
    const-string v2, "DTM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 683
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060049

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 710
    :goto_17
    return-object v0

    .line 685
    :cond_18
    const-string v2, "TMZ"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 687
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f06004c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 689
    :cond_2a
    const-string v2, "MAX"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 691
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f06004f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 693
    :cond_3c
    const-string v2, "CRO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 695
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060052

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 697
    :cond_4e
    const-string v2, "TMS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 699
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060055

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 701
    :cond_60
    const-string v2, "COS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 703
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060058

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 707
    :cond_72
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_17
.end method

.method public static smlGetServiceManager(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter "serviceName"

    .prologue
    .line 820
    const/4 v2, 0x0

    .line 823
    .local v2, manager:Ljava/lang/Object;
    :try_start_1
    sget-object v3, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_41

    move-result-object v2

    .line 824
    if-nez v2, :cond_37

    .line 826
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    const/16 v3, 0xa

    if-ge v1, v3, :cond_37

    .line 830
    const-wide/16 v3, 0x3e8

    :try_start_10
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_38
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_41

    .line 836
    :goto_13
    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null, retry..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 838
    sget-object v3, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 839
    if-eqz v2, :cond_4a

    .line 848
    .end local v1           #i:I
    .end local v2           #manager:Ljava/lang/Object;
    :cond_37
    :goto_37
    return-object v2

    .line 832
    .restart local v1       #i:I
    .restart local v2       #manager:Ljava/lang/Object;
    :catch_38
    move-exception v0

    .line 834
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_40} :catch_41

    goto :goto_13

    .line 844
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v1           #i:I
    .end local v2           #manager:Ljava/lang/Object;
    :catch_41
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_37

    .line 826
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #manager:Ljava/lang/Object;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static smlMyPhonebookFullReset()V
    .registers 2

    .prologue
    .line 376
    const/4 v0, 0x1

    const-string v1, "smlMyPhonebookFullReset!!!"

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 377
    sget-object v0, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDbSql;->smlDbSqlFullReset(Landroid/content/Context;)V

    .line 378
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlDbInit()V

    .line 379
    return-void
.end method

.method public static smlSetAutoSyncReady(Z)V
    .registers 4
    .parameter "bSet"

    .prologue
    .line 473
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlSetAutoSyncReady bSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 474
    sput-boolean p0, Lcom/syncmldstmo/DSService;->bAutoSyncReady:Z

    .line 475
    return-void
.end method

.method public static smlSetIndicatorState(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v4, 0x0

    const v6, 0x7f06002b

    const/4 v5, 0x0

    .line 442
    packed-switch p0, :pswitch_data_58

    .line 464
    :cond_8
    :goto_8
    return-void

    .line 445
    :pswitch_9
    sget-object v0, Lcom/syncmldstmo/DSService;->mSyncIndecator:Landroid/app/NotificationManager;

    if-eqz v0, :cond_8

    .line 447
    sget-object v0, Lcom/syncmldstmo/DSService;->mSyncIndecator:Landroid/app/NotificationManager;

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 448
    sput-object v4, Lcom/syncmldstmo/DSService;->mSyncIndecator:Landroid/app/NotificationManager;

    goto :goto_8

    .line 453
    :pswitch_15
    sget-object v0, Lcom/syncmldstmo/DSService;->mSyncIndecator:Landroid/app/NotificationManager;

    if-nez v0, :cond_8

    .line 455
    sget-object v0, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/syncmldstmo/DSService;->mSyncIndecator:Landroid/app/NotificationManager;

    .line 457
    new-instance v0, Landroid/app/Notification;

    const v1, 0x7f020002

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 458
    sget-object v1, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/syncmldstmo/DSService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 459
    sget-object v2, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 460
    sget-object v1, Lcom/syncmldstmo/DSService;->mSyncIndecator:Landroid/app/NotificationManager;

    invoke-virtual {v1, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_8

    .line 442
    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_9
        :pswitch_15
    .end packed-switch
.end method

.method public static smlSetPreSync(ZI)V
    .registers 7
    .parameter "bState"
    .parameter "dbid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 516
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    .line 517
    .local v0, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlSetPreSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlSetPreSync_ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 520
    if-eqz p0, :cond_71

    .line 522
    sparse-switch p1, :sswitch_data_82

    .line 548
    :goto_37
    return-void

    .line 525
    :sswitch_38
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->PreSync:Z

    .line 526
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->PreSync:Z

    .line 527
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v4, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 528
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v3, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 547
    :goto_50
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v1

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    goto :goto_37

    .line 532
    :sswitch_58
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->PreSync:Z

    .line 533
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->PreSync:Z

    .line 534
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v3, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 535
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v3, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    goto :goto_50

    .line 544
    :cond_71
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->PreSync:Z

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 545
    iget-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v2, v2, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->PreSync:Z

    iput-boolean v2, v1, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    goto :goto_50

    .line 522
    :sswitch_data_82
    .sparse-switch
        0x0 -> :sswitch_38
        0x4 -> :sswitch_58
    .end sparse-switch
.end method

.method public static smlsetSyncAutomatically()V
    .registers 9

    .prologue
    .line 489
    const/4 v3, 0x0

    .line 490
    .local v3, nSyncable:I
    const/4 v2, 0x0

    .line 491
    .local v2, bStatus:Z
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetMyPhonebookString()Ljava/lang/String;

    move-result-object v5

    .line 492
    .local v5, szMyPhonebook:Ljava/lang/String;
    new-instance v0, Landroid/accounts/Account;

    const-string v6, "com.android.tmo_myphonebook"

    invoke-direct {v0, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    .local v0, aAuto:Landroid/accounts/Account;
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetActivedProfileIndex()I

    move-result v6

    invoke-static {v6}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v4

    .line 494
    .local v4, pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    .line 496
    .local v1, bMasterAutomatically:Z
    iget v6, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->CPCount:I

    if-lez v6, :cond_2c

    .line 498
    if-eqz v1, :cond_2c

    .line 500
    iget-object v6, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-nez v6, :cond_2b

    iget-object v6, v4, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v6, :cond_2c

    .line 501
    :cond_2b
    const/4 v2, 0x1

    .line 505
    :cond_2c
    if-eqz v2, :cond_2f

    .line 506
    const/4 v3, 0x1

    .line 508
    :cond_2f
    const-string v6, "com.android.contacts"

    invoke-static {v0, v6, v3}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 509
    const-string v6, "com.android.contacts"

    invoke-static {v0, v6, v2}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 510
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v6

    if-nez v6, :cond_56

    .line 511
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "status = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 512
    :cond_56
    return-void
.end method

.method public static wssGetReleaseVer()Ljava/lang/String;
    .registers 1

    .prologue
    .line 665
    sget-object v0, Lcom/syncmldstmo/DSService;->szCurrentReleaseVer:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 667
    invoke-static {}, Lcom/syncmldstmo/DSService;->wssSetReleaseVer()V

    .line 669
    :cond_b
    sget-object v0, Lcom/syncmldstmo/DSService;->szCurrentReleaseVer:Ljava/lang/String;

    return-object v0
.end method

.method public static wssSetReleaseVer()V
    .registers 1

    .prologue
    .line 647
    sget-object v0, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/syncmldstmo/DSService;->wssSetReleaseVer(Landroid/content/Context;)V

    .line 648
    return-void
.end method

.method public static wssSetReleaseVer(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 654
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 655
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v2, Lcom/syncmldstmo/DSService;->szCurrentReleaseVer:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 661
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_11
    return-void

    .line 657
    :catch_12
    move-exception v0

    .line 659
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_11
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .parameter "base"

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 314
    sput-object p1, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    .line 315
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_f

    .line 79
    const-string v0, ">>>>>>>> SyncML DS Service started"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 81
    :cond_f
    invoke-static {p0}, Lcom/syncmldstmo/database/smlDbSql;->smlDbSqlInit(Landroid/content/Context;)V

    .line 82
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlDbInit()V

    .line 83
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_20

    .line 84
    const-string v0, "Db Initialized"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 86
    :cond_20
    sget-object v0, Lcom/syncmldstmo/DSService;->_task:Lcom/syncmldstmo/base/smlTask;

    if-nez v0, :cond_2b

    .line 87
    new-instance v0, Lcom/syncmldstmo/base/smlTask;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlTask;-><init>()V

    sput-object v0, Lcom/syncmldstmo/DSService;->_task:Lcom/syncmldstmo/base/smlTask;

    .line 89
    :cond_2b
    sget-object v0, Lcom/syncmldstmo/DSService;->_uitask:Lcom/syncmldstmo/smluiTask;

    if-nez v0, :cond_36

    .line 90
    new-instance v0, Lcom/syncmldstmo/smluiTask;

    invoke-direct {v0}, Lcom/syncmldstmo/smluiTask;-><init>()V

    sput-object v0, Lcom/syncmldstmo/DSService;->_uitask:Lcom/syncmldstmo/smluiTask;

    .line 92
    :cond_36
    new-instance v0, Lcom/syncmldstmo/base/smlAgent;

    invoke-direct {v0}, Lcom/syncmldstmo/base/smlAgent;-><init>()V

    sput-object v0, Lcom/syncmldstmo/DSService;->agent:Lcom/syncmldstmo/base/smlAgent;

    .line 93
    sget-object v0, Lcom/syncmldstmo/DSService;->agent:Lcom/syncmldstmo/base/smlAgent;

    invoke-virtual {v0, p0}, Lcom/syncmldstmo/base/smlAgent;->InitAgent(Landroid/content/Context;)V

    .line 95
    sget-object v0, Lcom/syncmldstmo/DSService;->_task:Lcom/syncmldstmo/base/smlTask;

    sget-object v1, Lcom/syncmldstmo/DSService;->agent:Lcom/syncmldstmo/base/smlAgent;

    iput-object v1, v0, Lcom/syncmldstmo/base/smlTask;->m_agent:Lcom/syncmldstmo/base/smlAgent;

    .line 97
    invoke-virtual {p0}, Lcom/syncmldstmo/DSService;->smlAccountManager()V

    .line 99
    new-instance v0, Lcom/syncmldstmo/cust/smlPhoneStatus;

    invoke-direct {v0}, Lcom/syncmldstmo/cust/smlPhoneStatus;-><init>()V

    sput-object v0, Lcom/syncmldstmo/DSService;->PhoneState:Lcom/syncmldstmo/cust/smlPhoneStatus;

    .line 100
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/syncmldstmo/DSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    sget-object v0, Lcom/syncmldstmo/cust/smlPhoneStatus;->telephonyManager:Landroid/telephony/TelephonyManager;

    sget-object v1, Lcom/syncmldstmo/DSService;->PhoneState:Lcom/syncmldstmo/cust/smlPhoneStatus;

    const/16 v2, 0x1f1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 109
    iget-object v0, p0, Lcom/syncmldstmo/DSService;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/syncmldstmo/DSService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    iget-object v0, p0, Lcom/syncmldstmo/DSService;->mSyncStatusObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v3, v0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlCheckSIMInfo()V

    .line 113
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_84

    .line 114
    const-string v0, "Start DS Service complete"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 116
    :cond_84
    invoke-static {v3}, Lcom/syncmldstmo/DSApplication;->setIsDSServiceRunning(Z)V

    .line 117
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlsetSyncAutomatically()V

    .line 119
    new-instance v0, Lcom/syncmldstmo/DSService$1;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/DSService$1;-><init>(Lcom/syncmldstmo/DSService;)V

    sput-object v0, Lcom/syncmldstmo/DSService;->smldsApnHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/syncmldstmo/DSService$2;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/DSService$2;-><init>(Lcom/syncmldstmo/DSService;)V

    sput-object v0, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    .line 243
    new-instance v0, Lcom/syncmldstmo/DSService$3;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/DSService$3;-><init>(Lcom/syncmldstmo/DSService;)V

    sput-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    .line 309
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 319
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/syncmldstmo/DSService;->mLocaleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/syncmldstmo/DSService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 330
    :goto_8
    return-void

    .line 325
    :catch_9
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_8
.end method

.method protected onSyncStateUpdated()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, bAutoSyncOffContactStatus:Z
    const/4 v0, 0x0

    .line 570
    .local v0, bAutoSyncOffCalendarStatus:Z
    const/4 v2, 0x0

    .line 572
    .local v2, bAutomaticallyStatus:Z
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetAutoSyncOffContact()Z

    move-result v1

    .line 573
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetAutoSyncOffCalendar()Z

    move-result v0

    .line 575
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v2

    .line 576
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v4

    if-nez v4, :cond_54

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bAutomaticallyStatus : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 579
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSyncStateUpdated [contact : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][calendar : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 581
    :cond_54
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlsetSyncAutomatically()V

    .line 582
    if-eqz v2, :cond_89

    if-nez v1, :cond_5d

    if-eqz v0, :cond_89

    .line 584
    :cond_5d
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCurrentProfileInfo()Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    .line 586
    .local v3, profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    if-eqz v1, :cond_96

    if-eqz v0, :cond_96

    .line 588
    if-eqz v1, :cond_8a

    iget-object v4, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v4, :cond_8a

    .line 589
    invoke-static {v6}, Lcom/syncmldstmo/DSService;->setChangedItem(I)V

    .line 602
    :cond_70
    :goto_70
    invoke-static {v7}, Lcom/syncmldstmo/database/smlDb;->smlSetAutoSyncOffContact(Z)V

    .line 603
    invoke-static {v7}, Lcom/syncmldstmo/database/smlDb;->smlSetAutoSyncOffCalendar(Z)V

    .line 605
    sget-object v4, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    if-eqz v4, :cond_89

    .line 607
    const-string v4, "MasterSync check. AtuoSync will Start. after 30seconds"

    invoke-static {v6, v4}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 608
    invoke-static {v6}, Lcom/syncmldstmo/DSService;->smlSetAutoSyncReady(Z)V

    .line 609
    sget-object v4, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 612
    .end local v3           #profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    :cond_89
    return-void

    .line 590
    .restart local v3       #profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    :cond_8a
    if-eqz v0, :cond_70

    iget-object v4, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v4, v4, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v4, :cond_70

    .line 591
    invoke-static {v8}, Lcom/syncmldstmo/DSService;->setChangedItem(I)V

    goto :goto_70

    .line 593
    :cond_96
    if-eqz v1, :cond_9c

    .line 595
    invoke-static {v6}, Lcom/syncmldstmo/DSService;->setChangedItem(I)V

    goto :goto_70

    .line 597
    :cond_9c
    if-eqz v0, :cond_70

    .line 599
    invoke-static {v8}, Lcom/syncmldstmo/DSService;->setChangedItem(I)V

    goto :goto_70
.end method

.method public smlAccountManager()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 616
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-nez v1, :cond_c

    .line 617
    const-string v1, "smlAccountManager register"

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 618
    :cond_c
    new-instance v1, Lcom/syncmldstmo/DSService$smlAccountsUpdatedListener;

    invoke-direct {v1, p0}, Lcom/syncmldstmo/DSService$smlAccountsUpdatedListener;-><init>(Lcom/syncmldstmo/DSService;)V

    iput-object v1, p0, Lcom/syncmldstmo/DSService;->mAccountsUpdatedListener:Lcom/syncmldstmo/DSService$smlAccountsUpdatedListener;

    .line 622
    :try_start_13
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p0, Lcom/syncmldstmo/DSService;->mAccountsUpdatedListener:Lcom/syncmldstmo/DSService$smlAccountsUpdatedListener;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 628
    :goto_1e
    return-void

    .line 624
    :catch_1f
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smlAccountRemoveManager Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1e
.end method

.method public smlShowToast(Ljava/lang/String;)V
    .registers 4
    .parameter "szMessage"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/syncmldstmo/DSService;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_13

    .line 634
    sget-object v0, Lcom/syncmldstmo/DSService;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/DSService;->mToast:Landroid/widget/Toast;

    .line 635
    iget-object v0, p0, Lcom/syncmldstmo/DSService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 643
    :goto_12
    return-void

    .line 639
    :cond_13
    iget-object v0, p0, Lcom/syncmldstmo/DSService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 640
    iget-object v0, p0, Lcom/syncmldstmo/DSService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/syncmldstmo/DSService;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method
