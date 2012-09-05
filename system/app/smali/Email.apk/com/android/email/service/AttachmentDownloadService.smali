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
    .line 110
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 116
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    new-instance v1, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;

    invoke-direct {v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadComparator;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;-><init>(Lcom/android/email/service/AttachmentDownloadService;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentFailureMap:Ljava/util/HashMap;

    .line 135
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;-><init>(Lcom/android/email/service/AttachmentDownloadService;Lcom/android/email/service/AttachmentDownloadService$1;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    .line 137
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    .line 744
    return-void
.end method

.method public static CheckActiveNetwork()Z
    .registers 2

    .prologue
    .line 976
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 978
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 979
    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService;->IsThereActiveNetwork()Z

    move-result v1

    .line 982
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method static synthetic access$100(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/email/service/AttachmentDownloadService;->getPriority(Lcom/android/emailcommon/provider/EmailContent$Attachment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/service/AttachmentDownloadService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService;->kick()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/email/service/AttachmentDownloadService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/email/service/AttachmentDownloadService;J)Landroid/content/Intent;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService;->getServiceIntentForAccount(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/service/AttachmentDownloadService;)Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mServiceCallback:Lcom/android/email/service/AttachmentDownloadService$ServiceCallback;

    return-object v0
.end method

.method public static attachmentChanged(JI)V
    .registers 5
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 1030
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 1031
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-nez v0, :cond_5

    .line 1047
    :goto_4
    return-void

    .line 1033
    :cond_5
    new-instance v1, Lcom/android/email/service/AttachmentDownloadService$1;

    invoke-direct {v1, v0, p0, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$1;-><init>(Lcom/android/email/service/AttachmentDownloadService;JI)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto :goto_4
.end method

.method public static cancelQueuedAttachment(J)Z
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 992
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 993
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 994
    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService;->dequeue(J)Z

    move-result v1

    .line 996
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
    .line 722
    const/4 v1, -0x1

    .line 723
    .local v1, priorityClass:I
    iget v0, p0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 724
    .local v0, flags:I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_9

    .line 725
    const/4 v1, 0x1

    .line 729
    :cond_8
    :goto_8
    return v1

    .line 726
    :cond_9
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_8

    .line 727
    const/4 v1, 0x2

    goto :goto_8
.end method

.method public static getQueueSize()I
    .registers 2

    .prologue
    .line 954
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 955
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 956
    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService;->getSize()I

    move-result v1

    .line 958
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
    .line 876
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 877
    if-nez v0, :cond_18

    .line 878
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->getProtocol(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_3c

    move-result-object v1

    .line 879
    if-nez v1, :cond_1a

    .line 880
    const/4 v0, 0x0

    .line 887
    :cond_18
    :goto_18
    monitor-exit p0

    return-object v0

    .line 881
    :cond_1a
    :try_start_1a
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/email/Controller$ControllerService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 882
    const-string v2, "eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.email.EXCHANGE_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 885
    :cond_32
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_3c

    goto :goto_18

    .line 876
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static isAttachmentQueued(J)Z
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 968
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 969
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 970
    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService;->isQueued(J)Z

    move-result v1

    .line 972
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public static isInProgressQueuedAttachment(J)Z
    .registers 4
    .parameter "attachmentId"

    .prologue
    .line 1000
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 1001
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 1002
    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService;->isInProgress(J)Z

    move-result v1

    .line 1004
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private kick()V
    .registers 3

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 734
    :try_start_3
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 735
    monitor-exit v1

    .line 736
    return-void

    .line 735
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
    .line 1016
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 1017
    .local v0, service:Lcom/android/email/service/AttachmentDownloadService;
    if-eqz v0, :cond_9

    .line 1018
    iget-object v1, v0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    #calls: Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onWatchdogAlarm()V
    invoke-static {v1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->access$900(Lcom/android/email/service/AttachmentDownloadService$DownloadSet;)V

    .line 1020
    :cond_9
    return-void
.end method


# virtual methods
.method IsThereActiveNetwork()Z
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->IsThereActiveNetwork()Z

    move-result v0

    return v0
.end method

.method addServiceIntentForTest(JLandroid/content/Intent;)V
    .registers 6
    .parameter "accountId"
    .parameter "intent"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountServiceMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    return-void
.end method

.method public canPrefetchForAccount(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/io/File;)Z
    .registers 24
    .parameter "account"
    .parameter "dir"

    .prologue
    .line 1056
    if-nez p1, :cond_5

    .line 1057
    const/16 v17, 0x0

    .line 1102
    :goto_4
    return v17

    .line 1059
    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    if-nez v17, :cond_16

    .line 1060
    const/16 v17, 0x0

    goto :goto_4

    .line 1062
    :cond_16
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v13

    .line 1063
    .local v13, totalStorage:J
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v15

    .line 1064
    .local v15, usableStorage:J
    long-to-float v0, v13

    move/from16 v17, v0

    const/high16 v18, 0x3e80

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-long v8, v0

    .line 1067
    .local v8, minAvailable:J
    cmp-long v17, v15, v8

    if-gez v17, :cond_2f

    .line 1068
    const/16 v17, 0x0

    goto :goto_4

    .line 1071
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAccountManagerStub:Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;->getNumberOfAccounts()I

    move-result v10

    .line 1072
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

    .line 1079
    .local v11, perAccountMaxStorage:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1080
    .local v2, accountStorage:Ljava/lang/Long;
    if-eqz v2, :cond_68

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v17, v17, v11

    if-lez v17, :cond_a3

    .line 1083
    :cond_68
    const-wide/16 v17, 0x0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1084
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 1085
    .local v5, files:[Ljava/io/File;
    if-eqz v5, :cond_8c

    .line 1086
    move-object v3, v5

    .local v3, arr$:[Ljava/io/File;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_77
    if-ge v6, v7, :cond_8c

    aget-object v4, v3, v6

    .line 1087
    .local v4, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v19

    add-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1086
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 1091
    .end local v3           #arr$:[Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/service/AttachmentDownloadService;->mAttachmentStorageMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    .end local v5           #files:[Ljava/io/File;
    :cond_a3
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    cmp-long v17, v17, v11

    if-gez v17, :cond_af

    .line 1096
    const/16 v17, 0x1

    goto/16 :goto_4

    .line 1098
    :cond_af
    sget-boolean v17, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v17, :cond_e9

    .line 1099
    const-string v17, "AttachmentService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ">> Prefetch not allowed for account "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

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

    .line 1102
    :cond_e9
    const/16 v17, 0x0

    goto/16 :goto_4
.end method

.method dequeue(J)Z
    .registers 7
    .parameter "attachmentId"

    .prologue
    .line 913
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    .line 914
    .local v0, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v0, :cond_2b

    .line 915
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 916
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

    .line 918
    :cond_24
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->remove(Ljava/lang/Object;)Z

    .line 919
    const/4 v1, 0x1

    .line 921
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
    .line 1196
    const-string v9, "AttachmentDownloadService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1198
    .local v7, time:J
    iget-object v10, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    monitor-enter v10

    .line 1199
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

    .line 1200
    iget-object v9, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v9}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1202
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    :cond_38
    :goto_38
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1de

    .line 1203
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    .line 1204
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

    .line 1205
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

    .line 1207
    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->attachmentId:J

    invoke-static {p0, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v1

    .line 1208
    .local v1, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-nez v1, :cond_154

    .line 1209
    const-string v9, "      Attachment not in database?"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1230
    :cond_a9
    :goto_a9
    iget-boolean v9, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    if-eqz v9, :cond_38

    .line 1231
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

    .line 1233
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

    .line 1235
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

    .line 1236
    iget-wide v11, v5, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->lastCallbackTime:J

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-lez v9, :cond_38

    .line 1237
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

    .line 1241
    .end local v1           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .end local v5           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :catchall_14d
    move-exception v9

    monitor-exit v10
    :try_end_14f
    .catchall {:try_start_e .. :try_end_14f} :catchall_14d

    throw v9

    .line 1205
    .restart local v3       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;>;"
    .restart local v5       #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    :cond_150
    :try_start_150
    const-string v9, ""

    goto/16 :goto_8d

    .line 1210
    .restart local v1       #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_154
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    if-eqz v9, :cond_a9

    .line 1211
    iget-object v2, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 1212
    .local v2, fileName:Ljava/lang/String;
    const-string v6, "[none]"

    .line 1213
    .local v6, suffix:Ljava/lang/String;
    const/16 v9, 0x2e

    invoke-virtual {v2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 1214
    .local v4, lastDot:I
    if-ltz v4, :cond_168

    .line 1215
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1217
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

    .line 1218
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v9, :cond_19e

    .line 1219
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

    .line 1221
    :cond_19e
    const-string v9, " Mime: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1222
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-eqz v9, :cond_1cc

    .line 1223
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1228
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

    .line 1225
    :cond_1cc
    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1226
    const-string v9, " [inferred]"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1b0

    .line 1241
    .end local v1           #att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v4           #lastDot:I
    .end local v5           #req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    .end local v6           #suffix:Ljava/lang/String;
    :cond_1de
    monitor-exit v10
    :try_end_1df
    .catchall {:try_start_150 .. :try_end_1df} :catchall_14d

    .line 1242
    return-void
.end method

.method getSize()I
    .registers 2

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->size()I

    move-result v0

    return v0
.end method

.method isInProgress(J)Z
    .registers 7
    .parameter "attachmentId"

    .prologue
    .line 938
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v0

    .line 939
    .local v0, req:Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;
    if-eqz v0, :cond_27

    .line 940
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_24

    .line 941
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

    .line 943
    :cond_24
    iget-boolean v1, v0, Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;->inProgress:Z

    .line 945
    :goto_26
    return v1

    :cond_27
    const/4 v1, 0x0

    goto :goto_26
.end method

.method isQueued(J)Z
    .registers 5
    .parameter "attachmentId"

    .prologue
    const/4 v0, 0x0

    .line 899
    invoke-static {}, Lcom/android/email/service/AttachmentDownloadService;->CheckActiveNetwork()Z

    move-result v1

    if-nez v1, :cond_8

    .line 901
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v1, p1, p2}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->findDownloadRequest(J)Lcom/android/email/service/AttachmentDownloadService$DownloadRequest;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 1177
    const/4 v0, 0x0

    return-object v0
.end method

.method onChange(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .registers 3
    .parameter "att"

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p0, p1}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 896
    return-void
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 1172
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "AttachmentDownloadService"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1173
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1182
    const-string v0, "AttachmentService"

    const-string v1, "**** ON DESTROY!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    .line 1184
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    if-eqz v0, :cond_14

    .line 1185
    invoke-direct {p0}, Lcom/android/email/service/AttachmentDownloadService;->kick()V

    .line 1186
    sput-object v2, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 1188
    :cond_14
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    if-eqz v0, :cond_1f

    .line 1189
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->unregister()V

    .line 1190
    iput-object v2, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    .line 1192
    :cond_1f
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 1157
    sget-object v0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    if-nez v0, :cond_6

    .line 1158
    sput-object p0, Lcom/android/email/service/AttachmentDownloadService;->sRunningService:Lcom/android/email/service/AttachmentDownloadService;

    .line 1160
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1108
    iput-object p0, p0, Lcom/android/email/service/AttachmentDownloadService;->mContext:Landroid/content/Context;

    .line 1109
    new-instance v0, Lcom/android/email/EmailConnectivityManager;

    const-string v1, "AttachmentService"

    invoke-direct {v0, p0, v1}, Lcom/android/email/EmailConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    .line 1110
    new-instance v0, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    invoke-direct {v0, p0}, Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mAccountManagerStub:Lcom/android/email/service/AttachmentDownloadService$AccountManagerStub;

    .line 1115
    const/4 v9, 0x6

    .line 1116
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

    .line 1121
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

    .line 1122
    :cond_48
    :goto_48
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 1123
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v6

    .line 1125
    .local v6, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v6, :cond_48

    .line 1126
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0, p0, v6}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->onChange(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    :try_end_5e
    .catchall {:try_start_2c .. :try_end_5e} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_5e} :catch_5f

    goto :goto_48

    .line 1129
    .end local v6           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :catch_5f
    move-exception v8

    .line 1130
    .local v8, e:Ljava/lang/Exception;
    :try_start_60
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_88

    .line 1132
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1136
    .end local v8           #e:Ljava/lang/Exception;
    :goto_66
    iget-boolean v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mStop:Z

    if-nez v0, :cond_8d

    .line 1138
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->waitForConnectivity()V

    .line 1139
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mDownloadSet:Lcom/android/email/service/AttachmentDownloadService$DownloadSet;

    invoke-virtual {v0}, Lcom/android/email/service/AttachmentDownloadService$DownloadSet;->processQueue()V

    .line 1140
    iget-object v1, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1142
    :try_start_77
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mLock:Ljava/lang/Object;

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_81
    .catch Ljava/lang/InterruptedException; {:try_start_77 .. :try_end_7f} :catch_97

    .line 1146
    :goto_7f
    :try_start_7f
    monitor-exit v1

    goto :goto_66

    :catchall_81
    move-exception v0

    monitor-exit v1
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_81

    throw v0

    .line 1132
    :cond_84
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_66

    :catchall_88
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1150
    :cond_8d
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    if-eqz v0, :cond_96

    .line 1151
    iget-object v0, p0, Lcom/android/email/service/AttachmentDownloadService;->mConnectivityManager:Lcom/android/email/EmailConnectivityManager;

    invoke-virtual {v0}, Lcom/android/email/EmailConnectivityManager;->unregister()V

    .line 1153
    :cond_96
    return-void

    .line 1143
    :catch_97
    move-exception v0

    goto :goto_7f
.end method
