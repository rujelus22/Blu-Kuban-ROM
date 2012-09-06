.class public Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;
.super Landroid/app/Service;
.source "RealTimeChatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;,
        Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;,
        Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;,
        Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;,
        Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;
    }
.end annotation


# static fields
.field private static sConversationsLoaded:Z

.field private static sCurrentConversationRowId:Ljava/lang/Long;

.field private static sLastRequestId:Ljava/lang/Integer;

.field private static final sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;",
            ">;"
        }
    .end annotation
.end field

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

.field private final mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

.field private mConnectionRequestCount:I

.field private mHandler:Landroid/os/Handler;

.field private mLastConnectAttemptTime:J

.field private mLastConnectRequestTimestamp:J

.field private mLastMessageTime:J

.field private mLastResponseTime:J

.field private mLongTermConnect:Landroid/app/PendingIntent;

.field private mNeedsSync:Z

.field private final mPingRunnable:Ljava/lang/Runnable;

.field private mReconnectCount:I

.field private mReconnectDelay:J

.field private mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

.field private final mStopRunnable:Ljava/lang/Runnable;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    .line 191
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    invoke-direct {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    .line 193
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sResults:Ljava/util/Map;

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sLastRequestId:Ljava/lang/Integer;

    .line 197
    sput-object v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sCurrentConversationRowId:Ljava/lang/Long;

    .line 198
    sput-boolean v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sConversationsLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 263
    iput v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    .line 264
    iput-boolean v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    .line 265
    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectRequestTimestamp:J

    .line 267
    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastResponseTime:J

    .line 268
    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectAttemptTime:J

    .line 271
    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    .line 349
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    .line 394
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    .line 396
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$2;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    .line 408
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$3;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 2471
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->processIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Lcom/google/android/apps/plus/realtimechat/BunchClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/BunchClient;)Lcom/google/android/apps/plus/realtimechat/BunchClient;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    return-object p1
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 58
    sput-boolean p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sConversationsLoaded:Z

    return p0
.end method

.method public static allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 811
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 812
    const-string v1, "RealTimeChatService"

    const-string v2, "allowDisconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 815
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 818
    return-void
.end method

.method public static checkMessageSent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"
    .parameter "flags"

    .prologue
    .line 843
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 844
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0xe2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 845
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 846
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 847
    const-string v1, "flags"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method private completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V
    .registers 6
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$9;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2390
    return-void
.end method

.method public static connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 659
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 660
    const-string v1, "RealTimeChatService"

    const-string v2, "connectAndStayConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    .line 663
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_30

    .line 664
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 665
    const-string v1, "RealTimeChatService"

    const-string v2, "acquiring wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_2b
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 669
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 672
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 673
    return-void
.end method

.method public static connectIfLoggedIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "accountId"
    .parameter "conversationId"
    .parameter "messageTimestamp"

    .prologue
    .line 705
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 706
    const-string v1, "RealTimeChatService"

    const-string v2, "connectIfLoggedIn"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    .line 710
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_30

    .line 711
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 712
    const-string v1, "RealTimeChatService"

    const-string v2, "acquiring wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_2b
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 717
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 718
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v1, "message_timestamp"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 723
    return-void
.end method

.method private connectInternal()V
    .registers 3

    .prologue
    .line 2334
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2335
    const-string v0, "RealTimeChatService"

    const-string v1, "connecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v0, :cond_1f

    .line 2338
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectAttemptTime:J

    .line 2339
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->connect()V

    .line 2341
    :cond_1f
    return-void
.end method

.method public static createConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "audience"
    .parameter "messageText"

    .prologue
    .line 862
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 863
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x14a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 864
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 865
    const-string v1, "audience"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 866
    const-string v1, "message_text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static debuggable()Z
    .registers 1

    .prologue
    .line 598
    sget-boolean v0, Lcom/google/android/apps/plus/util/EsLog;->ENABLE_DOGFOOD_FEATURES:Z

    return v0
.end method

.method private executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;
    .registers 11
    .parameter "client"
    .parameter "intent"
    .parameter "operation"

    .prologue
    const/4 v6, 0x0

    .line 2353
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->execute()V

    .line 2354
    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->getResultCode()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v6, v3, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V

    .line 2356
    .local v1, result:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->getResultValue()Ljava/lang/Object;

    move-result-object v2

    .line 2358
    .local v2, resultValue:Ljava/lang/Object;
    invoke-direct {p0, p2, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    .line 2360
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->getResponses()Ljava/util/Collection;

    move-result-object v0

    .line 2361
    .local v0, responses:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    .line 2362
    const-string v3, "RealTimeChatService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 2363
    const-string v3, "RealTimeChatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sending "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " responses"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    :cond_4a
    const-string v3, "rid"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1, v0, v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommands(Ljava/util/Collection;I)Z

    .line 2367
    :cond_53
    iget-object v3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3a98

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2368
    return-object v2
.end method

.method private static generateRequestId()I
    .registers 2

    .prologue
    .line 2589
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sLastRequestId:Ljava/lang/Integer;

    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sLastRequestId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sLastRequestId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getBackendAddress(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 628
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getBackendSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, backendSetting:Ljava/lang/String;
    const-string v1, "realtime-chat-dev@bot.talk.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 630
    const-string v1, "realtime-chat-dev@bot.talk.google.com"

    .line 632
    :goto_e
    return-object v1

    :cond_f
    const-string v1, "realtime-chat@bot.talk.google.com"

    goto :goto_e
.end method

.method public static getBackendSetting(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .parameter "context"

    .prologue
    .line 608
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->debuggable()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 609
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 611
    .local v2, settings:Landroid/content/SharedPreferences;
    const v3, 0x7f080004

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, key:Ljava/lang/String;
    const v3, 0x7f080002

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, defaultBackend:Ljava/lang/String;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 617
    .end local v0           #defaultBackend:Ljava/lang/String;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :goto_1c
    return-object v3

    :cond_1d
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c
.end method

.method public static getConversationsLoaded()Z
    .registers 1

    .prologue
    .line 788
    sget-boolean v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sConversationsLoaded:Z

    return v0
.end method

.method public static getCurrentConversationRowId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 778
    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    monitor-enter v1

    .line 779
    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sCurrentConversationRowId:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    .line 780
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method static getOrRequestC2dmId(Landroid/content/Context;)Ljava/lang/String;
    .registers 15
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const/4 v13, 0x3

    .line 2092
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2093
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v9, "c2dm_registration_id"

    invoke-interface {v4, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2094
    .local v6, registrationId:Ljava/lang/String;
    const-string v9, "c2dm_registration_time"

    const-wide/16 v10, 0x0

    invoke-interface {v4, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 2096
    .local v7, registrationTime:J
    const-string v9, "c2dm_registration_build_version"

    invoke-interface {v4, v9, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2101
    .local v5, registrationBuildVersion:Ljava/lang/String;
    :try_start_1a
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 2103
    .local v3, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a .. :try_end_29} :catch_5c

    .line 2113
    .end local v3           #packageInfo:Landroid/content/pm/PackageInfo;
    .local v0, buildVersion:Ljava/lang/String;
    :goto_29
    if-eqz v5, :cond_31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    .line 2124
    :cond_31
    const-string v9, "RealTimeChatService"

    invoke-static {v9, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 2125
    const-string v9, "RealTimeChatService"

    const-string v10, "refreshing registration for update"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_40
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2132
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v6, :cond_52

    .line 2133
    const-string v9, "RealTimeChatService"

    const-string v10, "saving registration"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    const-string v9, "sticky_c2dm_registration_id"

    invoke-interface {v2, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2136
    :cond_52
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2138
    const/4 v6, 0x0

    .line 2158
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_56
    :goto_56
    if-nez v6, :cond_5b

    .line 2159
    invoke-static {p0}, Lcom/google/android/apps/plus/c2dm/C2DMReceiver;->requestC2DMRegistrationId(Landroid/content/Context;)V

    .line 2162
    :cond_5b
    return-object v6

    .line 2104
    .end local v0           #buildVersion:Ljava/lang/String;
    :catch_5c
    move-exception v1

    .line 2105
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "RealTimeChatService"

    const/4 v10, 0x6

    invoke-static {v9, v10}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 2106
    const-string v9, "RealTimeChatService"

    const-string v10, "Can\'t find package information for current package, continuing anyway"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2110
    :cond_6d
    move-object v0, v5

    .restart local v0       #buildVersion:Ljava/lang/String;
    goto :goto_29

    .line 2139
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/32 v11, 0x2932e00

    cmp-long v9, v9, v11

    if-lez v9, :cond_56

    .line 2141
    const-string v9, "RealTimeChatService"

    invoke-static {v9, v13}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 2142
    const-string v9, "RealTimeChatService"

    const-string v10, "refreshing registration for expiration"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    :cond_8a
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2149
    .restart local v2       #editor:Landroid/content/SharedPreferences$Editor;
    if-eqz v6, :cond_9c

    .line 2150
    const-string v9, "RealTimeChatService"

    const-string v10, "saving registration"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const-string v9, "sticky_c2dm_registration_id"

    invoke-interface {v2, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2153
    :cond_9c
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2155
    const/4 v6, 0x0

    goto :goto_56
.end method

.method private static getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 2171
    const-string v0, "realtimechat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStickyC2dmId(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 2074
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2075
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "c2dm_registration_id"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2076
    .local v0, c2dmId:Ljava/lang/String;
    if-eqz v0, :cond_1a

    .line 2077
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2078
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "sticky_c2dm_registration_id"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2079
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2083
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    :goto_19
    return-object v0

    .line 2081
    :cond_1a
    const-string v3, "c2dm_registration_id"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public static handleC2DMRegistration(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "registration"

    .prologue
    .line 732
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 733
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x71

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 734
    const-string v1, "registration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 736
    return-void
.end method

.method public static handleC2DMRegistrationError(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "error"

    .prologue
    .line 751
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 755
    return-void
.end method

.method public static handleC2DMUnregistration(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 745
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x72

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 747
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 748
    return-void
.end method

.method private static initWakeLock(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 202
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_15

    .line 203
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 205
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "realtimechat"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_15
    return-void
.end method

.method private initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 2249
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 2251
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v0, :cond_24

    .line 2254
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 2255
    iput-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 2257
    :cond_24
    if-nez p1, :cond_37

    .line 2258
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2259
    const-string v0, "RealTimeChatService"

    const-string v1, "action requested on null account"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :cond_36
    :goto_36
    return-void

    .line 2263
    :cond_37
    new-instance v5, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V

    .line 2264
    .local v5, bunchClientListener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getBackendSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getBackendAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient;-><init>(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 2266
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->updateClientVersion()V

    goto :goto_36
.end method

.method public static initiateConnection(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 681
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 682
    const-string v1, "RealTimeChatService"

    const-string v2, "initiateConnection"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    .line 685
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_30

    .line 686
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 687
    const-string v1, "RealTimeChatService"

    const-string v2, "acquiring wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_2b
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 691
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 692
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 694
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 695
    return-void
.end method

.method public static inviteParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "audience"

    .prologue
    .line 1061
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1062
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x14c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1063
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1064
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1065
    const-string v1, "audience"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1066
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static isRequestPending(I)Z
    .registers 3
    .parameter "requestId"

    .prologue
    .line 579
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->requestPending(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    .line 880
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 881
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x14d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 882
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 883
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 884
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static logOut(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 798
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 799
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 800
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 801
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 802
    return-void
.end method

.method public static markConversationNotificationsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    .line 1112
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1113
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1114
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1115
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1116
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static markConversationRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    .line 1095
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1096
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x14f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1097
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1098
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1099
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static notifyUserPresenceChanged(JLjava/lang/String;Z)V
    .registers 6
    .parameter "conversationRowId"
    .parameter "userId"
    .parameter "isPresent"

    .prologue
    .line 2401
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2402
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$10;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$10;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2410
    return-void
.end method

.method public static notifyUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "conversationRowId"
    .parameter "conversationId"
    .parameter "userId"
    .parameter "isTyping"

    .prologue
    .line 2421
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2422
    .local v6, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$11;

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$11;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2431
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .registers 88
    .parameter "intent"

    .prologue
    .line 1252
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1253
    .local v4, context:Landroid/content/Context;
    const-string v10, "op"

    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v70

    .line 1254
    .local v70, opCode:I
    const-string v10, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    .line 1256
    .local v5, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 1257
    const-string v10, "RealTimeChatService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ProcessIntent OpCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v70

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " requestId "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "rid"

    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_4d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_c3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->active()Z

    move-result v10

    if-eqz v10, :cond_c3

    const/16 v54, 0x1

    .line 1266
    .local v54, active:Z
    :goto_6a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_c6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->active()Z

    move-result v10

    if-eqz v10, :cond_c6

    const/16 v61, 0x1

    .line 1267
    .local v61, connected:Z
    :goto_7c
    if-eqz v61, :cond_c9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    if-eqz v10, :cond_c9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c9

    const/16 v62, 0x1

    .line 1272
    .local v62, connectedOnCorrectAccount:Z
    :goto_98
    sparse-switch v70, :sswitch_data_e04

    .line 1814
    if-nez v62, :cond_b7

    .line 1815
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v55

    .line 1816
    .local v55, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v55, :cond_a09

    if-eqz v5, :cond_a09

    move-object/from16 v0, v55

    invoke-virtual {v0, v5}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a09

    .line 1817
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1818
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1825
    .end local v55           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_b7
    :goto_b7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    .line 1829
    sparse-switch v70, :sswitch_data_e4a

    .line 2063
    :cond_c2
    :goto_c2
    return-void

    .line 1265
    .end local v54           #active:Z
    .end local v61           #connected:Z
    .end local v62           #connectedOnCorrectAccount:Z
    :cond_c3
    const/16 v54, 0x0

    goto :goto_6a

    .line 1266
    .restart local v54       #active:Z
    :cond_c6
    const/16 v61, 0x0

    goto :goto_7c

    .line 1267
    .restart local v61       #connected:Z
    :cond_c9
    const/16 v62, 0x0

    goto :goto_98

    .line 1276
    .restart local v62       #connectedOnCorrectAccount:Z
    :sswitch_cc
    :try_start_cc
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->markAllNotificationsAsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_d0

    goto :goto_c2

    .line 1807
    :catch_d0
    move-exception v64

    .line 1808
    .local v64, ex:Ljava/lang/Exception;
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 1809
    const-string v10, "RealTimeChatService"

    const-string v11, "Exception in processIntent"

    move-object/from16 v0, v64

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c2

    .line 1283
    .end local v64           #ex:Ljava/lang/Exception;
    :sswitch_e4
    :try_start_e4
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f4

    .line 1284
    const-string v10, "RealTimeChatService"

    const-string v11, "connectIfLoggedIn "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    :cond_f4
    const-string v10, "account_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1287
    .local v52, accountId:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v55

    .line 1288
    .restart local v55       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v55, :cond_10e

    invoke-virtual/range {v55 .. v55}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13a

    .line 1290
    :cond_10e
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_11e

    .line 1291
    const-string v10, "RealTimeChatService"

    const-string v11, "Requested to connect to wrong account"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :cond_11e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_12e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->active()Z

    move-result v10

    if-nez v10, :cond_c2

    .line 1295
    :cond_12e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c2

    .line 1300
    :cond_13a
    const-string v10, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1301
    .local v41, conversationId:Ljava/lang/String;
    const-string v10, "message_timestamp"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 1302
    .local v67, messageTimestamp:Ljava/lang/String;
    new-instance v59, Landroid/os/Bundle;

    invoke-direct/range {v59 .. v59}, Landroid/os/Bundle;-><init>()V

    .line 1303
    .local v59, bundle:Landroid/os/Bundle;
    const-string v10, "conversationId"

    move-object/from16 v0, v59

    move-object/from16 v1, v41

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v10, "timestamp"

    invoke-static/range {v67 .. v67}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v59

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v59

    invoke-direct {v11, v0, v4, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/os/Bundle;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1313
    if-nez v61, :cond_1df

    .line 1314
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-nez v10, :cond_184

    .line 1317
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1320
    :cond_184
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    if-nez v10, :cond_1c0

    const/16 v73, 0x0

    .line 1322
    .local v73, participantId:Ljava/lang/String;
    :goto_190
    if-eqz v73, :cond_1cd

    move-object/from16 v0, v73

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1cd

    .line 1323
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1ac

    .line 1324
    const-string v10, "RealTimeChatService"

    const-string v11, "marking needs sync"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    :cond_1ac
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    .line 1327
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_c2

    .line 1320
    .end local v73           #participantId:Ljava/lang/String;
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v73

    goto :goto_190

    .line 1329
    .restart local v73       #participantId:Ljava/lang/String;
    :cond_1cd
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 1330
    const-string v10, "RealTimeChatService"

    const-string v11, "requested connect to wrong account"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 1334
    .end local v73           #participantId:Ljava/lang/String;
    :cond_1df
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 1335
    const-string v10, "RealTimeChatService"

    const-string v11, "already connected"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 1343
    .end local v41           #conversationId:Ljava/lang/String;
    .end local v52           #accountId:Ljava/lang/String;
    .end local v55           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v59           #bundle:Landroid/os/Bundle;
    .end local v67           #messageTimestamp:Ljava/lang/String;
    :sswitch_1f1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    .line 1344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectRequestTimestamp:J

    .line 1345
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_236

    .line 1346
    const-string v10, "RealTimeChatService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connectAndStayConnected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_236
    if-nez v62, :cond_c2

    .line 1350
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1351
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_c2

    .line 1357
    :sswitch_244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectRequestTimestamp:J

    .line 1358
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_27f

    .line 1359
    const-string v10, "RealTimeChatService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "connectAndStayConnected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_27f
    if-nez v62, :cond_c2

    .line 1363
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1364
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_c2

    .line 1370
    :sswitch_28d
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-lez v10, :cond_29d

    .line 1371
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    .line 1373
    :cond_29d
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_2d0

    .line 1374
    const-string v10, "RealTimeChatService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "allowDisconnect "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_2d0
    if-nez v54, :cond_c2

    .line 1378
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    sub-long v82, v10, v12

    .line 1380
    .local v82, timeSinceLastMessage:J
    const-wide/32 v10, 0xea60

    cmp-long v10, v82, v10

    if-lez v10, :cond_c2

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    if-nez v10, :cond_c2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-nez v10, :cond_c2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_2ff

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    if-nez v10, :cond_c2

    .line 1384
    :cond_2ff
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_30f

    .line 1385
    const-string v10, "RealTimeChatService"

    const-string v11, "stopping service"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_30f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_321

    .line 1388
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 1389
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1391
    :cond_321
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1394
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1396
    .local v56, am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_c2

    .line 1397
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_c2

    .line 1408
    .end local v56           #am:Landroid/app/AlarmManager;
    .end local v82           #timeSinceLastMessage:J
    :sswitch_352
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-nez v10, :cond_363

    .line 1410
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1412
    :cond_363
    if-nez v61, :cond_3c9

    .line 1413
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    if-gtz v10, :cond_371

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-lez v10, :cond_38b

    .line 1414
    :cond_371
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectInternal()V

    .line 1415
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    if-lez v10, :cond_384

    .line 1416
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    .line 1421
    :cond_384
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_c2

    .line 1425
    :cond_38b
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleLongTermConnect(Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_3a6

    .line 1427
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 1428
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1430
    :cond_3a6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1432
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c2

    .line 1435
    :cond_3c9
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 1436
    const-string v10, "RealTimeChatService"

    const-string v11, "already connected"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 1443
    :sswitch_3db
    if-nez v61, :cond_c2

    .line 1444
    const-string v10, "account_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1445
    .restart local v52       #accountId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-nez v10, :cond_416

    .line 1448
    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v55

    .line 1450
    .restart local v55       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v55, :cond_3fd

    invoke-virtual/range {v55 .. v55}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_40f

    .line 1453
    :cond_3fd
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 1454
    const-string v10, "RealTimeChatService"

    const-string v11, "Requested to connect to wrong account"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 1458
    :cond_40f
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1460
    .end local v55           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_416
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    if-nez v10, :cond_456

    const/16 v73, 0x0

    .line 1462
    .restart local v73       #participantId:Ljava/lang/String;
    :goto_422
    if-eqz v73, :cond_463

    move-object/from16 v0, v73

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_463

    .line 1463
    const/4 v10, 0x3

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    .line 1464
    const-string v10, "reconnect_delay"

    const-wide/32 v11, 0x1d4c0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    .line 1466
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    .line 1467
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_c2

    .line 1460
    .end local v73           #participantId:Ljava/lang/String;
    :cond_456
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v73

    goto :goto_422

    .line 1469
    .restart local v73       #participantId:Ljava/lang/String;
    :cond_463
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 1470
    const-string v10, "RealTimeChatService"

    const-string v11, "requested connect to wrong account"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 1482
    .end local v52           #accountId:Ljava/lang/String;
    .end local v73           #participantId:Ljava/lang/String;
    :sswitch_475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastResponseTime:J

    sub-long v84, v10, v12

    .line 1484
    .local v84, timeSinceLastResponse:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectRequestTimestamp:J

    sub-long v80, v10, v12

    .line 1487
    .local v80, timeSinceLastConnectRequest:J
    if-eqz v61, :cond_5b0

    .line 1488
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4db

    .line 1489
    const-string v11, "RealTimeChatService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OP_PING "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v80

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-nez v10, :cond_524

    const/4 v10, 0x0

    :goto_4d0
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_4db
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_4eb

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    if-nez v10, :cond_4fe

    :cond_4eb
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    if-nez v10, :cond_4fe

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-gtz v10, :cond_4fe

    const-wide/32 v10, 0xea60

    cmp-long v10, v80, v10

    if-gez v10, :cond_547

    .line 1500
    :cond_4fe
    const-wide/32 v10, 0xafc8

    cmp-long v10, v84, v10

    if-ltz v10, :cond_531

    .line 1505
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_515

    .line 1506
    const-string v10, "RealTimeChatService"

    const-string v11, "too long since last response, restarting"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    :cond_515
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect(I)V

    .line 1509
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_c2

    .line 1489
    :cond_524
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_4d0

    .line 1512
    :cond_531
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendKeepAlive()V

    .line 1513
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c2

    .line 1516
    :cond_547
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_557

    .line 1517
    const-string v10, "RealTimeChatService"

    const-string v11, "uneeded connection found in ping"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_557
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_569

    .line 1520
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 1521
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1523
    :cond_569
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1528
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1530
    .restart local v56       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_c2

    .line 1531
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_c2

    .line 1535
    .end local v56           #am:Landroid/app/AlarmManager;
    :cond_5b0
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 1536
    const-string v10, "RealTimeChatService"

    const-string v11, "connection is down, can\'t ping"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c2

    .line 1543
    .end local v80           #timeSinceLastConnectRequest:J
    .end local v84           #timeSinceLastResponse:J
    :sswitch_5c2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastResponseTime:J

    .line 1544
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    goto/16 :goto_c2

    .line 1549
    :sswitch_5d4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastResponseTime:J

    goto/16 :goto_c2

    .line 1555
    :sswitch_5de
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5ee

    .line 1556
    const-string v10, "RealTimeChatService"

    const-string v11, "onConnected"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_5ee
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    .line 1559
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_61b

    .line 1560
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getOrRequestC2dmId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v78

    .line 1562
    .local v78, registrationId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v10, v1, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendUserCreateRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v10, v1, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendC2DMIdToSessionServer(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1565
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->connectionStarted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1568
    .end local v78           #registrationId:Ljava/lang/String;
    :cond_61b
    const/4 v10, 0x3

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    .line 1569
    const-wide/32 v10, 0x1d4c0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    .line 1570
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1575
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1576
    .restart local v56       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_663

    .line 1577
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1579
    :cond_663
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c2

    .line 1594
    .end local v56           #am:Landroid/app/AlarmManager;
    :sswitch_673
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_683

    .line 1595
    const-string v10, "RealTimeChatService"

    const-string v11, "onConversationsLoaded"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_683
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    goto/16 :goto_c2

    .line 1603
    :sswitch_68a
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_69a

    .line 1604
    const-string v10, "RealTimeChatService"

    const-string v11, "onDisconnected"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_69a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectRequestTimestamp:J

    sub-long v80, v10, v12

    .line 1608
    .restart local v80       #timeSinceLastConnectRequest:J
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6f4

    .line 1609
    const-string v11, "RealTimeChatService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OP_ON_DISCONNECTED "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v80

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-nez v10, :cond_755

    const/4 v10, 0x0

    :goto_6e9
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    :cond_6f4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_704

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    if-nez v10, :cond_717

    :cond_704
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    if-nez v10, :cond_717

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-gtz v10, :cond_717

    const-wide/32 v10, 0xea60

    cmp-long v10, v80, v10

    if-gez v10, :cond_79f

    .line 1619
    :cond_717
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_727

    .line 1620
    const-string v10, "RealTimeChatService"

    const-string v11, "scheduling reconnect"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_727
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    if-gtz v10, :cond_733

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-lez v10, :cond_762

    .line 1626
    :cond_733
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1661
    :cond_738
    :goto_738
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Intent;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c2

    .line 1609
    :cond_755
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_6e9

    .line 1630
    :cond_762
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleLongTermConnect(Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1631
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_77d

    .line 1632
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 1633
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1635
    :cond_77d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_738

    .line 1642
    :cond_79f
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7af

    .line 1643
    const-string v10, "RealTimeChatService"

    const-string v11, "no need to stay connected"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_7af
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_7c1

    .line 1646
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 1647
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1649
    :cond_7c1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1651
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7e7

    .line 1652
    const-string v10, "RealTimeChatService"

    const-string v11, "scheduling stop runnable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_7e7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1656
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1657
    .restart local v56       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_738

    .line 1658
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_738

    .line 1679
    .end local v56           #am:Landroid/app/AlarmManager;
    .end local v80           #timeSinceLastConnectRequest:J
    :sswitch_80d
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_81d

    .line 1680
    const-string v10, "RealTimeChatService"

    const-string v11, "log out"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_81d
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1684
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    .line 1685
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectRequestTimestamp:J

    .line 1696
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_872

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->connected()Z

    move-result v10

    if-eqz v10, :cond_872

    .line 1697
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/util/AndroidUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v57

    .line 1698
    .local v57, androidId:J
    const-string v10, "realtimechat"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v76

    .line 1700
    .local v76, prefs:Landroid/content/SharedPreferences;
    const-string v10, "c2dm_registration_id"

    const/4 v11, 0x0

    move-object/from16 v0, v76

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v78

    .line 1701
    .restart local v78       #registrationId:Ljava/lang/String;
    if-eqz v78, :cond_872

    .line 1702
    move-object/from16 v0, v78

    move-wide/from16 v1, v57

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->unregisterDevice(Ljava/lang/String;J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v60

    .line 1704
    .local v60, command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    const/4 v11, -0x1

    move-object/from16 v0, v60

    invoke-virtual {v10, v0, v11}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)Z

    .line 1705
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v10, v1, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->unregisterC2DMIdFromSessionServer(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1709
    .end local v57           #androidId:J
    .end local v60           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v76           #prefs:Landroid/content/SharedPreferences;
    .end local v78           #registrationId:Ljava/lang/String;
    :cond_872
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_884

    .line 1710
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 1711
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1713
    :cond_884
    const-string v10, "realtimechat"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v76

    .line 1715
    .restart local v76       #prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v76 .. v76}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v63

    .line 1716
    .local v63, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "c2dm_registration_id"

    const/4 v11, 0x0

    move-object/from16 v0, v63

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1717
    invoke-interface/range {v63 .. v63}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1719
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/c2dm/C2DMReceiver;->unregisterC2DM(Landroid/content/Context;)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1725
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1726
    .restart local v56       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_c2

    .line 1727
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_c2

    .line 1733
    .end local v56           #am:Landroid/app/AlarmManager;
    .end local v63           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v76           #prefs:Landroid/content/SharedPreferences;
    :sswitch_8e6
    const-string v10, "registration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 1734
    .local v77, registration:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v76

    .line 1735
    .restart local v76       #prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v76 .. v76}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v63

    .line 1736
    .restart local v63       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "c2dm_registration_id"

    move-object/from16 v0, v63

    move-object/from16 v1, v77

    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1737
    const-string v10, "sticky_c2dm_registration_id"

    move-object/from16 v0, v63

    move-object/from16 v1, v77

    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1738
    const-string v10, "c2dm_registration_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    move-object/from16 v0, v63

    invoke-interface {v0, v10, v11, v12}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v71

    .line 1741
    .local v71, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v10, "c2dm_registration_build_version"

    move-object/from16 v0, v71

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, v63

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1743
    invoke-interface/range {v63 .. v63}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1744
    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v55

    .line 1745
    .restart local v55       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_96e

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->connected()Z

    move-result v10

    if-eqz v10, :cond_96e

    .line 1746
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v55

    invoke-direct {v0, v10, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendUserCreateRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1747
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    move-object/from16 v2, v55

    invoke-direct {v0, v10, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendC2DMIdToSessionServer(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1758
    :cond_95c
    :goto_95c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-direct {v11, v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$7;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_c2

    .line 1749
    :cond_96e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectRequestTimestamp:J

    sub-long v80, v10, v12

    .line 1751
    .restart local v80       #timeSinceLastConnectRequest:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_988

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    if-nez v10, :cond_95c

    :cond_988
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    if-nez v10, :cond_95c

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-nez v10, :cond_95c

    const-wide/32 v10, 0xea60

    cmp-long v10, v80, v10

    if-ltz v10, :cond_95c

    .line 1754
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_95c

    .line 1771
    .end local v55           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v63           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v71           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v76           #prefs:Landroid/content/SharedPreferences;
    .end local v77           #registration:Ljava/lang/String;
    .end local v80           #timeSinceLastConnectRequest:J
    :sswitch_9a7
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v76

    .line 1772
    .restart local v76       #prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v76 .. v76}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v63

    .line 1773
    .restart local v63       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "c2dm_registration_id"

    const/4 v11, 0x0

    move-object/from16 v0, v63

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1774
    invoke-interface/range {v63 .. v63}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1775
    if-eqz v61, :cond_9c1

    .line 1777
    invoke-static {v4}, Lcom/google/android/apps/plus/c2dm/C2DMReceiver;->requestC2DMRegistrationId(Landroid/content/Context;)V

    goto/16 :goto_c2

    .line 1779
    :cond_9c1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectRequestTimestamp:J

    sub-long v80, v10, v12

    .line 1781
    .restart local v80       #timeSinceLastConnectRequest:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_9db

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    if-nez v10, :cond_9f9

    :cond_9db
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    if-nez v10, :cond_9f9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-nez v10, :cond_9f9

    const-wide/32 v10, 0xea60

    cmp-long v10, v80, v10

    if-ltz v10, :cond_9f9

    .line 1784
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1789
    :cond_9f9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    new-instance v11, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$8;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$8;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a07
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_a07} :catch_d0

    goto/16 :goto_c2

    .line 1820
    .end local v63           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v76           #prefs:Landroid/content/SharedPreferences;
    .end local v80           #timeSinceLastConnectRequest:J
    .restart local v55       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_a09
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b7

    .line 1821
    const-string v10, "RealTimeChatService"

    const-string v11, "action requested on inactive account"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b7

    .line 1831
    .end local v55           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :sswitch_a1b
    :try_start_a1b
    const-string v10, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1832
    .local v15, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v10, "message_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    .line 1833
    .local v66, messageText:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;

    move-object/from16 v0, v66

    invoke-direct {v3, v4, v5, v15, v0}, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)V

    .line 1835
    .local v3, operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;
    :try_end_a3f
    .catch Ljava/lang/Exception; {:try_start_a1b .. :try_end_a3f} :catch_a41

    goto/16 :goto_c2

    .line 2055
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v15           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v66           #messageText:Ljava/lang/String;
    :catch_a41
    move-exception v64

    .line 2056
    .restart local v64       #ex:Ljava/lang/Exception;
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_a54

    .line 2057
    const-string v10, "RealTimeChatService"

    const-string v11, "Exception in processIntent"

    move-object/from16 v0, v64

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2059
    :cond_a54
    new-instance v10, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    const-string v11, "rid"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_c2

    .line 1840
    .end local v64           #ex:Ljava/lang/Exception;
    :sswitch_a6e
    :try_start_a6e
    const-string v10, "conversation_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1842
    .local v6, conversationRowId:J
    const-string v10, "message_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1843
    .local v8, text:Ljava/lang/String;
    const-string v10, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1844
    .local v9, uri:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V

    .line 1846
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1851
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v8           #text:Ljava/lang/String;
    .end local v9           #uri:Ljava/lang/String;
    :sswitch_a9a
    const-string v10, "conversation_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1853
    .restart local v6       #conversationRowId:J
    const-string v10, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1854
    .restart local v9       #uri:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    const/4 v15, 0x0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V

    .line 1856
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1861
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v9           #uri:Ljava/lang/String;
    :sswitch_ac5
    const-string v10, "conversation_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1863
    .restart local v6       #conversationRowId:J
    const-string v10, "message_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1865
    .local v16, messageRowId:J
    const-string v10, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1866
    .restart local v9       #uri:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    invoke-direct/range {v10 .. v17}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;J)V

    .line 1868
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1873
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v9           #uri:Ljava/lang/String;
    .end local v16           #messageRowId:J
    :sswitch_af8
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1875
    .restart local v6       #conversationRowId:J
    const-string v10, "message_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1877
    .restart local v16       #messageRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-wide v14, v6

    invoke-direct/range {v11 .. v17}, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)V

    .line 1879
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1884
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v16           #messageRowId:J
    :sswitch_b22
    const-string v10, "message_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1886
    .restart local v16       #messageRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    move-wide/from16 v0, v16

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1888
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1893
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v16           #messageRowId:J
    :sswitch_b40
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1894
    .restart local v6       #conversationRowId:J
    const-string v10, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1896
    .restart local v15       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    invoke-direct/range {v10 .. v15}, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 1898
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1903
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v15           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :sswitch_b6a
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1904
    .restart local v6       #conversationRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1906
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1911
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    :sswitch_b86
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1912
    .restart local v6       #conversationRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/MarkConversationReadOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/MarkConversationReadOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1914
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1919
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    :sswitch_ba2
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1920
    .restart local v6       #conversationRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/MarkConversationNotificationsSeenOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/MarkConversationNotificationsSeenOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1923
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1928
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    :sswitch_bbe
    const-string v10, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1929
    const-string v10, "message_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1930
    .restart local v16       #messageRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;

    move-wide/from16 v0, v16

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1932
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1937
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v16           #messageRowId:J
    :sswitch_be3
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1938
    .restart local v6       #conversationRowId:J
    const-string v10, "conversation_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1939
    .local v69, name:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1941
    .local v3, operation:Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
    move-object/from16 v0, v69

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->setName(Ljava/lang/String;)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1947
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
    .end local v6           #conversationRowId:J
    .end local v69           #name:Ljava/lang/String;
    :sswitch_c0c
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1948
    .restart local v6       #conversationRowId:J
    const-string v10, "conversation_muted"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v68

    .line 1949
    .local v68, muted:Z
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1951
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
    move/from16 v0, v68

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->setMuted(Z)V

    .line 1952
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1957
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
    .end local v6           #conversationRowId:J
    .end local v68           #muted:Z
    :sswitch_c36
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1958
    .restart local v6       #conversationRowId:J
    const-string v10, "inviter_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1959
    .local v23, inviterId:Ljava/lang/String;
    const-string v10, "accept"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 1960
    .local v24, accept:Z
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-wide/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)V

    .line 1962
    .local v3, operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1967
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v23           #inviterId:Ljava/lang/String;
    .end local v24           #accept:Z
    :sswitch_c6b
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1968
    .restart local v6       #conversationRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1970
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1975
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    :sswitch_c87
    const-string v10, "acl"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v53

    .line 1976
    .local v53, acl:I
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SetAclOperation;

    move/from16 v0, v53

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/apps/plus/realtimechat/SetAclOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 1978
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1983
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v53           #acl:I
    :sswitch_ca4
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1984
    .restart local v6       #conversationRowId:J
    const-string v10, "is_present"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 1985
    .local v30, isPresent:Z
    const-string v10, "reciprocate"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 1986
    .local v31, reciprocate:Z
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-wide/from16 v28, v6

    invoke-direct/range {v25 .. v31}, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZ)V

    .line 1988
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 1993
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v30           #isPresent:Z
    .end local v31           #reciprocate:Z
    :sswitch_cda
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1994
    .restart local v6       #conversationRowId:J
    const-string v10, "typing_status"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    move-result-object v37

    .line 1996
    .local v37, typingType:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-wide/from16 v35, v6

    invoke-direct/range {v32 .. v37}, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    .line 1998
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 2003
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v37           #typingType:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    :sswitch_d0b
    const-string v10, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2004
    .restart local v41       #conversationId:Ljava/lang/String;
    const-string v10, "tile_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 2005
    .local v42, tileType:Ljava/lang/String;
    const-string v10, "tile_event_version"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v43

    .line 2006
    .local v43, tileVersion:I
    const-string v10, "tile_event_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 2008
    .local v44, tileEventType:Ljava/lang/String;
    const-string v10, "tile_event_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v45

    check-cast v45, Ljava/util/HashMap;

    .line 2010
    .local v45, tileEventData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    invoke-direct/range {v38 .. v45}, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 2013
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_c2

    .line 2018
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v41           #conversationId:Ljava/lang/String;
    .end local v42           #tileType:Ljava/lang/String;
    .end local v43           #tileVersion:I
    .end local v44           #tileEventType:Ljava/lang/String;
    .end local v45           #tileEventData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_d4e
    const-string v10, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 2019
    .restart local v15       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v4, v5, v15}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->getParticipantListFromAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v75

    .line 2022
    .local v75, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    new-instance v74, Ljava/util/ArrayList;

    invoke-direct/range {v74 .. v74}, Ljava/util/ArrayList;-><init>()V

    .line 2023
    .local v74, participantIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v75 .. v75}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    .local v65, i$:Ljava/util/Iterator;
    :goto_d65
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d7b

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 2024
    .local v72, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual/range {v72 .. v72}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v74

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d65

    .line 2026
    .end local v72           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_d7b
    invoke-static/range {v74 .. v74}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getSuggestionsRequest(Ljava/util/Collection;)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v60

    .line 2028
    .restart local v60       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    const-string v11, "rid"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v60

    invoke-virtual {v10, v0, v11}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)Z

    .line 2029
    new-instance v10, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    const-string v11, "rid"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v75

    invoke-direct {v0, v1, v10, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    .line 2032
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x3a98

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c2

    .line 2037
    .end local v15           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v60           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    .end local v65           #i$:Ljava/util/Iterator;
    .end local v74           #participantIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v75           #participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    :sswitch_db9
    const-string v10, "message_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 2038
    .restart local v16       #messageRowId:J
    const-string v10, "flags"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v51

    .line 2039
    .local v51, flags:I
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;

    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    move-wide/from16 v49, v16

    invoke-direct/range {v46 .. v51}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V

    .line 2041
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    .line 2042
    invoke-virtual {v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->getResultValue()Ljava/lang/Object;

    move-result-object v79

    .line 2044
    .local v79, resultValue:Ljava/lang/Object;
    move-object/from16 v0, v79

    instance-of v10, v0, Ljava/lang/Boolean;

    if-eqz v10, :cond_c2

    .line 2045
    check-cast v79, Ljava/lang/Boolean;

    .end local v79           #resultValue:Ljava/lang/Object;
    invoke-virtual/range {v79 .. v79}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_c2

    .line 2048
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 2049
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V
    :try_end_e02
    .catch Ljava/lang/Exception; {:try_start_a6e .. :try_end_e02} :catch_a41

    goto/16 :goto_c2

    .line 1272
    :sswitch_data_e04
    .sparse-switch
        0x6e -> :sswitch_1f1
        0x6f -> :sswitch_244
        0x70 -> :sswitch_28d
        0x71 -> :sswitch_8e6
        0x72 -> :sswitch_9a7
        0x73 -> :sswitch_e4
        0x74 -> :sswitch_80d
        0x75 -> :sswitch_9a7
        0xdc -> :sswitch_352
        0xdd -> :sswitch_475
        0xde -> :sswitch_5d4
        0xdf -> :sswitch_5c2
        0xe0 -> :sswitch_5de
        0xe1 -> :sswitch_68a
        0xe3 -> :sswitch_673
        0xe4 -> :sswitch_3db
        0x154 -> :sswitch_cc
    .end sparse-switch

    .line 1829
    :sswitch_data_e4a
    .sparse-switch
        0xe2 -> :sswitch_db9
        0x14a -> :sswitch_a1b
        0x14b -> :sswitch_a6e
        0x14c -> :sswitch_b40
        0x14d -> :sswitch_b6a
        0x14f -> :sswitch_b86
        0x150 -> :sswitch_bbe
        0x151 -> :sswitch_be3
        0x152 -> :sswitch_c0c
        0x155 -> :sswitch_c36
        0x156 -> :sswitch_c6b
        0x157 -> :sswitch_c87
        0x158 -> :sswitch_b22
        0x159 -> :sswitch_a9a
        0x15a -> :sswitch_ac5
        0x15b -> :sswitch_af8
        0x15c -> :sswitch_ca4
        0x15d -> :sswitch_cda
        0x15e -> :sswitch_ba2
        0x15f -> :sswitch_d0b
        0x160 -> :sswitch_d4e
    .end sparse-switch
.end method

.method public static registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 559
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method

.method public static removeMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "messageRowId"

    .prologue
    .line 1078
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1079
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x150

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1080
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1081
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1082
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    .registers 3
    .parameter "requestId"

    .prologue
    .line 591
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sResults:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    return-object v0
.end method

.method public static replyToInvitation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "inviterId"
    .parameter "accept"

    .prologue
    .line 1185
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x155

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1187
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1188
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1189
    const-string v1, "inviter_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1190
    const-string v1, "accept"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1191
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static requestMoreEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"

    .prologue
    .line 1204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1205
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x156

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1206
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1207
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1208
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static requestSuggestedParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "audience"

    .prologue
    .line 1128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1129
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x160

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1130
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1131
    const-string v1, "audience"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1132
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static resetNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 827
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 828
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 829
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 830
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 831
    return-void
.end method

.method private restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 2302
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    .line 2303
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    .line 2304
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 2305
    return-void
.end method

.method public static retrySendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "retryMessageRowId"

    .prologue
    .line 940
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 941
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x158

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 942
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 943
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 944
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method private scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 11
    .parameter "account"

    .prologue
    const/4 v8, 0x3

    .line 2311
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2312
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectAttemptTime:J

    const-wide/16 v6, 0x3a98

    add-long v2, v4, v6

    .line 2313
    .local v2, nextAttemptTime:J
    cmp-long v4, v2, v0

    if-gez v4, :cond_2a

    .line 2314
    const-string v4, "RealTimeChatService"

    invoke-static {v4, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2315
    const-string v4, "RealTimeChatService"

    const-string v5, "scheduling next connect attempt immediately"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    :cond_1e
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    iput-object p1, v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2318
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2328
    :goto_29
    return-void

    .line 2320
    :cond_2a
    const-string v4, "RealTimeChatService"

    invoke-static {v4, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 2321
    const-string v4, "RealTimeChatService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "scheduling next connect attempt delayed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_4c
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2325
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    iput-object p1, v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2326
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    sub-long v6, v2, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_29
.end method

.method private scheduleLongTermConnect(Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 13
    .parameter "account"
    .parameter "delay"

    .prologue
    .line 2275
    const-string v6, "RealTimeChatService"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 2276
    const-string v6, "RealTimeChatService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "scheduling long term connect "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    :cond_21
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2279
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "op"

    const/16 v7, 0xe4

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2280
    const-string v6, "account_id"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2281
    const-wide/16 v6, 0x2

    mul-long v2, p2, v6

    .line 2282
    .local v2, nextDelay:J
    const-wide/32 v6, 0x6ddd00

    cmp-long v6, v2, v6

    if-lez v6, :cond_46

    .line 2283
    const-wide/32 v2, 0x6ddd00

    .line 2285
    :cond_46
    const-string v6, "reconnect_delay"

    invoke-virtual {v1, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2287
    const-string v6, "alarm"

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 2288
    .local v0, am:Landroid/app/AlarmManager;
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v6, :cond_5c

    .line 2289
    iget-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2291
    :cond_5c
    const/4 v6, 0x0

    const/high16 v7, 0x4000

    invoke-static {p0, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    .line 2293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v4, v6, p2

    .line 2294
    .local v4, triggerTime:J
    const/4 v6, 0x2

    iget-object v7, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v4, v5, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2295
    return-void
.end method

.method private sendC2DMIdToSessionServer(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 16
    .parameter "bunchClient"
    .parameter "c2dmRegistration"
    .parameter "account"

    .prologue
    .line 2200
    const-string v2, "RealTimeChatService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2201
    const-string v2, "RealTimeChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendC2DMIdToSessionServer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    :cond_21
    if-nez p2, :cond_24

    .line 2223
    :goto_23
    return-void

    .line 2208
    :cond_24
    invoke-virtual {p3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2210
    .local v0, toEmail:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    .line 2212
    .local v10, context:Landroid/content/Context;
    const-string v2, "phone"

    invoke-virtual {v10, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 2214
    .local v11, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 2216
    .local v1, deviceId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v10}, Lcom/google/android/apps/plus/network/ClientVersion;->from(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2218
    .local v5, appVersion:Ljava/lang/String;
    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080345

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lcom/google/android/apps/plus/xmpp/Commands;->sendC2DMIdToSessionServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->write(Ljava/lang/String;)Z

    goto :goto_23
.end method

.method public static sendLocalPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "uri"

    .prologue
    .line 1024
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1025
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x159

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1026
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1027
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1028
    const-string v1, "uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static sendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "text"
    .parameter "uri"

    .prologue
    .line 899
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 900
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x14b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 902
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 903
    const-string v1, "message_text"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v1, "uri"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static sendPresenceRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZ)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "isPresent"
    .parameter "reciprocate"

    .prologue
    .line 959
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 960
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x15c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 961
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 962
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 963
    const-string v1, "is_present"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 964
    const-string v1, "reciprocate"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 965
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static sendRemotePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;)I
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "messageRowId"
    .parameter "uri"

    .prologue
    .line 921
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 922
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x15a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 923
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 924
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 925
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 926
    const-string v1, "uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static sendTileEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)I
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "conversationId"
    .parameter "tileType"
    .parameter "tileVersion"
    .parameter "tileEventType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/plus/content/EsAccount;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1002
    .local p6, tileEventData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1003
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x15f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1004
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1005
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1006
    const-string v1, "tile_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1007
    const-string v1, "tile_event_version"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    const-string v1, "tile_event_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1009
    const-string v1, "tile_event_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1010
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static sendTypingRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "typingType"

    .prologue
    .line 979
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 980
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x15d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 982
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 983
    const-string v1, "typing_status"

    invoke-virtual {p4}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->getNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 984
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method private sendUserCreateRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 10
    .parameter "bunchClient"
    .parameter "c2dmRegistration"
    .parameter "account"

    .prologue
    .line 2234
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AndroidUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v0

    .line 2235
    .local v0, androidId:J
    invoke-static {p2, v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createUser(Ljava/lang/String;J)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;

    move-result-object v2

    .line 2237
    .local v2, userCreationRequest:Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
    const-string v3, "RealTimeChatService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2238
    const-string v3, "RealTimeChatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserCreationRequest registration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " androidId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    :cond_33
    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;I)Z

    .line 2242
    return-void
.end method

.method public static setAcl(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I
    .registers 6
    .parameter "context"
    .parameter "account"
    .parameter "acl"

    .prologue
    .line 1220
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1221
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x157

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1222
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1223
    const-string v1, "acl"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1224
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static setConversationMuted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "muted"

    .prologue
    .line 1165
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1166
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x152

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1167
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1168
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1169
    const-string v1, "conversation_muted"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1170
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static setConversationName(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "name"

    .prologue
    .line 1146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1147
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x151

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1149
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1150
    const-string v1, "conversation_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method public static setCurrentConversationRowId(Ljava/lang/Long;)V
    .registers 5
    .parameter "conversationRowId"

    .prologue
    .line 764
    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    monitor-enter v1

    .line 765
    :try_start_3
    const-string v0, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 766
    const-string v0, "RealTimeChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentConversationRowId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_24
    sput-object p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sCurrentConversationRowId:Ljava/lang/Long;

    .line 769
    monitor-exit v1

    .line 770
    return-void

    .line 769
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static setMessageFailed(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "conversationRowId"
    .parameter "messageRowId"

    .prologue
    .line 1043
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1044
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "op"

    const/16 v2, 0x15b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1046
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1047
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1048
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    return v1
.end method

.method private static startCommand(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1235
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->generateRequestId()I

    move-result v0

    .line 1236
    .local v0, requestId:I
    const-string v1, "rid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1237
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1238
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1239
    const-string v1, "RealTimeChatService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start command request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " opCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "op"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_3e
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->addRequest(Ljava/lang/Object;)V

    .line 1243
    return v0
.end method

.method private unregisterC2DMIdFromSessionServer(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 11
    .parameter "bunchClient"
    .parameter "registrationId"
    .parameter "account"

    .prologue
    .line 2176
    const-string v4, "RealTimeChatService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2177
    const-string v4, "RealTimeChatService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregister C2DM to session server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    :cond_21
    invoke-virtual {p3}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2181
    .local v3, toEmail:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2183
    .local v0, context:Landroid/content/Context;
    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2185
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 2187
    .local v1, deviceId:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/google/android/apps/plus/xmpp/Commands;->unregisterC2DMIdFromSessionServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->write(Ljava/lang/String;)Z

    .line 2189
    return-void
.end method

.method public static unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 568
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 641
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 216
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 217
    const-string v0, "RealTimeChatService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    .line 220
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    const-string v2, "ServiceThread"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    .line 221
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->start()V

    .line 222
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 240
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 241
    const-string v0, "RealTimeChatService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 245
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    if-eqz v0, :cond_3b

    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->quit()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    .line 252
    :cond_3b
    return-void
.end method

.method public onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V
    .registers 14
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    const/4 v8, -0x1

    .line 2442
    const-string v7, "op"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2443
    .local v3, opCode:I
    const-string v7, "rid"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2444
    .local v5, requestId:I
    const-string v7, "account"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 2445
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    sparse-switch v3, :sswitch_data_74

    .line 2469
    :cond_18
    return-void

    :sswitch_19
    move-object v6, p3

    .line 2447
    check-cast v6, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;

    .line 2449
    .local v6, result:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;
    const-string v7, "RealTimeChatService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_41

    .line 2450
    const-string v8, "RealTimeChatService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "conversation created "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v6, :cond_57

    const-string v7, "-1"

    :goto_36
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2453
    :cond_41
    sget-object v7, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 2454
    .local v2, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    invoke-virtual {v2, v5, v0, v6, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onConversationCreated(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V

    goto :goto_47

    .line 2450
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    :cond_57
    iget-object v7, v6, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;->mConversationRowId:Ljava/lang/Long;

    goto :goto_36

    .end local v6           #result:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;
    :sswitch_5a
    move-object v4, p3

    .line 2461
    check-cast v4, Ljava/util/List;

    .line 2462
    .local v4, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    sget-object v7, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 2463
    .restart local v2       #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    invoke-virtual {v2, v5, v0, p2, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onRequestSuggestedParticipants(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/util/List;)V

    goto :goto_63

    .line 2445
    nop

    :sswitch_data_74
    .sparse-switch
        0x14a -> :sswitch_19
        0x160 -> :sswitch_5a
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 229
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    #calls: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->put(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->access$100(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;Landroid/content/Intent;)V

    .line 231
    const/4 v0, 0x2

    return v0
.end method
