.class public Lcom/google/android/finsky/library/LibraryReplicator;
.super Ljava/lang/Object;
.source "LibraryReplicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;,
        Lcom/google/android/finsky/library/LibraryReplicator$LibraryUpdateListener;,
        Lcom/google/android/finsky/library/LibraryReplicator$Listener;,
        Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    }
.end annotation


# instance fields
.field private final mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

.field private mDebugEvents:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mDfeApi:Lcom/google/android/finsky/api/DfeApi;

.field private final mEnableDebugging:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryReplicator$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationHandler:Landroid/os/Handler;

.field private final mReplicationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mReplicationRunnable:Ljava/lang/Runnable;

.field private final mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/library/SQLiteLibrary;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Handler;Landroid/os/Handler;Z)V
    .registers 8
    .parameter "dfeApi"
    .parameter "sqLiteLibrary"
    .parameter "accountLibrary"
    .parameter "notificationHandler"
    .parameter "backgroundHandler"
    .parameter "enableDebugging"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mListeners:Ljava/util/List;

    .line 105
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;

    .line 111
    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicator$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/library/LibraryReplicator$1;-><init>(Lcom/google/android/finsky/library/LibraryReplicator;)V

    iput-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRunnable:Ljava/lang/Runnable;

    .line 140
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    .line 141
    iput-object p2, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    .line 142
    iput-object p3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    .line 143
    iput-object p4, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;

    .line 144
    iput-object p5, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    .line 145
    iput-boolean p6, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mCurrentRequest:Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/finsky/library/LibraryReplicator;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/LibraryReplicator;->scheduleRequestAtFront(Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/finsky/library/LibraryReplicator;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/finsky/library/LibraryReplicator;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/library/LibraryReplicator;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/library/LibraryReplicator;ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/finsky/library/LibraryReplicator;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/LibraryReplicator;->buildLibraryState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/api/DfeApi;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/SQLiteLibrary;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicator;->internalApplyLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/finsky/library/LibraryReplicator;)Lcom/google/android/finsky/library/AccountLibrary;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    return-object v0
.end method

.method private buildLibraryState(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    .registers 7
    .parameter "libraryId"

    .prologue
    .line 225
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getLibrary(Ljava/lang/String;)Lcom/google/android/finsky/library/HashingLibrary;

    move-result-object v0

    .line 226
    .local v0, library:Lcom/google/android/finsky/library/HashingLibrary;
    new-instance v1, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;-><init>()V

    .line 229
    .local v1, result:Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;
    invoke-static {p1}, Lcom/google/android/finsky/library/AccountLibrary;->getBackendFromLibraryId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setCorpus(I)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    .line 230
    invoke-virtual {v1, p1}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setLibraryId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    .line 231
    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->getHash()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setHashCodeSum(J)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    .line 232
    invoke-virtual {v0}, Lcom/google/android/finsky/library/HashingLibrary;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setLibrarySize(I)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    .line 233
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v3, p1}, Lcom/google/android/finsky/library/AccountLibrary;->getServerToken(Ljava/lang/String;)[B

    move-result-object v2

    .line 234
    .local v2, token:[B
    if-eqz v2, :cond_32

    .line 235
    invoke-static {v2}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;->setServerToken(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/google/android/finsky/remoting/protos/LibraryReplication$ClientLibraryState;

    .line 237
    :cond_32
    return-object v1
.end method

.method private checkOnBackgroundHandler()V
    .registers 3

    .prologue
    .line 353
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_14

    .line 354
    const-string v0, "This method must be called from the background handler."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    :cond_14
    return-void
.end method

.method private createLibraryEntry(Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryEntry;
    .registers 39
    .parameter "mutation"
    .parameter "libraryId"

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v1}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 360
    .local v2, accountName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, docId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackend()I

    move-result v15

    .line 362
    .local v15, backend:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getType()I

    move-result v30

    .line 363
    .local v30, docType:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getOfferType()I

    move-result v4

    .line 364
    .local v4, offerType:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDocumentHash()J

    move-result-wide v5

    .line 365
    .local v5, documentHash:J
    const-string v1, "u-wl"

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    .line 366
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDeleted()Z

    move-result v1

    if-nez v1, :cond_65

    const/4 v1, 0x1

    move/from16 v0, v30

    if-ne v0, v1, :cond_65

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getAppDetails()Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;

    move-result-object v34

    .line 368
    .local v34, appDetails:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getCertificateHash()Ljava/lang/String;

    move-result-object v7

    .line 369
    .local v7, certificateHash:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 370
    .local v8, refundPreDeliveryEndtimeMs:J
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasRefundTimeoutTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 371
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getRefundTimeoutTimestampMsec()J

    move-result-wide v8

    .line 373
    :cond_53
    const-wide/16 v10, 0x0

    .line 374
    .local v10, refundPostDeliveryWindowMs:J
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->hasPostDeliveryRefundWindowMsec()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 375
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;->getPostDeliveryRefundWindowMsec()J

    move-result-wide v10

    .line 377
    :cond_5f
    new-instance v1, Lcom/google/android/finsky/library/LibraryAppEntry;

    invoke-direct/range {v1 .. v11}, Lcom/google/android/finsky/library/LibraryAppEntry;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;JJ)V

    .line 391
    .end local v7           #certificateHash:Ljava/lang/String;
    .end local v8           #refundPreDeliveryEndtimeMs:J
    .end local v10           #refundPostDeliveryWindowMs:J
    .end local v34           #appDetails:Lcom/google/android/finsky/remoting/protos/Library$LibraryAppDetails;
    :goto_64
    return-object v1

    .line 379
    :cond_65
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDeleted()Z

    move-result v1

    if-nez v1, :cond_9e

    const/16 v1, 0xf

    move/from16 v0, v30

    if-ne v0, v1, :cond_9e

    .line 380
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getSubscriptionDetails()Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;

    move-result-object v35

    .line 381
    .local v35, subscriptionDetails:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getInitiationTimestampMsec()J

    move-result-wide v18

    .line 382
    .local v18, initiationTimeStampMs:J
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getValidUntilTimestampMsec()J

    move-result-wide v20

    .line 383
    .local v20, validUntilTimestampMs:J
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->hasTrialUntilTimestampMsec()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-virtual/range {v35 .. v35}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getTrialUntilTimestampMsec()J

    move-result-wide v22

    .line 385
    .local v22, trialUntilTimestampMs:J
    :goto_87
    invoke-virtual/range {v35 .. v35}, Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;->getAutoRenewing()Z

    move-result v24

    .line 386
    .local v24, isAutoRenewing:Z
    new-instance v12, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;

    move-object v13, v2

    move-object/from16 v14, p2

    move-object/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v25, v5

    invoke-direct/range {v12 .. v26}, Lcom/google/android/finsky/library/LibrarySubscriptionEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJJZJ)V

    move-object v1, v12

    goto :goto_64

    .line 383
    .end local v22           #trialUntilTimestampMs:J
    .end local v24           #isAutoRenewing:Z
    :cond_9b
    const-wide/16 v22, 0x0

    goto :goto_87

    .line 391
    .end local v18           #initiationTimeStampMs:J
    .end local v20           #validUntilTimestampMs:J
    .end local v35           #subscriptionDetails:Lcom/google/android/finsky/remoting/protos/Library$LibrarySubscriptionDetails;
    :cond_9e
    new-instance v25, Lcom/google/android/finsky/library/LibraryEntry;

    move-object/from16 v26, v2

    move-object/from16 v27, p2

    move/from16 v28, v15

    move-object/from16 v29, v3

    move/from16 v31, v4

    move-wide/from16 v32, v5

    invoke-direct/range {v25 .. v33}, Lcom/google/android/finsky/library/LibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIJ)V

    move-object/from16 v1, v25

    goto :goto_64
.end method

.method private getSupportedLibraries([Ljava/lang/String;)[Ljava/lang/String;
    .registers 10
    .parameter "libraryIds"

    .prologue
    .line 180
    const/4 v6, 0x0

    .line 181
    .local v6, unsupportedLibraries:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_15

    aget-object v3, v0, v1

    .line 182
    .local v3, libraryId:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v7, v3}, Lcom/google/android/finsky/library/AccountLibrary;->supportsLibrary(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 183
    add-int/lit8 v6, v6, 0x1

    .line 181
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 188
    .end local v3           #libraryId:Ljava/lang/String;
    :cond_15
    array-length v7, p1

    if-ne v6, v7, :cond_1a

    .line 189
    const/4 v4, 0x0

    .line 202
    :cond_19
    :goto_19
    return-object v4

    .line 190
    :cond_1a
    if-lez v6, :cond_37

    .line 191
    array-length v7, p1

    sub-int/2addr v7, v6

    new-array v4, v7, [Ljava/lang/String;

    .line 192
    .local v4, result:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 193
    .local v5, supportedLibraryIndex:I
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_19

    aget-object v3, v0, v1

    .line 194
    .restart local v3       #libraryId:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v7, v3}, Lcom/google/android/finsky/library/AccountLibrary;->supportsLibrary(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 195
    aput-object v3, v4, v5

    .line 196
    add-int/lit8 v5, v5, 0x1

    .line 193
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 200
    .end local v3           #libraryId:Ljava/lang/String;
    .end local v4           #result:[Ljava/lang/String;
    .end local v5           #supportedLibraryIndex:I
    :cond_37
    move-object v4, p1

    .restart local v4       #result:[Ljava/lang/String;
    goto :goto_19
.end method

.method private declared-synchronized handleNextRequest(J)V
    .registers 5
    .parameter "delayMs"

    .prologue
    .line 213
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 215
    monitor-exit p0

    return-void

    .line 213
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private internalApplyLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)Z
    .registers 20
    .parameter "libraryUpdate"
    .parameter "debugTag"

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    if-eqz v13, :cond_11

    .line 268
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v13, v1, v14, v2}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    .line 270
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/library/LibraryReplicator;->checkOnBackgroundHandler()V

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasLibraryId()Z

    move-result v13

    if-eqz v13, :cond_3f

    .line 274
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getLibraryId()Ljava/lang/String;

    move-result-object v8

    .line 279
    .local v8, libraryId:Ljava/lang/String;
    :goto_1e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v13, v8}, Lcom/google/android/finsky/library/AccountLibrary;->supportsLibrary(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_48

    .line 280
    const-string v13, "Ignoring library update for unsupported library %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    .line 282
    const/4 v13, 0x0

    .line 338
    :goto_3e
    return v13

    .line 276
    .end local v8           #libraryId:Ljava/lang/String;
    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getCorpus()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #libraryId:Ljava/lang/String;
    goto :goto_1e

    .line 284
    :cond_48
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v13}, Lcom/google/android/finsky/library/AccountLibrary;->disableListeners()V

    .line 286
    :try_start_4f
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getStatus()I

    move-result v13

    packed-switch v13, :pswitch_data_14c

    .line 318
    const-string v13, "Unknown LibraryUpdate.status: libraryId=%s, status=%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getStatus()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_6c
    :goto_6c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->hasServerToken()Z

    move-result v13

    if-eqz v13, :cond_ad

    .line 322
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getServerToken()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v10

    .line 323
    .local v10, serverTokenBytes:Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v10}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v11

    .line 324
    .local v11, token:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v13, v8, v11}, Lcom/google/android/finsky/library/AccountLibrary;->setServerToken(Ljava/lang/String;[B)V

    .line 325
    invoke-static {v8}, Lcom/google/android/finsky/utils/FinskyPreferences;->getLibraryServerToken(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v14

    iget-object v14, v14, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v12

    .line 328
    .local v12, tokenPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/String;>;"
    const/4 v13, 0x0

    invoke-static {v11, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 329
    .local v4, encodedToken:Ljava/lang/String;
    invoke-virtual {v12, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 330
    sget-boolean v13, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v13, :cond_ad

    .line 331
    const-string v13, "Updated server token: libraryId=%s serverToken=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    const/4 v15, 0x1

    aput-object v4, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ad
    .catchall {:try_start_4f .. :try_end_ad} :catchall_10c

    .line 336
    .end local v4           #encodedToken:Ljava/lang/String;
    .end local v10           #serverTokenBytes:Lcom/google/protobuf/micro/ByteStringMicro;
    .end local v11           #token:[B
    .end local v12           #tokenPref:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;,"Lcom/google/android/finsky/config/PreferenceFile$SharedPreference<Ljava/lang/String;>;"
    :cond_ad
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v13}, Lcom/google/android/finsky/library/AccountLibrary;->enableListeners()V

    .line 338
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getHasMore()Z

    move-result v13

    goto :goto_3e

    .line 288
    :pswitch_b9
    :try_start_b9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Lcom/google/android/finsky/library/SQLiteLibrary;->resetAccountLibrary(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v13, v8}, Lcom/google/android/finsky/library/AccountLibrary;->resetLibrary(Ljava/lang/String;)V

    .line 293
    :pswitch_cf
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationCount()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 295
    .local v3, additions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryEntry;>;"
    const/4 v5, 0x0

    .line 296
    .local v5, hasRemovals:Z
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;->getMutationList()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_e0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_115

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;

    .line 297
    .local v9, mutation:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/google/android/finsky/library/LibraryReplicator;->createLibraryEntry(Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;Ljava/lang/String;)Lcom/google/android/finsky/library/LibraryEntry;

    move-result-object v7

    .line 298
    .local v7, libraryEntry:Lcom/google/android/finsky/library/LibraryEntry;
    invoke-virtual {v9}, Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;->getDeleted()Z

    move-result v13

    if-eqz v13, :cond_108

    .line 299
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v13, v7}, Lcom/google/android/finsky/library/AccountLibrary;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v13, v7}, Lcom/google/android/finsky/library/SQLiteLibrary;->remove(Lcom/google/android/finsky/library/LibraryEntry;)V

    .line 301
    const/4 v5, 0x1

    goto :goto_e0

    .line 303
    :cond_108
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10b
    .catchall {:try_start_b9 .. :try_end_10b} :catchall_10c

    goto :goto_e0

    .line 336
    .end local v3           #additions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryEntry;>;"
    .end local v5           #hasRemovals:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #libraryEntry:Lcom/google/android/finsky/library/LibraryEntry;
    .end local v9           #mutation:Lcom/google/android/finsky/remoting/protos/Library$LibraryMutation;
    :catchall_10c
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14}, Lcom/google/android/finsky/library/AccountLibrary;->enableListeners()V

    throw v13

    .line 306
    .restart local v3       #additions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryEntry;>;"
    .restart local v5       #hasRemovals:Z
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_115
    :try_start_115
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/library/AccountLibrary;->addAll(Ljava/util/Collection;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mSQLiteLibrary:Lcom/google/android/finsky/library/SQLiteLibrary;

    invoke-virtual {v13, v3}, Lcom/google/android/finsky/library/SQLiteLibrary;->addAll(Ljava/util/Collection;)V

    .line 308
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_12b

    if-eqz v5, :cond_6c

    .line 309
    :cond_12b
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/google/android/finsky/library/LibraryReplicator;->notifyMutationListeners(Ljava/lang/String;)V

    goto/16 :goto_6c

    .line 313
    .end local v3           #additions:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/library/LibraryEntry;>;"
    .end local v5           #hasRemovals:Z
    .end local v6           #i$:Ljava/util/Iterator;
    :pswitch_132
    sget-boolean v13, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v13, :cond_141

    .line 314
    const-string v13, "NOT_MODIFIED received for libraryId=%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_141
    .catchall {:try_start_115 .. :try_end_141} :catchall_10c

    .line 316
    :cond_141
    const/4 v13, 0x0

    .line 336
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v14}, Lcom/google/android/finsky/library/AccountLibrary;->enableListeners()V

    goto/16 :goto_3e

    .line 286
    nop

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_132
        :pswitch_cf
        :pswitch_b9
    .end packed-switch
.end method

.method private declared-synchronized notifyMutationListeners(Ljava/lang/String;)V
    .registers 6
    .parameter "libraryId"

    .prologue
    .line 342
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/library/LibraryReplicator$Listener;

    .line 343
    .local v1, listener:Lcom/google/android/finsky/library/LibraryReplicator$Listener;
    iget-object v2, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/finsky/library/LibraryReplicator$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/google/android/finsky/library/LibraryReplicator$3;-><init>(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/library/LibraryReplicator$Listener;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1e

    goto :goto_7

    .line 342
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/finsky/library/LibraryReplicator$Listener;
    :catchall_1e
    move-exception v2

    monitor-exit p0

    throw v2

    .line 350
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_21
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V
    .registers 8
    .parameter "type"
    .parameter "libraryUpdate"
    .parameter "volleyError"
    .parameter "tag"

    .prologue
    .line 503
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    if-nez v1, :cond_b

    .line 504
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    .line 506
    :cond_b
    new-instance v0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;-><init>(Lcom/google/android/finsky/library/LibraryReplicator$1;)V

    .line 507
    .local v0, debugEvent:Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->timestampMs:J
    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1502(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;J)J

    .line 508
    #setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->type:I
    invoke-static {v0, p1}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1602(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;I)I

    .line 509
    #setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->tag:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1702(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    #setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->libraryUpdate:Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;
    invoke-static {v0, p2}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1802(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;)Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    .line 511
    #setter for: Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->volleyError:Lcom/android/volley/VolleyError;
    invoke-static {v0, p3}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->access$1902(Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;

    .line 512
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_38

    .line 514
    iget-object v1, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    .line 516
    :cond_38
    monitor-exit p0

    return-void

    .line 503
    .end local v0           #debugEvent:Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;
    :catchall_3a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized scheduleRequestAtFront(Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;)V
    .registers 6
    .parameter "request"

    .prologue
    .line 206
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    if-eqz v0, :cond_d

    .line 207
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;->debugTag:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    .line 209
    :cond_d
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 210
    monitor-exit p0

    return-void

    .line 206
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/google/android/finsky/library/LibraryReplicator$Listener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 150
    monitor-exit p0

    return-void

    .line 149
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public applyLibraryUpdate(Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V
    .registers 5
    .parameter "libraryUpdate"
    .parameter "debugTag"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicator$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/finsky/library/LibraryReplicator$2;-><init>(Lcom/google/android/finsky/library/LibraryReplicator;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void
.end method

.method public dumpState(Ljava/lang/String;)V
    .registers 8
    .parameter "indent"

    .prologue
    .line 522
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mAccountLibrary:Lcom/google/android/finsky/library/AccountLibrary;

    invoke-virtual {v3}, Lcom/google/android/finsky/library/AccountLibrary;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 523
    .local v2, scrubbedAccount:Ljava/lang/String;
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LibraryReplicator (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    if-eqz v3, :cond_6a

    .line 525
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  eventsCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v3, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mDebugEvents:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;

    .line 527
    .local v0, debugEvent:Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;
    invoke-virtual {v0, p1}, Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;->dumpState(Ljava/lang/String;)V

    goto :goto_5a

    .line 530
    .end local v0           #debugEvent:Lcom/google/android/finsky/library/LibraryReplicator$DebugEvent;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_6a
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  eventsCount=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_82
    const-string v3, "FinskyLibrary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "} (account="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-void
.end method

.method public declared-synchronized replicate([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 7
    .parameter "libraryIds"
    .parameter "finishRunnable"
    .parameter "debugTag"

    .prologue
    .line 161
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mEnableDebugging:Z

    if-eqz v0, :cond_26

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " libraryIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 163
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/google/android/finsky/library/LibraryReplicator;->recordDebugEvent(ILcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Lcom/android/volley/VolleyError;Ljava/lang/String;)V

    .line 165
    :cond_26
    invoke-direct {p0, p1}, Lcom/google/android/finsky/library/LibraryReplicator;->getSupportedLibraries([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 166
    if-nez p1, :cond_3b

    .line 167
    const-string v0, "Skipping replication request since all libraries are unsupported."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_4c

    .line 173
    :goto_39
    monitor-exit p0

    return-void

    .line 171
    :cond_3b
    :try_start_3b
    iget-object v0, p0, Lcom/google/android/finsky/library/LibraryReplicator;->mReplicationRequests:Ljava/util/List;

    new-instance v1, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p2, p3}, Lcom/google/android/finsky/library/LibraryReplicator$ReplicationRequest;-><init>([Ljava/lang/String;ZLjava/lang/Runnable;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/finsky/library/LibraryReplicator;->handleNextRequest(J)V
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_4c

    goto :goto_39

    .line 161
    :catchall_4c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
