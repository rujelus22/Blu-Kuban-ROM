.class public Lcom/sec/android/app/mobileprint/MPrintMainService;
.super Landroid/app/Service;
.source "MPrintMainService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;,
        Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;,
        Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;,
        Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;,
        Lcom/sec/android/app/mobileprint/MPrintMainService$Status;,
        Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;,
        Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;
    }
.end annotation


# static fields
.field private static final MAX_OF_PRINTJOB:I = 0xa

.field private static final SAPS_PRINT_SERVICE:Ljava/lang/String; = "com.sec.android.app.mobileprint.SAPS.PrintService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

.field private mHandler:Landroid/os/Handler;

.field private mLastCallbackTime:J

.field private mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

.field private mRunning:Z

.field private mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

.field private mSAPSConnection:Landroid/content/ServiceConnection;

.field private mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;

.field private mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

.field private mTransactionQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    .line 86
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    .line 87
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    .line 88
    sget-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 89
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mBinder:Landroid/os/IBinder;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mLastCallbackTime:J

    .line 92
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSConnection:Landroid/content/ServiceConnection;

    .line 93
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;

    .line 94
    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    .line 646
    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/mobileprint/MPrintMainService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V

    return-void
.end method

.method static synthetic access$1102(Lcom/sec/android/app/mobileprint/MPrintMainService;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mLastCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->responseCancelCompleted(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintCompleted(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/mobileprint/MPrintMainService;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/mobileprint/MPrintMainService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSConnection:Landroid/content/ServiceConnection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/print/mobileprint/ISamsungPrintingService;)Lcom/sec/print/mobileprint/ISamsungPrintingService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/mobileprint/MPrintMainService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->acqiureWakelock()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/mobileprint/MPrintMainService;IIII)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintStatus(IIII)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$Status;)Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/mobileprint/MPrintMainService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V

    return-void
.end method

.method private declared-synchronized acqiureWakelock()V
    .registers 1

    .prologue
    .line 283
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private clearImageFiles(Lcom/sec/android/app/mobileprint/MPrintJobItem;)V
    .registers 5
    .parameter "printJob"

    .prologue
    .line 396
    if-eqz p1, :cond_12

    iget v1, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mPrintMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    .line 397
    iget-object v1, p1, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->getParentDirectory(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, parentDir:Ljava/lang/String;
    if-eqz v0, :cond_12

    .line 399
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintFileUtility;->clearDir(Ljava/lang/String;)V

    .line 402
    .end local v0           #parentDir:Ljava/lang/String;
    :cond_12
    return-void
.end method

.method private declared-synchronized executeCancel(I)Z
    .registers 8
    .parameter "transactionID"

    .prologue
    .line 240
    monitor-enter p0

    const/4 v2, 0x0

    .line 241
    .local v2, result:Z
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-eqz v3, :cond_49

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    if-ne v3, p1, :cond_49

    .line 242
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    sget-object v4, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->REQUESTING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    if-ne v3, v4, :cond_19

    .line 243
    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->CANCELLING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_9a

    .line 244
    const/4 v2, 0x1

    .line 273
    :cond_17
    :goto_17
    monitor-exit p0

    return v2

    .line 246
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    sget-object v4, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->RUNNING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    if-ne v3, v4, :cond_2d

    .line 247
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/mobileprint/MPrintMainService$CancelThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V

    .line 248
    .local v0, cancelThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 249
    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->CANCELLING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 250
    const/4 v2, 0x1

    .line 251
    goto :goto_17

    .line 253
    .end local v0           #cancelThread:Ljava/lang/Thread;
    :cond_2d
    const-string v3, "MobilePrint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MPrintMainService : executeCancel() - It is not running status. mServiceStatus="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v2, 0x0

    goto :goto_17

    .line 258
    :cond_49
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->notifyCanceled(I)V

    .line 260
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 261
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5b
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_78

    .line 262
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    if-ne v3, p1, :cond_75

    .line 263
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 264
    const/4 v2, 0x1

    .line 261
    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 267
    :cond_78
    if-nez v2, :cond_17

    .line 268
    const-string v3, "MobilePrint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MPrintMainService : executeCancel() - invalid transactionID("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_19 .. :try_end_98} :catchall_9a

    goto/16 :goto_17

    .line 240
    .end local v1           #i:I
    :catchall_9a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized executePrint(ILcom/sec/android/app/mobileprint/MPrintJobItem;)Z
    .registers 8
    .parameter "transactionID"
    .parameter "printJob"

    .prologue
    .line 224
    monitor-enter p0

    const/4 v1, 0x0

    .line 225
    .local v1, result:Z
    :try_start_2
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    sget-object v3, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    if-ne v2, v3, :cond_17

    .line 226
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;ILcom/sec/android/app/mobileprint/MPrintJobItem;)V

    .line 227
    .local v0, printThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    sget-object v2, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->REQUESTING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_33

    .line 229
    const/4 v1, 0x1

    .line 236
    .end local v0           #printThread:Ljava/lang/Thread;
    :goto_15
    monitor-exit p0

    return v1

    .line 232
    :cond_17
    :try_start_17
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPrintMainService : executePrint() - It is not idle status. mServiceStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_33

    .line 233
    const/4 v1, 0x0

    goto :goto_15

    .line 224
    :catchall_33
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized releaseWakelock()V
    .registers 1

    .prologue
    .line 291
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized responseCancelCompleted(I)V
    .registers 5
    .parameter "transactionID"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 325
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V

    .line 327
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->notifyCanceled(I)V

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    if-ne p1, v0, :cond_2d

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->PrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-direct {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->clearImageFiles(Lcom/sec/android/app/mobileprint/MPrintJobItem;)V

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintMainService$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintMainService$3;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_58

    .line 344
    :goto_2b
    monitor-exit p0

    return-void

    .line 342
    :cond_2d
    :try_start_2d
    const-string v0, "MobilePrint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPrintMainService : responseCancelCompleted() - transactionID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not matched! (mCurrentTransaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_2d .. :try_end_57} :catchall_58

    goto :goto_2b

    .line 324
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized responsePrintCompleted(I)V
    .registers 5
    .parameter "transactionID"

    .prologue
    .line 301
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 302
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->notifyCompleted(I)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    if-ne p1, v0, :cond_2d

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->PrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-direct {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->clearImageFiles(Lcom/sec/android/app/mobileprint/MPrintJobItem;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintMainService$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintMainService$2;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_58

    .line 321
    :goto_2b
    monitor-exit p0

    return-void

    .line 319
    :cond_2d
    :try_start_2d
    const-string v0, "MobilePrint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPrintMainService : responsePrintCompleted() - transactionID("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not matched! (mCurrentTransaction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_2d .. :try_end_57} :catchall_58

    goto :goto_2b

    .line 301
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized responsePrintError(II)V
    .registers 7
    .parameter "transactionID"
    .parameter "value"

    .prologue
    .line 347
    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 348
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->notifyError(II)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget v1, v1, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    if-ne p1, v1, :cond_4f

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->PrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-direct {p0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->clearImageFiles(Lcom/sec/android/app/mobileprint/MPrintJobItem;)V

    .line 355
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    .line 358
    packed-switch p2, :pswitch_data_7e

    .line 381
    const v0, 0x7f080036

    .line 383
    .local v0, errorStingID:I
    :goto_27
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/mobileprint/MPrintMainService$4;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService$4;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_7a

    .line 393
    .end local v0           #errorStingID:I
    :goto_31
    monitor-exit p0

    return-void

    .line 360
    :pswitch_33
    const v0, 0x7f080030

    .line 361
    .restart local v0       #errorStingID:I
    goto :goto_27

    .line 363
    .end local v0           #errorStingID:I
    :pswitch_37
    const v0, 0x7f080031

    .line 364
    .restart local v0       #errorStingID:I
    goto :goto_27

    .line 366
    .end local v0           #errorStingID:I
    :pswitch_3b
    const v0, 0x7f080032

    .line 367
    .restart local v0       #errorStingID:I
    goto :goto_27

    .line 369
    .end local v0           #errorStingID:I
    :pswitch_3f
    const v0, 0x7f08003a

    .line 370
    .restart local v0       #errorStingID:I
    goto :goto_27

    .line 372
    .end local v0           #errorStingID:I
    :pswitch_43
    const v0, 0x7f080034

    .line 373
    .restart local v0       #errorStingID:I
    goto :goto_27

    .line 375
    .end local v0           #errorStingID:I
    :pswitch_47
    const v0, 0x7f080035

    .line 376
    .restart local v0       #errorStingID:I
    goto :goto_27

    .line 378
    .end local v0           #errorStingID:I
    :pswitch_4b
    const v0, 0x7f080032

    .line 379
    .restart local v0       #errorStingID:I
    goto :goto_27

    .line 391
    .end local v0           #errorStingID:I
    :cond_4f
    :try_start_4f
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MPrintMainService : responsePrintError() - transactionID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is not matched! (mCurrentTransaction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_4f .. :try_end_79} :catchall_7a

    goto :goto_31

    .line 347
    :catchall_7a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 358
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_33
        :pswitch_37
        :pswitch_3b
        :pswitch_3f
        :pswitch_43
        :pswitch_47
        :pswitch_4b
    .end packed-switch
.end method

.method private responsePrintStatus(IIII)V
    .registers 6
    .parameter "transactionID"
    .parameter "totalPage"
    .parameter "page"
    .parameter "value"

    .prologue
    .line 294
    sget-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->RUNNING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    if-ne p1, v0, :cond_15

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    if-lez p2, :cond_16

    .end local p2
    :goto_12
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->notifyOnGoing(IIII)V

    .line 298
    :cond_15
    return-void

    .line 296
    .restart local p2
    :cond_16
    const/4 p2, 0x1

    goto :goto_12
.end method


# virtual methods
.method public declared-synchronized isPossiblePrint()Z
    .registers 3

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_19

    .line 212
    const-string v0, "MobilePrint"

    const-string v1, "MPrintMainService : size of TransactionQueue is over!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1b

    .line 213
    const/4 v0, 0x0

    .line 215
    :goto_17
    monitor-exit p0

    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_17

    .line 211
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public declared-synchronized onCreate()V
    .registers 4

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 105
    const-string v1, "MobilePrint"

    const-string v2, "MPrintMainService : onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mRunning:Z

    .line 107
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    .line 109
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    .line 110
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$1;)V

    iput-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSCallback:Lcom/sec/android/app/mobileprint/MPrintMainService$SAPSCallback;

    .line 112
    new-instance v0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$1;)V

    .line 113
    .local v0, bindThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 114
    monitor-exit p0

    return-void

    .line 103
    .end local v0           #bindThread:Ljava/lang/Thread;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 161
    const-string v0, "MobilePrint"

    const-string v1, "MPrintMainService : onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSPrintService:Lcom/sec/print/mobileprint/ISamsungPrintingService;

    if-eqz v0, :cond_10

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 167
    :cond_10
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V

    .line 169
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 170
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public declared-synchronized onStartCommand(Landroid/content/Intent;II)I
    .registers 12
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 118
    monitor-enter p0

    :try_start_3
    const-string v4, "MobilePrint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MPrintMainService : onStartCommand(), startId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    if-eqz p1, :cond_94

    .line 121
    const-string v4, "PrintJobInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;

    .line 122
    .local v0, printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintCommon;->checkPrintJobInfo(Lcom/sec/android/app/mobileprint/MPrintJobItem;)Z

    move-result v4

    if-ne v4, v3, :cond_94

    .line 123
    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-direct {v1, p0, v4, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;ILcom/sec/android/app/mobileprint/MPrintJobItem;)V

    .line 124
    .local v1, transaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    iget v5, v1, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    iget-object v6, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mFilePathList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mNumberOfCopy:I

    mul-int/2addr v6, v7

    iget-object v7, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-nez v7, :cond_ac

    :goto_4b
    invoke-virtual {v4, v5, v6, v2}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->notifyStart(IIZ)V

    .line 126
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/mobileprint/MPrintMainService$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/mobileprint/MPrintMainService$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    const-string v2, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPrintMainService : new job added! ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mDevice:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sec/android/app/mobileprint/MPrintJobItem;->mIPAddr:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintCommon;->getIpAddressHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0           #printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .end local v1           #transaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;
    :cond_94
    iget-boolean v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mRunning:Z

    if-nez v2, :cond_a9

    .line 137
    const/4 v2, 0x0

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->startForeground(ILandroid/app/Notification;)V

    .line 138
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mRunning:Z
    :try_end_a9
    .catchall {:try_start_3 .. :try_end_a9} :catchall_ae

    .line 141
    :cond_a9
    const/4 v2, 0x2

    monitor-exit p0

    return v2

    .restart local v0       #printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .restart local v1       #transaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;
    :cond_ac
    move v2, v3

    .line 125
    goto :goto_4b

    .line 118
    .end local v0           #printJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;
    .end local v1           #transaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;
    :catchall_ae
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .parameter "intent"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public requestCancel(I)V
    .registers 5
    .parameter "transactionID"

    .prologue
    .line 219
    const-string v0, "MobilePrint"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MPrintMainService : requestCancel() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->executeCancel(I)Z

    .line 221
    return-void
.end method

.method public declared-synchronized run()V
    .registers 5

    .prologue
    .line 174
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mRunning:Z

    if-nez v0, :cond_1b

    .line 175
    const-string v0, "MobilePrint"

    const-string v1, "MPrintMainService : stopSelf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mNotificationManager:Lcom/sec/android/app/mobileprint/MPrintNotificationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintNotificationManager;->notifyCanceled(I)V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->stopForeground(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->stopSelf()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_58

    .line 208
    :goto_19
    monitor-exit p0

    return-void

    .line 181
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    sget-object v1, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    if-ne v0, v1, :cond_5f

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-nez v0, :cond_3b

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_5b

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mTransactionQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    .line 191
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget-object v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->PrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    if-eqz v0, :cond_50

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget-object v1, v1, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->PrintJob:Lcom/sec/android/app/mobileprint/MPrintJobItem;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->executePrint(ILcom/sec/android/app/mobileprint/MPrintJobItem;)Z

    .line 206
    :cond_50
    :goto_50
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_57
    .catchall {:try_start_1b .. :try_end_57} :catchall_58

    goto :goto_19

    .line 174
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0

    .line 187
    :cond_5b
    const/4 v0, 0x0

    :try_start_5c
    iput-boolean v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mRunning:Z

    goto :goto_3b

    .line 195
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    sget-object v1, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->RUNNING:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    if-ne v0, v1, :cond_50

    .line 196
    iget-wide v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mLastCallbackTime:J

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_50

    .line 197
    const-string v0, "MobilePrint"

    const-string v1, "MPrintMainService : time over!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    if-eqz v0, :cond_87

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mCurrentTransaction:Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintTransaction;->ID:I

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->responsePrintError(II)V

    .line 201
    :cond_87
    sget-object v0, Lcom/sec/android/app/mobileprint/MPrintMainService$Status;->IDLE:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService;->mServiceStatus:Lcom/sec/android/app/mobileprint/MPrintMainService$Status;

    .line 202
    invoke-direct {p0}, Lcom/sec/android/app/mobileprint/MPrintMainService;->releaseWakelock()V
    :try_end_8e
    .catchall {:try_start_5c .. :try_end_8e} :catchall_58

    goto :goto_50
.end method
