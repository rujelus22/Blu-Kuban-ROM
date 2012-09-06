.class public Lcom/android/email/service/AttachmentDownloadService;
.super Landroid/app/Service;
.source "AttachmentDownloadService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;,
        Lcom/android/email/service/AttachmentDownloadService$DownloadSet;,
        Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;,
        Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;,
        Lcom/android/email/service/AttachmentDownloadService$Watchdog;,
        Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;
    }
.end annotation


# static fields
.field static volatile sRunningService:Lcom/android/email/service/AttachmentDownloadService;


# instance fields
.field mAccountManagerStub:Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

.field private final mAccountServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final mAttachmentFailureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mAttachmentStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

.field mContext:Landroid/content/Context;

.field final mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

.field private volatile mStop:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 102
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    new-instance v1, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;

    invoke-direct {v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;-><init>(Lcom/android/email/service/AttachmentDownloadService;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    .line 114
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/android/email/service/AttachmentDownloadService;Lcom/android/email/service/AttachmentDownloadService$1;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    .line 647
    return-void
.end method

.method static synthetic access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/android/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService;->kick()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/service/AttachmentDownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/service/AttachmentDownloadService;J)Landroid/content/Intent;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService;->getServiceIntentForAccount(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/service/AttachmentDownloadService;)Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    return-object v0
.end method

.method public static attachmentChanged(Landroid/content/Context;JI)V
    .registers 5
    .parameter "context"
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 796
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/service/AttachmentDownloadService$1;-><init>(Landroid/content/Context;JI)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 809
    return-void
.end method

.method public static cancelQueuedAttachment(J)Z
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 775
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 776
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 777
    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService;->dequeue(J)Z

    move-result v1

    .line 779
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private static getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .registers 4
    .parameter "att"

    .prologue
    .line 626
    const/4 v1, -0x1

    .line 627
    .local v1, priorityClass:I
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 628
    .local v0, flags:I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_9

    .line 629
    const/4 v1, 0x1

    .line 633
    :cond_8
    :goto_8
    return v1

    .line 630
    :cond_9
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_8

    .line 631
    const/4 v1, 0x2

    goto :goto_8
.end method

.method public static getQueueSize()I
    .registers 2

    .prologue
    .line 749
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 750
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 751
    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService;->getSize()I

    move-result v1

    .line 753
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private declared-synchronized getServiceIntentForAccount(J)Landroid/content/Intent;
    .registers 7
    .parameter

    .prologue
    .line 703
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 704
    if-nez v0, :cond_18

    .line 705
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3c

    move-result-object v1

    .line 706
    if-nez v1, :cond_1a

    const/4 v0, 0x0

    .line 713
    :cond_18
    :goto_18
    monitor-exit p0

    return-object v0

    .line 707
    :cond_1a
    :try_start_1a
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/Controller$ControllerService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 708
    const-string v2, "eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 709
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    :cond_32
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_3c

    goto :goto_18

    .line 703
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isAttachmentQueued(J)Z
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 762
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 763
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 764
    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService;->isQueued(J)Z

    move-result v1

    .line 766
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private kick()V
    .registers 3

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 638
    :try_start_3
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 639
    monitor-exit v1

    .line 640
    return-void

    .line 639
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public static watchdogAlarm()V
    .registers 2

    .prologue
    .line 783
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 784
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 785
    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    #calls: Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onWatchdogAlarm()V
    invoke-static {v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->access$800(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;)V

    .line 787
    :cond_9
    return-void
.end method


# virtual methods
.method addServiceIntentForTest(JLandroid/content/Intent;)V
    .registers 6
    .parameter "accountId"
    .parameter "intent"

    .prologue
    .line 717
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    return-void
.end method

.method public canPrefetchForAccount(Lcom/android/emailcommon/provider/Account;Ljava/io/File;)Z
    .registers 24
    .parameter "account"
    .parameter "dir"

    .prologue
    .line 817
    if-nez p1, :cond_5

    const/16 v17, 0x0

    .line 859
    :goto_4
    return v17

    .line 819
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-nez v17, :cond_16

    const/16 v17, 0x0

    goto :goto_4

    .line 821
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v13

    .line 822
    .local v13, totalStorage:J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v15

    .line 823
    .local v15, usableStorage:J
    long-to-float v0, v13

    move/from16 v17, v0

    const/high16 v18, 0x3e80

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-long v8, v0

    .line 826
    .local v8, minAvailable:J
    cmp-long v17, v15, v8

    if-gez v17, :cond_2f

    .line 827
    const/16 v17, 0x0

    goto :goto_4

    .line 830
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAccountManagerStub:Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->getNumberOfAccounts()I

    move-result v10

    .line 831
    .local v10, numberOfAccounts:I
    long-to-float v0, v13

    move/from16 v17, v0

    const/high16 v18, 0x3e80

    mul-float v17, v17, v18

    int-to-float v0, v10

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-long v11, v0

    .line 837
    .local v11, perAccountMaxStorage:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 838
    .local v2, accountStorage:Ljava/lang/Long;
    if-eqz v2, :cond_68

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v17, v17, v11

    if-lez v17, :cond_a3

    .line 840
    :cond_68
    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 841
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 842
    .local v5, files:[Ljava/io/File;
    if-eqz v5, :cond_8c

    .line 843
    move-object v3, v5

    .local v3, arr$:[Ljava/io/File;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_77
    if-ge v6, v7, :cond_8c

    aget-object v4, v3, v6

    .line 844
    .local v4, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v19

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 843
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 848
    .end local v3           #arr$:[Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .end local v5           #files:[Ljava/io/File;
    :cond_a3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v17, v17, v11

    if-gez v17, :cond_af

    .line 853
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 855
    :cond_af
    sget-boolean v17, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v17, :cond_e9

    .line 856
    const-string v17, "AttachmentService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">> Prefetch not allowed for account "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/Account;->mId:J

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; used "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", limit "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_e9
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method dequeue(J)Z
    .registers 7
    .parameter "attachmentId"

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    .line 734
    .local v0, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v0, :cond_2b

    .line 735
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 736
    const-string v1, "AttachmentService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dequeued attachmentId:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_24
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 739
    const/4 v1, 0x1

    .line 741
    :goto_2a
    return v1

    :cond_2b
    const/4 v1, 0x0

    goto :goto_2a
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 19
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 954
    const-string v9, "AttachmentDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 956
    .local v7, time:J
    iget-object v10, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    monitor-enter v10

    .line 957
    :try_start_e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  Queue, "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v11}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " entries"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    iget-object v9, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v9}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 960
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1de

    .line 961
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 962
    .local v5, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    Account: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->accountId:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", Attachment: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      Priority: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->priority:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", Time: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->time:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v9, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-eqz v9, :cond_150

    const-string v9, " [In progress]"

    :goto_8d
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 965
    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 966
    .local v1, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v1, :cond_154

    .line 967
    const-string v9, "      Attachment not in database?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    :cond_a9
    :goto_a9
    iget-boolean v9, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-eqz v9, :cond_38

    .line 989
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      Status: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastStatusCode:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", Progress: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastProgress:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      Started: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ", Callback: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      Elapsed: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->startTime:J

    sub-long v11, v7, v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-lez v9, :cond_38

    .line 995
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      CB: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    sub-long v11, v7, v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "s"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_38

    .line 999
    .end local v1           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .end local v5           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_14d
    move-exception v9

    monitor-exit v10
    :try_end_14f
    .catchall {:try_start_e .. :try_end_14f} :catchall_14d

    throw v9

    .line 963
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .restart local v5       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_150
    :try_start_150
    const-string v9, ""

    goto/16 :goto_8d

    .line 968
    .restart local v1       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_154
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-eqz v9, :cond_a9

    .line 969
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 970
    .local v2, fileName:Ljava/lang/String;
    const-string v6, "[none]"

    .line 971
    .local v6, suffix:Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 972
    .local v4, lastDot:I
    if-ltz v4, :cond_168

    .line 973
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 975
    :cond_168
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "      Suffix: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 976
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v9, :cond_19e

    .line 977
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ContentUri: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 979
    :cond_19e
    const-string v9, " Mime: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v9, :cond_1cc

    .line 981
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 986
    :goto_1b0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " Size: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v11, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_a9

    .line 983
    :cond_1cc
    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 984
    const-string v9, " [inferred]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1b0

    .line 999
    .end local v1           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #lastDot:I
    .end local v5           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v6           #suffix:Ljava/lang/String;
    :cond_1de
    monitor-exit v10
    :try_end_1df
    .catchall {:try_start_150 .. :try_end_1df} :catchall_14d

    .line 1000
    return-void
.end method

.method getSize()I
    .registers 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v0

    return v0
.end method

.method isQueued(J)Z
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 935
    const/4 v0, 0x0

    return-object v0
.end method

.method onChange(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 3
    .parameter "att"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 722
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 931
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AttachmentDownloadService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 932
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    .line 942
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    if-eqz v0, :cond_d

    .line 943
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService;->kick()V

    .line 944
    sput-object v1, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 946
    :cond_d
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    if-eqz v0, :cond_18

    .line 947
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->unregister()V

    .line 948
    iput-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    .line 950
    :cond_18
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 918
    sget-object v1, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    if-nez v1, :cond_6

    .line 919
    sput-object p0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 921
    :cond_6
    if-eqz p1, :cond_1b

    const-string v1, "com.android.email.AttachmentDownloadService.attachment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 922
    const-string v1, "com.android.email.AttachmentDownloadService.attachment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 923
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-virtual {p0, v0}, Lcom/android/email/service/AttachmentDownloadService;->onChange(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 925
    .end local v0           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 865
    iput-object p0, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    .line 866
    new-instance v0, Lcom/android/email/EmailConnectivityManager;

    const-string v1, "AttachmentService"

    invoke-direct {v0, p0, v1}, Lcom/android/email/EmailConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    .line 867
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    invoke-direct {v0, p0}, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountManagerStub:Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    .line 871
    const/4 v9, 0x6

    .line 872
    .local v9, mask:I
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentDownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "(flags & ?) != 0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 876
    .local v7, c:Landroid/database/Cursor;
    :try_start_2c
    const-string v0, "AttachmentService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_48
    :goto_48
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 878
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    .line 880
    .local v6, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v6, :cond_48

    .line 881
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p0, v6}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_5e
    .catchall {:try_start_2c .. :try_end_5e} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5e} :catch_5f

    goto :goto_48

    .line 884
    .end local v6           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_5f
    move-exception v8

    .line 885
    .local v8, e:Ljava/lang/Exception;
    :try_start_60
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_94

    .line 888
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 892
    .end local v8           #e:Ljava/lang/Exception;
    :goto_66
    iget-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    if-nez v0, :cond_86

    .line 894
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->waitForConnectivity()V

    .line 895
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->processQueue()V

    .line 896
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 897
    const-string v0, "AttachmentService"

    const-string v1, "*** All done; shutting down service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual {p0}, Lcom/android/email/service/AttachmentDownloadService;->stopSelf()V

    .line 911
    :cond_86
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    if-eqz v0, :cond_8f

    .line 912
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->unregister()V

    .line 914
    :cond_8f
    return-void

    .line 888
    :cond_90
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_66

    :catchall_94
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 901
    :cond_99
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 903
    :try_start_9c
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_a6
    .catch Ljava/lang/InterruptedException; {:try_start_9c .. :try_end_a4} :catch_a9

    .line 907
    :goto_a4
    :try_start_a4
    monitor-exit v1

    goto :goto_66

    :catchall_a6
    move-exception v0

    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_a6

    throw v0

    .line 904
    :catch_a9
    move-exception v0

    goto :goto_a4
.end method
