.class public Lcom/syncmldstmo/smlBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "smlBroadcastReceiver.java"

# interfaces
.implements Lcom/syncmldstmo/base/smlDef;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;
    }
.end annotation


# static fields
.field public static BroadcastReceiver_Autosync_Action:Ljava/lang/String;


# instance fields
.field private bTmpInbox:[B

.field final handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private nProfileCount:I

.field private pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

.field serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

.field private szCalendarDB:Ljava/lang/String;

.field private szContactDB:Ljava/lang/String;

.field private szProflieName:Ljava/lang/String;

.field private szServerID:Ljava/lang/String;

.field private szServerPW:Ljava/lang/String;

.field private szServerURL:Ljava/lang/String;

.field private szSimState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/syncmldstmo/smlBroadcastReceiver;->BroadcastReceiver_Autosync_Action:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->nProfileCount:I

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szSimState:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szProflieName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerURL:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerID:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerPW:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szContactDB:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szCalendarDB:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->bTmpInbox:[B

    .line 42
    new-instance v0, Lcom/syncmldstmo/smlBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/syncmldstmo/smlBroadcastReceiver$1;-><init>(Lcom/syncmldstmo/smlBroadcastReceiver;)V

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->handler:Landroid/os/Handler;

    .line 513
    return-void
.end method

.method static synthetic access$000(Lcom/syncmldstmo/smlBroadcastReceiver;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szSimState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/syncmldstmo/smlBroadcastReceiver;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/content/Context;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/syncmldstmo/smlBroadcastReceiver;->smlSetCPInfo(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/syncmldstmo/smlBroadcastReceiver;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/syncmldstmo/smlBroadcastReceiver;->smlUpdateSync(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/syncmldstmo/smlBroadcastReceiver;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->bTmpInbox:[B

    return-object v0
.end method

.method private smlSetCPInfo(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x40

    const/4 v2, 0x1

    .line 362
    iget v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->nProfileCount:I

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlGetProfileInfo(I)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    .line 364
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    if-nez v0, :cond_15

    .line 366
    const-string v0, "pInfo is null. return"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 438
    :cond_14
    :goto_14
    return-void

    .line 370
    :cond_15
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 371
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 373
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerURL:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 374
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerUrl:Ljava/lang/String;

    .line 376
    :cond_2f
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerID:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 377
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerID:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerID:Ljava/lang/String;

    .line 379
    :cond_3d
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerPW:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 380
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerPW:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->ServerPS:Ljava/lang/String;

    .line 382
    :cond_4b
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szContactDB:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 383
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szContactDB:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 385
    :cond_5b
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szCalendarDB:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 386
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szCalendarDB:Ljava/lang/String;

    iput-object v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->DBName:Ljava/lang/String;

    .line 388
    :cond_6b
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szProflieName:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 389
    iget v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->nProfileCount:I

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szProflieName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileName(ILjava/lang/String;)V

    .line 391
    :cond_7a
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerID:Ljava/lang/String;

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->IsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 392
    iget v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->nProfileCount:I

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileServerID(ILjava/lang/String;)V

    .line 394
    :cond_89
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCPCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->CPCount:I

    .line 396
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    if-eqz v0, :cond_e1

    .line 398
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget-object v0, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    .line 399
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iput-boolean v2, v0, Lcom/syncmldstmo/database/smlDbProfileInfo;->bIsMember:Z

    .line 401
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->pInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;

    iget v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->nProfileCount:I

    invoke-static {v0, v1}, Lcom/syncmldstmo/database/smlDb;->smlSetProfileInfo(Lcom/syncmldstmo/database/smlDbProfileInfo;I)V

    .line 403
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCPCount()I

    move-result v0

    if-ne v0, v2, :cond_e1

    .line 406
    const-string v0, "First received CP. Send intent MYPHONEBOOK_CP_RECEIVED"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MYPHONEBOOK_CP_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 409
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    const-wide/16 v0, 0x7d0

    :try_start_c5
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_fe

    .line 421
    :goto_c8
    const-string v0, "SIM contact import popup display"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 422
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    const-class v1, Lcom/syncmldstmo/smlSyncSimContactImport;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 424
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 425
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    :cond_e1
    iget v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->nProfileCount:I

    invoke-static {v0}, Lcom/syncmldstmo/database/smlDb;->smlSetActivedProfileIndex(I)V

    .line 430
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlsetSyncAutomatically()V

    .line 432
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCPCount()I

    move-result v0

    if-le v0, v2, :cond_14

    .line 435
    const-string v0, "CP Received. Sync start"

    invoke-static {v3, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 436
    sget-object v0, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_14

    .line 415
    :catch_fe
    move-exception v0

    .line 417
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrintException(Ljava/lang/String;)V

    goto :goto_c8
.end method

.method private smlUpdateSync(I)V
    .registers 8
    .parameter "nCategory"

    .prologue
    const/16 v4, 0x40

    const/4 v3, 0x1

    .line 442
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 444
    .local v0, bAutoSyncSet:Z
    new-instance v1, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;

    iget-object v2, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;-><init>(Landroid/content/Context;)V

    .line 446
    .local v1, gUpdate:Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;
    if-nez v0, :cond_21

    .line 449
    if-nez p1, :cond_1b

    .line 451
    invoke-static {v3}, Lcom/syncmldstmo/database/smlDb;->smlSetAutoSyncOffContact(Z)V

    .line 457
    :cond_15
    :goto_15
    const-string v2, "AutoSync is false. return"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 511
    :cond_1a
    :goto_1a
    return-void

    .line 453
    :cond_1b
    if-ne p1, v3, :cond_15

    .line 455
    invoke-static {v3}, Lcom/syncmldstmo/database/smlDb;->smlSetAutoSyncOffCalendar(Z)V

    goto :goto_15

    .line 461
    :cond_21
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetAutoSyncReady()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 463
    const-string v2, "AutoSync is already true. return"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1a

    .line 467
    :cond_2d
    sget-boolean v2, Lcom/syncmldstmo/smlSyncSimContactImport;->bIsSimContactImport:Z

    if-eqz v2, :cond_37

    .line 469
    const-string v2, "Sim Contact Import.. return"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1a

    .line 473
    :cond_37
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 475
    const-string v2, "Syncing... return"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1a

    .line 479
    :cond_43
    if-nez p1, :cond_51

    .line 481
    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->smlCheckContactsUpdatData()Z

    move-result v2

    if-nez v2, :cond_61

    .line 483
    const-string v2, "Contacts not changed!!! return"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1a

    .line 487
    :cond_51
    if-ne p1, v3, :cond_61

    .line 489
    invoke-virtual {v1}, Lcom/syncmldstmo/base/vitem/smlUpdateAdapter;->smlCheckCalendarUpdateData()Z

    move-result v2

    if-nez v2, :cond_61

    .line 491
    const/high16 v2, 0x8

    const-string v3, "Calendar not changed!!! return"

    invoke-static {v2, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_1a

    .line 496
    :cond_61
    sget-object v2, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    if-eqz v2, :cond_1a

    .line 498
    const-string v2, "AtuoSync will Start. after 30seconds"

    invoke-static {v4, v2}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 499
    invoke-static {v3}, Lcom/syncmldstmo/DSService;->smlSetAutoSyncReady(Z)V

    .line 500
    if-nez p1, :cond_7b

    .line 502
    invoke-static {v3}, Lcom/syncmldstmo/DSService;->setChangedItem(I)V

    .line 508
    :cond_72
    :goto_72
    sget-object v2, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    const/4 v3, 0x0

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1a

    .line 504
    :cond_7b
    if-ne p1, v3, :cond_72

    .line 506
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/syncmldstmo/DSService;->setChangedItem(I)V

    goto :goto_72
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x1000

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v2, 0x40

    .line 128
    iput-object p1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 131
    const-string v0, "SML_BROADCAST_MYPHONEBOOK_SELECTED"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/syncmldstmo/DSService;->getGetFriendSyncing()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 135
    invoke-static {v4}, Lcom/syncmldstmo/DSService;->setGetFriendSyncing(Z)V

    .line 136
    invoke-static {v4, v4}, Lcom/syncmldstmo/DSService;->smlSetPreSync(ZI)V

    .line 139
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    const-class v1, Lcom/syncmldstmo/smlMyPhonebook;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 358
    :cond_38
    :goto_38
    return-void

    .line 144
    :cond_39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 146
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szSimState:Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SML_BROADCAST_SIM_STATE_CHANGE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szSimState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/syncmldstmo/DSApplication;->getIsDSServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 152
    const-string v0, "LOADED"

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szSimState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 154
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlCheckSIMInfo()V

    goto :goto_38

    .line 156
    :cond_79
    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szSimState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 158
    const-string v0, "SIM_ABSENT"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 159
    invoke-static {v4}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetExistSIMforRetry(Z)V

    goto :goto_38

    .line 164
    :cond_8c
    const-string v0, "DS Service is not running!!"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 165
    new-instance v0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v3}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;-><init>(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    .line 166
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->start()V

    goto :goto_38

    .line 170
    :cond_a0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SET_DS_MYPHONEBOOK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_191

    .line 172
    const-string v0, "SML_BROADCAST_CP_RECEIVED"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 174
    const-string v0, "PROFILENAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szProflieName:Ljava/lang/String;

    .line 175
    const-string v0, "ADDR"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerURL:Ljava/lang/String;

    .line 176
    const-string v0, "AAUTHNAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerID:Ljava/lang/String;

    .line 177
    const-string v0, "AAUTHSECRET"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerPW:Ljava/lang/String;

    .line 178
    const-string v0, "ContactsURI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szContactDB:Ljava/lang/String;

    .line 179
    const-string v0, "CalendarURI"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szCalendarDB:Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PROFILENAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szProflieName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADDR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AAUTHNAME = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AAUTHSECRET = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szServerPW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactsURI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szContactDB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalendarURI = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->szCalendarDB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/syncmldstmo/base/smlDebug;->smlLibPrivateLog(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/syncmldstmo/DSApplication;->getIsDSServiceRunning()Z

    move-result v0

    if-nez v0, :cond_18c

    .line 190
    const-string v0, "DS Service is not running!!"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 191
    new-instance v0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v3}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;-><init>(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    .line 192
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->start()V

    goto/16 :goto_38

    .line 196
    :cond_18c
    invoke-direct {p0, p1}, Lcom/syncmldstmo/smlBroadcastReceiver;->smlSetCPInfo(Landroid/content/Context;)V

    goto/16 :goto_38

    .line 198
    :cond_191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MYPHONEBOOK_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cf

    .line 200
    const-string v0, "SML_BROADCAST_MYPHONEBOOK_UPDATE"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/syncmldstmo/DSApplication;->getIsDSServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_1b5

    .line 204
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCPCount()I

    move-result v0

    if-nez v0, :cond_1ca

    .line 206
    const-string v0, "CP never received."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_38

    .line 212
    :cond_1b5
    const-string v0, "DS Service is not running!!"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 213
    new-instance v0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v3}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;-><init>(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    .line 214
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->start()V

    goto/16 :goto_38

    .line 218
    :cond_1ca
    invoke-direct {p0, v4}, Lcom/syncmldstmo/smlBroadcastReceiver;->smlUpdateSync(I)V

    goto/16 :goto_38

    .line 220
    :cond_1cf
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MYPHONEBOOK_CALENDAR_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20d

    .line 222
    const-string v0, "SML_BROADCAST_MYPHONEBOOK_CALENDAR_UPDATE"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/syncmldstmo/DSApplication;->getIsDSServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_1f3

    .line 226
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCPCount()I

    move-result v0

    if-nez v0, :cond_208

    .line 228
    const-string v0, "CP never received."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_38

    .line 234
    :cond_1f3
    const-string v0, "DS Service is not running!!"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 235
    new-instance v0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v3}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;-><init>(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    .line 236
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->start()V

    goto/16 :goto_38

    .line 240
    :cond_208
    invoke-direct {p0, v3}, Lcom/syncmldstmo/smlBroadcastReceiver;->smlUpdateSync(I)V

    goto/16 :goto_38

    .line 242
    :cond_20d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED_MYPHONEBOOK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_266

    .line 244
    const-string v0, "SML_BROADCAST_SAN_RECEIVED"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->inSyncMode()Z

    move-result v0

    if-eqz v0, :cond_22b

    .line 248
    const-string v0, "Syncing... return"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_38

    .line 252
    :cond_22b
    const-string v0, "ds_message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 254
    if-eqz v0, :cond_25f

    array-length v1, v0

    if-lez v1, :cond_25f

    .line 256
    invoke-static {}, Lcom/syncmldstmo/DSApplication;->getIsDSServiceRunning()Z

    move-result v1

    if-nez v1, :cond_254

    .line 258
    const-string v1, "DS service is not running."

    invoke-static {v2, v1}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 259
    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->bTmpInbox:[B

    .line 260
    new-instance v0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->handler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-direct {v0, p0, v1, v2}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;-><init>(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    .line 261
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->start()V

    goto/16 :goto_38

    .line 266
    :cond_254
    new-instance v1, Lcom/syncmldstmo/push/smlPushMessageAdapter;

    invoke-direct {v1}, Lcom/syncmldstmo/push/smlPushMessageAdapter;-><init>()V

    .line 267
    array-length v2, v0

    invoke-virtual {v1, v0, v2, v6}, Lcom/syncmldstmo/push/smlPushMessageAdapter;->smlPushAdpReceiveMsg([BILjava/lang/String;)Z

    goto/16 :goto_38

    .line 272
    :cond_25f
    const-string v0, "SML_BROADCAST_SAN_RECEIVED error!!"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_38

    .line 275
    :cond_266
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MYPHONEBOOK_FRIENDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_323

    .line 277
    const-string v0, "SML_BROADCAST_MYPHONEBOOK_FRIENDS"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 279
    invoke-static {}, Lcom/syncmldstmo/DSApplication;->getIsDSServiceRunning()Z

    move-result v0

    if-eqz v0, :cond_28a

    .line 281
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetCPCount()I

    move-result v0

    if-nez v0, :cond_2a0

    .line 283
    const-string v0, "CP never received."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto/16 :goto_38

    .line 289
    :cond_28a
    const-string v0, "DS service is not running."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 290
    new-instance v0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->handler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v1, v2}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;-><init>(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    .line 291
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->start()V

    goto/16 :goto_38

    .line 295
    :cond_2a0
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetAutoSyncReady()Z

    move-result v0

    if-eqz v0, :cond_2a9

    .line 296
    invoke-static {v4}, Lcom/syncmldstmo/DSService;->smlSetAutoSyncReady(Z)V

    .line 298
    :cond_2a9
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetIsMember()Z

    move-result v0

    if-nez v0, :cond_2c8

    .line 300
    const-string v0, "[RECEIVER] smlGetIsMember() is false. return"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    const-class v1, Lcom/syncmldstmo/smlCheckMember;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 303
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 304
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 308
    :cond_2c8
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getSyncStart()Z

    move-result v0

    if-eqz v0, :cond_2d7

    .line 310
    sget-object v0, Lcom/syncmldstmo/DSService;->ErrorMessage:Landroid/os/Handler;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_38

    .line 314
    :cond_2d7
    invoke-static {v3}, Lcom/syncmldstmo/DSService;->setGetFriendSyncing(Z)V

    .line 315
    invoke-static {v3, v4}, Lcom/syncmldstmo/DSService;->smlSetPreSync(ZI)V

    .line 317
    const-string v0, "FRIENDS SYNC START"

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 320
    invoke-static {}, Lcom/syncmldstmo/network/smlRetrySync;->smlSetRetrySyncReset()V

    .line 323
    invoke-static {}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlGetRomingState()Z

    move-result v0

    if-eqz v0, :cond_307

    .line 325
    const-string v0, "Roming true..."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 326
    invoke-static {v3}, Lcom/syncmldstmo/cust/smlPhoneStatus;->smlSetRoamingUI(Z)V

    .line 327
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    const-class v1, Lcom/syncmldstmo/smlCheckRoaming;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 329
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 330
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 334
    :cond_307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-static {v3}, Lcom/syncmldstmo/base/smlAgent;->setSyncStart(Z)V

    .line 336
    const/16 v1, 0x20

    invoke-static {v1, v6, v6}, Lcom/syncmldstmo/base/smlMsg;->smlSendMessage(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 337
    const-class v1, Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 338
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 339
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_38

    .line 343
    :cond_323
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SIM_IMPORT_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 345
    const-string v0, "SIM import contact Finished intent. Sync start."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/syncmldstmo/DSApplication;->getIsDSServiceRunning()Z

    move-result v0

    if-nez v0, :cond_350

    .line 349
    const-string v0, "DS service is not running."

    invoke-static {v2, v0}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 350
    new-instance v0, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    iget-object v1, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->handler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-direct {v0, p0, v1, v2}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;-><init>(Lcom/syncmldstmo/smlBroadcastReceiver;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    .line 351
    iget-object v0, p0, Lcom/syncmldstmo/smlBroadcastReceiver;->serviceStartThread:Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;

    invoke-virtual {v0}, Lcom/syncmldstmo/smlBroadcastReceiver$ServiceStartThread;->start()V

    goto/16 :goto_38

    .line 355
    :cond_350
    sput-boolean v4, Lcom/syncmldstmo/smlSyncSimContactImport;->bIsSimContactImport:Z

    .line 356
    sget-object v0, Lcom/syncmldstmo/DSService;->hAutoConnecting:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_38
.end method
