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

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    .line 171
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    invoke-direct {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    .line 173
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ResultsLinkedHashMap;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sResults:Ljava/util/Map;

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sLastRequestId:Ljava/lang/Integer;

    .line 176
    sput-object v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sCurrentConversationRowId:Ljava/lang/Long;

    .line 177
    sput-boolean v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sConversationsLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 242
    iput v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    .line 243
    iput-boolean v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    .line 245
    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastResponseTime:J

    .line 246
    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectAttemptTime:J

    .line 248
    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    .line 325
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    .line 369
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    .line 371
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$2;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$2;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    .line 383
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$3;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 2164
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Intent;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->processIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Lcom/google/android/apps/plus/realtimechat/BunchClient;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/BunchClient;)Lcom/google/android/apps/plus/realtimechat/BunchClient;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    return-object p1
.end method

.method static synthetic access$200(Landroid/content/Context;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$902(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 47
    sput-boolean p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sConversationsLoaded:Z

    return p0
.end method

.method public static allowDisconnect(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 735
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 736
    const-string v0, "RealTimeChatService"

    const-string v1, "allowDisconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_10
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    const-string v1, "op"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 740
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 741
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 742
    return-void
.end method

.method public static checkMessageSent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 767
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 768
    const-string v1, "op"

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 769
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 770
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 771
    const-string v1, "flags"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 772
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V
    .registers 6
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$4;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2087
    return-void
.end method

.method public static connectAndStayConnected(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 627
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 628
    const-string v0, "RealTimeChatService"

    const-string v1, "connectAndStayConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    .line 631
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_30

    .line 632
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 633
    const-string v0, "RealTimeChatService"

    const-string v1, "acquiring wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_2b
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 637
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 638
    const-string v1, "op"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 640
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 641
    return-void
.end method

.method public static connectIfLoggedIn(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 650
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 651
    const-string v0, "RealTimeChatService"

    const-string v1, "connectIfLoggedIn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_10
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    .line 655
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_30

    .line 656
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 657
    const-string v0, "RealTimeChatService"

    const-string v1, "acquiring wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_2b
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 662
    :cond_30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 663
    const-string v1, "op"

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 664
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 666
    return-void
.end method

.method private connectInternal()V
    .registers 3

    .prologue
    .line 2016
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2017
    const-string v0, "RealTimeChatService"

    const-string v1, "connecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v0, :cond_1f

    .line 2020
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectAttemptTime:J

    .line 2021
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->connect()V

    .line 2023
    :cond_1f
    return-void
.end method

.method public static createConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 787
    const-string v1, "op"

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 789
    const-string v1, "audience"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 790
    const-string v1, "message_text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 791
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static debuggable()Z
    .registers 1

    .prologue
    .line 566
    const/4 v0, 0x0

    return v0
.end method

.method private disconnectInternal()V
    .registers 3

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v0, :cond_11

    .line 2030
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 2031
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->tearDown()V

    .line 2032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 2035
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2036
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2037
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2038
    return-void
.end method

.method private executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 2050
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->execute()V

    .line 2051
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->getResultCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v5, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 2053
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->getResultValue()Ljava/lang/Object;

    move-result-object v1

    .line 2055
    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    .line 2057
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->getResponses()Ljava/util/Collection;

    move-result-object v0

    .line 2058
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_53

    .line 2059
    const-string v2, "RealTimeChatService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2060
    const-string v2, "RealTimeChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " responses"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_4a
    const-string v2, "rid"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommands(Ljava/util/Collection;I)Z

    .line 2064
    :cond_53
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2065
    return-object v1
.end method

.method private static generateRequestId()I
    .registers 2

    .prologue
    .line 2282
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
    .line 596
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getBackendSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 597
    .local v0, backendSetting:Ljava/lang/String;
    const-string v1, "realtime-chat-dev@bot.talk.google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 598
    const-string v1, "realtime-chat-dev@bot.talk.google.com"

    .line 600
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
    .line 576
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->debuggable()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 577
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 579
    .local v2, settings:Landroid/content/SharedPreferences;
    const v3, 0x7f070007

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 581
    .local v1, key:Ljava/lang/String;
    const v3, 0x7f070005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, defaultBackend:Ljava/lang/String;
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 585
    .end local v0           #defaultBackend:Ljava/lang/String;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #settings:Landroid/content/SharedPreferences;
    :goto_1c
    return-object v3

    :cond_1d
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c
.end method

.method public static getC2dmId(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "context"

    .prologue
    .line 1843
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1844
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "c2dm_registration_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 2292
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2293
    const-string v0, "ChatMessage"

    .line 2397
    :goto_8
    return-object v0

    .line 2294
    :cond_9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessageRequest()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2295
    const-string v0, "ChatMessageRequest"

    goto :goto_8

    .line 2296
    :cond_12
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasChatMessageResponse()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2297
    const-string v0, "ChatMessageResponse"

    goto :goto_8

    .line 2298
    :cond_1b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListRequest()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2299
    const-string v0, "ConversationListRequest"

    goto :goto_8

    .line 2300
    :cond_24
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationListResponse()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2301
    const-string v0, "ConversationListResponse"

    goto :goto_8

    .line 2302
    :cond_2d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceRequest()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2303
    const-string v0, "ConversationPreferenceRequest"

    goto :goto_8

    .line 2304
    :cond_36
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationPreferenceResponse()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 2305
    const-string v0, "ConversationPreferenceResponse"

    goto :goto_8

    .line 2306
    :cond_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRenameRequest()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2307
    const-string v0, "ConversationRenameRequest"

    goto :goto_8

    .line 2308
    :cond_48
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRenameResponse()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 2309
    const-string v0, "ConversationRenameResponse"

    goto :goto_8

    .line 2310
    :cond_51
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 2311
    const-string v0, "ConversationRequest"

    goto :goto_8

    .line 2312
    :cond_5a
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 2313
    const-string v0, "ConversationResponse"

    goto :goto_8

    .line 2314
    :cond_63
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2315
    const-string v0, "ConversationSearchRequest"

    goto :goto_8

    .line 2316
    :cond_6c
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasConversationSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2317
    const-string v0, "ConversationSearchResponse"

    goto :goto_8

    .line 2318
    :cond_75
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasDeviceRegistrationRequest()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 2319
    const-string v0, "DeviceRegistrationRequest"

    goto :goto_8

    .line 2320
    :cond_7e
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasDeviceRegistrationResponse()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 2321
    const-string v0, "DeviceRegistrationResponse"

    goto :goto_8

    .line 2322
    :cond_87
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasError()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 2323
    const-string v0, "Error"

    goto/16 :goto_8

    .line 2324
    :cond_91
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSearchRequest()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 2325
    const-string v0, "EventSearchRequest"

    goto/16 :goto_8

    .line 2326
    :cond_9b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSearchResponse()Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 2327
    const-string v0, "EventSearchResponse"

    goto/16 :goto_8

    .line 2328
    :cond_a5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventStreamRequest()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 2329
    const-string v0, "EventStreamRequest"

    goto/16 :goto_8

    .line 2330
    :cond_af
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasEventSteamResponse()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 2331
    const-string v0, "EventSteamResponse"

    goto/16 :goto_8

    .line 2332
    :cond_b9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasGroupConversationRename()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 2333
    const-string v0, "GroupConversationRename"

    goto/16 :goto_8

    .line 2334
    :cond_c3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInvalidateLocalCache()Z

    move-result v0

    if-eqz v0, :cond_cd

    .line 2335
    const-string v0, "InvalidateLocalCache"

    goto/16 :goto_8

    .line 2336
    :cond_cd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 2337
    const-string v0, "InviteRequest"

    goto/16 :goto_8

    .line 2338
    :cond_d7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 2339
    const-string v0, "InviteResponse"

    goto/16 :goto_8

    .line 2340
    :cond_e1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationRequest()Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 2341
    const-string v0, "LeaveConversationRequest"

    goto/16 :goto_8

    .line 2342
    :cond_eb
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasLeaveConversationResponse()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 2343
    const-string v0, "LeaveConversationResponse"

    goto/16 :goto_8

    .line 2344
    :cond_f5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMembershipChange()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 2345
    const-string v0, "MembershipChange"

    goto/16 :goto_8

    .line 2346
    :cond_ff
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasMigration()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 2347
    const-string v0, "Migration"

    goto/16 :goto_8

    .line 2348
    :cond_109
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingRequest()Z

    move-result v0

    if-eqz v0, :cond_113

    .line 2349
    const-string v0, "PingRequest"

    goto/16 :goto_8

    .line 2350
    :cond_113
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPingResponse()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 2351
    const-string v0, "PingResponse"

    goto/16 :goto_8

    .line 2352
    :cond_11d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresence()Z

    move-result v0

    if-eqz v0, :cond_127

    .line 2353
    const-string v0, "Presence"

    goto/16 :goto_8

    .line 2354
    :cond_127
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceRequest()Z

    move-result v0

    if-eqz v0, :cond_131

    .line 2355
    const-string v0, "PresenceRequest"

    goto/16 :goto_8

    .line 2356
    :cond_131
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasPresenceResponse()Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 2357
    const-string v0, "PresenceResponse"

    goto/16 :goto_8

    .line 2358
    :cond_13b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceipt()Z

    move-result v0

    if-eqz v0, :cond_145

    .line 2359
    const-string v0, "Receipt"

    goto/16 :goto_8

    .line 2360
    :cond_145
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceiptRequest()Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 2361
    const-string v0, "ReceiptRequest"

    goto/16 :goto_8

    .line 2362
    :cond_14f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReceiptResponse()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 2363
    const-string v0, "ReceiptResponse"

    goto/16 :goto_8

    .line 2364
    :cond_159
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteRequest()Z

    move-result v0

    if-eqz v0, :cond_163

    .line 2365
    const-string v0, "ReplyToInviteRequest"

    goto/16 :goto_8

    .line 2366
    :cond_163
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasReplyToInviteResponse()Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 2367
    const-string v0, "ReplyToInviteResponse"

    goto/16 :goto_8

    .line 2368
    :cond_16d
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsRequest()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 2369
    const-string v0, "SetAclsRequest"

    goto/16 :goto_8

    .line 2370
    :cond_177
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSetAclsResponse()Z

    move-result v0

    if-eqz v0, :cond_181

    .line 2371
    const-string v0, "SetAclsResponse"

    goto/16 :goto_8

    .line 2372
    :cond_181
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTyping()Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 2373
    const-string v0, "Typing"

    goto/16 :goto_8

    .line 2374
    :cond_18b
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingRequest()Z

    move-result v0

    if-eqz v0, :cond_195

    .line 2375
    const-string v0, "TypingRequest"

    goto/16 :goto_8

    .line 2376
    :cond_195
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTypingResponse()Z

    move-result v0

    if-eqz v0, :cond_19f

    .line 2377
    const-string v0, "TypingResponse"

    goto/16 :goto_8

    .line 2378
    :cond_19f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationRequest()Z

    move-result v0

    if-eqz v0, :cond_1a9

    .line 2379
    const-string v0, "UserCreationRequest"

    goto/16 :goto_8

    .line 2380
    :cond_1a9
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserCreationResponse()Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 2381
    const-string v0, "UserCreationResponse"

    goto/16 :goto_8

    .line 2382
    :cond_1b3
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoRequest()Z

    move-result v0

    if-eqz v0, :cond_1bd

    .line 2383
    const-string v0, "UserInfoRequest"

    goto/16 :goto_8

    .line 2384
    :cond_1bd
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasUserInfoResponse()Z

    move-result v0

    if-eqz v0, :cond_1c7

    .line 2385
    const-string v0, "UserInfoResponse"

    goto/16 :goto_8

    .line 2386
    :cond_1c7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEvent()Z

    move-result v0

    if-eqz v0, :cond_1d1

    .line 2387
    const-string v0, "TileEvent"

    goto/16 :goto_8

    .line 2388
    :cond_1d1
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEventRequest()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 2389
    const-string v0, "TileEventRequest"

    goto/16 :goto_8

    .line 2390
    :cond_1db
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasTileEventResponse()Z

    move-result v0

    if-eqz v0, :cond_1e5

    .line 2391
    const-string v0, "TileEventResponse"

    goto/16 :goto_8

    .line 2392
    :cond_1e5
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsRequest()Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 2393
    const-string v0, "SuggestionsRequest"

    goto/16 :goto_8

    .line 2394
    :cond_1ef
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->hasSuggestionsResponse()Z

    move-result v0

    if-eqz v0, :cond_1f9

    .line 2395
    const-string v0, "SuggestionsResponse"

    goto/16 :goto_8

    .line 2397
    :cond_1f9
    const-string v0, "Unknown"

    goto/16 :goto_8
.end method

.method public static getConversationsLoaded()Z
    .registers 1

    .prologue
    .line 712
    sget-boolean v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sConversationsLoaded:Z

    return v0
.end method

.method public static getCurrentConversationRowId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 702
    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    monitor-enter v1

    .line 703
    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sCurrentConversationRowId:Ljava/lang/Long;

    monitor-exit v1

    return-object v0

    .line 704
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public static getOrRequestC2dmId(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1852
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1853
    const-string v0, "c2dm_registration_id"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1854
    const-string v0, "c2dm_registration_build_version"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1859
    :try_start_11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1861
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_20} :catch_3b

    .line 1871
    :goto_20
    if-eqz v3, :cond_28

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 1883
    :cond_28
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1884
    const-string v1, "c2dm_registration_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1885
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v2

    .line 1888
    :goto_35
    if-nez v0, :cond_3a

    .line 1889
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/MessagesAvailableReceiver;->requestC2DMRegistrationId(Landroid/content/Context;)V

    .line 1892
    :cond_3a
    return-object v0

    .line 1862
    :catch_3b
    move-exception v0

    .line 1863
    const-string v5, "RealTimeChatService"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 1864
    const-string v5, "RealTimeChatService"

    const-string v6, "Can\'t find package information for current package, continuing anyway"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4c
    move-object v0, v3

    .line 1868
    goto :goto_20

    :cond_4e
    move-object v0, v1

    goto :goto_35
.end method

.method private static getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 1901
    const-string v0, "realtimechat"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static handleC2DMRegistration(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 675
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 676
    const-string v1, "op"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 677
    const-string v1, "registration"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 679
    return-void
.end method

.method private static initWakeLock(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 181
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_15

    .line 182
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 184
    .local v0, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "realtimechar"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 187
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_15
    return-void
.end method

.method private initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1929
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

    if-nez v0, :cond_3b

    .line 1931
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v0, :cond_29

    .line 1934
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 1935
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->tearDown()V

    .line 1936
    iput-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1938
    :cond_29
    if-nez p1, :cond_3c

    .line 1939
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1940
    const-string v0, "RealTimeChatService"

    const-string v1, "action requested on null account"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_3b
    :goto_3b
    return-void

    .line 1944
    :cond_3c
    new-instance v5, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;

    invoke-direct {v5, p0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$BunchClientListener;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$1;)V

    .line 1945
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getBackendSetting(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getBackendAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/BunchClient;-><init>(Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/realtimechat/BunchClient$BunchClientListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1947
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->updateClientVersion()V

    goto :goto_3b
.end method

.method public static inviteParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 987
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 988
    const-string v1, "op"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 989
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 990
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 991
    const-string v1, "audience"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 992
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static isRequestPending(I)Z
    .registers 3
    .parameter "requestId"

    .prologue
    .line 547
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->requestPending(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static leaveConversation(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 804
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 805
    const-string v1, "op"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 806
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 807
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 808
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static logOut(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 722
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 723
    const-string v1, "op"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 724
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 725
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 726
    return-void
.end method

.method public static markConversationNotificationsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1038
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1039
    const-string v1, "op"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1040
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1041
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1042
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static markConversationRead(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1021
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1022
    const-string v1, "op"

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1023
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1024
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1025
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static notifyUserPresenceChanged(JLjava/lang/String;Z)V
    .registers 6
    .parameter "conversationRowId"
    .parameter "userId"
    .parameter "isPresent"

    .prologue
    .line 2098
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2099
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$5;-><init>(JLjava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2107
    return-void
.end method

.method public static notifyUserTypingStatusChanged(JLjava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .parameter "conversationRowId"
    .parameter "userId"
    .parameter "userName"
    .parameter "isTyping"

    .prologue
    .line 2118
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2119
    .local v6, handler:Landroid/os/Handler;
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;

    move-wide v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$6;-><init>(JLjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2128
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .registers 84
    .parameter "intent"

    .prologue
    .line 1178
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1179
    .local v4, context:Landroid/content/Context;
    const-string v10, "op"

    const/4 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v68

    .line 1180
    .local v68, opCode:I
    const-string v10, "account"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    .line 1182
    .local v5, account:Lcom/google/android/apps/plus/content/EsAccount;
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4d

    .line 1183
    const-string v10, "RealTimeChatService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ProcessIntent OpCode "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v68

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

    .line 1189
    :cond_4d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1191
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_b3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->active()Z

    move-result v10

    if-eqz v10, :cond_b3

    const/16 v54, 0x1

    .line 1192
    .local v54, active:Z
    :goto_6a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_b6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->active()Z

    move-result v10

    if-eqz v10, :cond_b6

    const/16 v60, 0x1

    .line 1193
    .local v60, connected:Z
    :goto_7c
    if-eqz v60, :cond_b9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    if-eqz v10, :cond_b9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b9

    const/16 v61, 0x1

    .line 1198
    .local v61, connectedOnCorrectAccount:Z
    :goto_98
    packed-switch v68, :pswitch_data_bb0

    .line 1589
    :pswitch_9b
    if-nez v61, :cond_a7

    .line 1590
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1591
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1593
    :cond_a7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    .line 1597
    packed-switch v68, :pswitch_data_bf2

    .line 1832
    :cond_b2
    :goto_b2
    :pswitch_b2
    return-void

    .line 1191
    .end local v54           #active:Z
    .end local v60           #connected:Z
    .end local v61           #connectedOnCorrectAccount:Z
    :cond_b3
    const/16 v54, 0x0

    goto :goto_6a

    .line 1192
    .restart local v54       #active:Z
    :cond_b6
    const/16 v60, 0x0

    goto :goto_7c

    .line 1193
    .restart local v60       #connected:Z
    :cond_b9
    const/16 v61, 0x0

    goto :goto_98

    .line 1202
    .restart local v61       #connectedOnCorrectAccount:Z
    :pswitch_bc
    :try_start_bc
    invoke-static {v4, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->markAllNotificationsAsSeen(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_bf} :catch_c0

    goto :goto_b2

    .line 1582
    :catch_c0
    move-exception v63

    .line 1583
    .local v63, ex:Ljava/lang/Exception;
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1584
    const-string v10, "RealTimeChatService"

    const-string v11, "Exception in processIntent"

    move-object/from16 v0, v63

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b2

    .line 1209
    .end local v63           #ex:Ljava/lang/Exception;
    :pswitch_d4
    :try_start_d4
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e4

    .line 1210
    const-string v10, "RealTimeChatService"

    const-string v11, "connectIfLoggedIn "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_e4
    if-nez v60, :cond_179

    .line 1213
    const-string v10, "account_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1214
    .local v52, accountId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-nez v10, :cond_11e

    .line 1217
    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v55

    .line 1218
    .local v55, activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v55, :cond_106

    invoke-virtual/range {v55 .. v55}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_117

    .line 1220
    :cond_106
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1221
    const-string v10, "RealTimeChatService"

    const-string v11, "Requested to connect to wrong account"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b2

    .line 1225
    :cond_117
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1228
    .end local v55           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_11e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    if-nez v10, :cond_15a

    const/16 v71, 0x0

    .line 1230
    .local v71, participantId:Ljava/lang/String;
    :goto_12a
    if-eqz v71, :cond_167

    move-object/from16 v0, v71

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_167

    .line 1231
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_146

    .line 1232
    const-string v10, "RealTimeChatService"

    const-string v11, "marking needs sync"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_146
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    .line 1235
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_b2

    .line 1228
    .end local v71           #participantId:Ljava/lang/String;
    :cond_15a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v71

    goto :goto_12a

    .line 1237
    .restart local v71       #participantId:Ljava/lang/String;
    :cond_167
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1238
    const-string v10, "RealTimeChatService"

    const-string v11, "requested connect to wrong account"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    .line 1242
    .end local v52           #accountId:Ljava/lang/String;
    .end local v71           #participantId:Ljava/lang/String;
    :cond_179
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1243
    const-string v10, "RealTimeChatService"

    const-string v11, "already connected"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    .line 1250
    :pswitch_18b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    .line 1251
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1c8

    .line 1252
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

    .line 1255
    :cond_1c8
    if-nez v61, :cond_b2

    .line 1256
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1257
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_b2

    .line 1263
    :pswitch_1d6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-lez v10, :cond_1e6

    .line 1264
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    .line 1266
    :cond_1e6
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_219

    .line 1267
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

    .line 1270
    :cond_219
    if-nez v54, :cond_b2

    .line 1271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    sub-long v78, v10, v12

    .line 1273
    .local v78, timeSinceLastMessage:J
    const-wide/32 v10, 0xea60

    cmp-long v10, v78, v10

    if-lez v10, :cond_b2

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    if-nez v10, :cond_b2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-nez v10, :cond_b2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_248

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    if-nez v10, :cond_b2

    .line 1277
    :cond_248
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_258

    .line 1278
    const-string v10, "RealTimeChatService"

    const-string v11, "stopping service"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_258
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_26a

    .line 1281
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->tearDown()V

    .line 1282
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1284
    :cond_26a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1285
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1287
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1288
    .local v56, am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_b2

    .line 1289
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_b2

    .line 1300
    .end local v56           #am:Landroid/app/AlarmManager;
    .end local v78           #timeSinceLastMessage:J
    :pswitch_29b
    if-nez v60, :cond_301

    .line 1301
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    if-gtz v10, :cond_2a9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-lez v10, :cond_2c3

    .line 1302
    :cond_2a9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->connectInternal()V

    .line 1303
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    if-lez v10, :cond_2bc

    .line 1304
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    .line 1309
    :cond_2bc
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_b2

    .line 1313
    :cond_2c3
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleLongTermConnect(Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_2de

    .line 1315
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->tearDown()V

    .line 1316
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1318
    :cond_2de
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_b2

    .line 1323
    :cond_301
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1324
    const-string v10, "RealTimeChatService"

    const-string v11, "already connected"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    .line 1331
    :pswitch_313
    if-nez v60, :cond_b2

    .line 1332
    const-string v10, "account_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 1333
    .restart local v52       #accountId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-nez v10, :cond_34e

    .line 1336
    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v55

    .line 1337
    .restart local v55       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v55, :cond_335

    invoke-virtual/range {v55 .. v55}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v52

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_347

    .line 1339
    :cond_335
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1340
    const-string v10, "RealTimeChatService"

    const-string v11, "Requested to connect to wrong account"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    .line 1344
    :cond_347
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initializeBunchClient(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1346
    .end local v55           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    :cond_34e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    if-nez v10, :cond_38e

    const/16 v71, 0x0

    .line 1348
    .restart local v71       #participantId:Ljava/lang/String;
    :goto_35a
    if-eqz v71, :cond_39b

    move-object/from16 v0, v71

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_39b

    .line 1349
    const/4 v10, 0x3

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    .line 1350
    const-string v10, "reconnect_delay"

    const-wide/32 v11, 0x1d4c0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    .line 1352
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    .line 1353
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_b2

    .line 1346
    .end local v71           #participantId:Ljava/lang/String;
    :cond_38e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v71

    goto :goto_35a

    .line 1355
    .restart local v71       #participantId:Ljava/lang/String;
    :cond_39b
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1356
    const-string v10, "RealTimeChatService"

    const-string v11, "requested connect to wrong account"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    .line 1368
    .end local v52           #accountId:Ljava/lang/String;
    .end local v71           #participantId:Ljava/lang/String;
    :pswitch_3ad
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastResponseTime:J

    sub-long v80, v10, v12

    .line 1370
    .local v80, timeSinceLastResponse:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    sub-long v78, v10, v12

    .line 1372
    .restart local v78       #timeSinceLastMessage:J
    if-eqz v60, :cond_4cd

    .line 1373
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_414

    .line 1374
    const-string v10, "RealTimeChatService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OP_PING "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v78

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

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

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_414
    const-wide/32 v10, 0xea60

    cmp-long v10, v78, v10

    if-lez v10, :cond_491

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    if-nez v10, :cond_491

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-nez v10, :cond_491

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_437

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    if-nez v10, :cond_491

    .line 1383
    :cond_437
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_447

    .line 1384
    const-string v10, "RealTimeChatService"

    const-string v11, "uneeded connection found in ping"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_447
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->disconnectInternal()V

    .line 1387
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1388
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1389
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1390
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1392
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1393
    .restart local v56       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_b2

    .line 1394
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_b2

    .line 1396
    .end local v56           #am:Landroid/app/AlarmManager;
    :cond_491
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v80, v10

    if-lez v10, :cond_4b7

    .line 1400
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4a8

    .line 1401
    const-string v10, "RealTimeChatService"

    const-string v11, "too long since last response, restarting"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_4a8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect(I)V

    .line 1404
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_b2

    .line 1406
    :cond_4b7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendKeepAlive()V

    .line 1407
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b2

    .line 1410
    :cond_4cd
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1411
    const-string v10, "RealTimeChatService"

    const-string v11, "connection is down, can\'t ping"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b2

    .line 1418
    .end local v78           #timeSinceLastMessage:J
    .end local v80           #timeSinceLastResponse:J
    :pswitch_4df
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastResponseTime:J

    .line 1419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    goto/16 :goto_b2

    .line 1424
    :pswitch_4f1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastResponseTime:J

    goto/16 :goto_b2

    .line 1430
    :pswitch_4fb
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastMessageTime:J

    .line 1431
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_51d

    .line 1432
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getOrRequestC2dmId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v76

    .line 1434
    .local v76, registrationId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-direct {v0, v10, v1, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendUserCreateRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1435
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/content/EsConversationsData;->connectionStarted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1438
    .end local v76           #registrationId:Ljava/lang/String;
    :cond_51d
    const/4 v10, 0x3

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    .line 1439
    const-wide/32 v10, 0x1d4c0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    .line 1440
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1441
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x7530

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1445
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1446
    .restart local v56       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_b2

    .line 1447
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_b2

    .line 1453
    .end local v56           #am:Landroid/app/AlarmManager;
    :pswitch_567
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_577

    .line 1454
    const-string v10, "RealTimeChatService"

    const-string v11, "onConversationsLoaded"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_577
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    goto/16 :goto_b2

    .line 1463
    :pswitch_57e
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

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-nez v10, :cond_603

    const/4 v10, 0x0

    :goto_5ae
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_5c9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    if-nez v10, :cond_5d5

    :cond_5c9
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mNeedsSync:Z

    if-nez v10, :cond_5d5

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-lez v10, :cond_64d

    .line 1470
    :cond_5d5
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_5e5

    .line 1471
    const-string v10, "RealTimeChatService"

    const-string v11, "scheduling reconnect"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_5e5
    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    if-gtz v10, :cond_5f1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    if-lez v10, :cond_610

    .line 1477
    :cond_5f1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1512
    :cond_5f6
    :goto_5f6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_b2

    .line 1463
    :cond_603
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->hasPendingCommands()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    goto :goto_5ae

    .line 1481
    :cond_610
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleLongTermConnect(Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_62b

    .line 1483
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->tearDown()V

    .line 1484
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1486
    :cond_62b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1487
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_5f6

    .line 1493
    :cond_64d
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_65d

    .line 1494
    const-string v10, "RealTimeChatService"

    const-string v11, "no need to stay connected"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    :cond_65d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_66f

    .line 1497
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->tearDown()V

    .line 1498
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    .line 1500
    :cond_66f
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1501
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1502
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x3

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_695

    .line 1503
    const-string v10, "RealTimeChatService"

    const-string v11, "scheduling stop runnable"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_695
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1507
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1508
    .restart local v56       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_5f6

    .line 1509
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_5f6

    .line 1517
    .end local v56           #am:Landroid/app/AlarmManager;
    :pswitch_6bb
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatNotifications;->cancel(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1518
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectionRequestCount:I

    .line 1529
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_6ff

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->connected()Z

    move-result v10

    if-eqz v10, :cond_6ff

    .line 1530
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/util/AndroidUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v57

    .line 1531
    .local v57, androidId:J
    const-string v10, "realtimechat"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v74

    .line 1533
    .local v74, prefs:Landroid/content/SharedPreferences;
    const-string v10, "c2dm_registration_id"

    const/4 v11, 0x0

    move-object/from16 v0, v74

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .line 1534
    .restart local v76       #registrationId:Ljava/lang/String;
    if-eqz v76, :cond_6ff

    .line 1535
    move-object/from16 v0, v76

    move-wide/from16 v1, v57

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->unregisterDevice(Ljava/lang/String;J)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v59

    .line 1537
    .local v59, command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    const/4 v11, -0x1

    move-object/from16 v0, v59

    invoke-virtual {v10, v0, v11}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)Z

    .line 1541
    .end local v57           #androidId:J
    .end local v59           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v74           #prefs:Landroid/content/SharedPreferences;
    .end local v76           #registrationId:Ljava/lang/String;
    :cond_6ff
    const-string v10, "realtimechat"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v74

    .line 1543
    .restart local v74       #prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v74 .. v74}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v62

    .line 1544
    .local v62, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "c2dm_registration_id"

    const/4 v11, 0x0

    move-object/from16 v0, v62

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1545
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1547
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/MessagesAvailableReceiver;->unregisterC2DM(Landroid/content/Context;)V

    .line 1548
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->disconnectInternal()V

    .line 1549
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1550
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1552
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1554
    const-string v10, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/app/AlarmManager;

    .line 1555
    .restart local v56       #am:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v10, :cond_b2

    .line 1556
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    move-object/from16 v0, v56

    invoke-virtual {v0, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_b2

    .line 1562
    .end local v56           #am:Landroid/app/AlarmManager;
    .end local v62           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v74           #prefs:Landroid/content/SharedPreferences;
    :pswitch_764
    const-string v10, "registration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 1563
    .local v75, registration:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getRealTimeChatPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v74

    .line 1564
    .restart local v74       #prefs:Landroid/content/SharedPreferences;
    invoke-interface/range {v74 .. v74}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v62

    .line 1565
    .restart local v62       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "c2dm_registration_id"

    move-object/from16 v0, v62

    move-object/from16 v1, v75

    invoke-interface {v0, v10, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v69

    .line 1568
    .local v69, packageInfo:Landroid/content/pm/PackageInfo;
    const-string v10, "c2dm_registration_build_version"

    move-object/from16 v0, v69

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, v62

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1570
    invoke-interface/range {v62 .. v62}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1571
    invoke-static {v4}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v55

    .line 1572
    .restart local v55       #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    if-eqz v10, :cond_b2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->connected()Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1573
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v55

    invoke-direct {v0, v10, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sendUserCreateRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V
    :try_end_7b9
    .catch Ljava/lang/Exception; {:try_start_d4 .. :try_end_7b9} :catch_c0

    goto/16 :goto_b2

    .line 1599
    .end local v55           #activeAccount:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v62           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v69           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v74           #prefs:Landroid/content/SharedPreferences;
    .end local v75           #registration:Ljava/lang/String;
    :pswitch_7bb
    :try_start_7bb
    const-string v10, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1600
    .local v15, audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    const-string v10, "message_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    .line 1601
    .local v65, messageText:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;

    move-object/from16 v0, v65

    invoke-direct {v3, v4, v5, v15, v0}, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;Ljava/lang/String;)V

    .line 1603
    .local v3, operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;
    :try_end_7df
    .catch Ljava/lang/Exception; {:try_start_7bb .. :try_end_7df} :catch_7e1

    goto/16 :goto_b2

    .line 1824
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v15           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v65           #messageText:Ljava/lang/String;
    :catch_7e1
    move-exception v63

    .line 1825
    .restart local v63       #ex:Ljava/lang/Exception;
    const-string v10, "RealTimeChatService"

    const/4 v11, 0x6

    invoke-static {v10, v11}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_7f4

    .line 1826
    const-string v10, "RealTimeChatService"

    const-string v11, "Exception in processIntent"

    move-object/from16 v0, v63

    invoke-static {v10, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1828
    :cond_7f4
    new-instance v10, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    const-string v11, "rid"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v11}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    goto/16 :goto_b2

    .line 1608
    .end local v63           #ex:Ljava/lang/Exception;
    :pswitch_80e
    :try_start_80e
    const-string v10, "conversation_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1610
    .local v6, conversationRowId:J
    const-string v10, "message_text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1611
    .local v8, text:Ljava/lang/String;
    const-string v10, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1612
    .local v9, uri:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V

    .line 1614
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1619
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v8           #text:Ljava/lang/String;
    .end local v9           #uri:Ljava/lang/String;
    :pswitch_83a
    const-string v10, "conversation_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1621
    .restart local v6       #conversationRowId:J
    const-string v10, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1622
    .restart local v9       #uri:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    const/4 v15, 0x0

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)V

    .line 1624
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1629
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v9           #uri:Ljava/lang/String;
    :pswitch_865
    const-string v10, "conversation_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1631
    .restart local v6       #conversationRowId:J
    const-string v10, "message_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1633
    .local v16, messageRowId:J
    const-string v10, "uri"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1634
    .restart local v9       #uri:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    invoke-direct/range {v10 .. v17}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;J)V

    .line 1636
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1641
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v9           #uri:Ljava/lang/String;
    .end local v16           #messageRowId:J
    :pswitch_898
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1643
    .restart local v6       #conversationRowId:J
    const-string v10, "message_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1645
    .restart local v16       #messageRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-wide v14, v6

    invoke-direct/range {v11 .. v17}, Lcom/google/android/apps/plus/realtimechat/SetMessageFailedOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)V

    .line 1647
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1652
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v16           #messageRowId:J
    :pswitch_8c2
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1654
    .restart local v6       #conversationRowId:J
    const-string v10, "message_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1656
    .restart local v16       #messageRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-wide v14, v6

    invoke-direct/range {v11 .. v17}, Lcom/google/android/apps/plus/realtimechat/SendMessageGeneralOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)V

    .line 1658
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1663
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v16           #messageRowId:J
    :pswitch_8ec
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1664
    .restart local v6       #conversationRowId:J
    const-string v10, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1666
    .restart local v15       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    invoke-direct/range {v10 .. v15}, Lcom/google/android/apps/plus/realtimechat/InviteParticipantsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$Audience;)V

    .line 1668
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1673
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v15           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    :pswitch_916
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1674
    .restart local v6       #conversationRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/LeaveConversationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1676
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1681
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    :pswitch_932
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1682
    .restart local v6       #conversationRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/MarkConversationReadOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/MarkConversationReadOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1684
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1689
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    :pswitch_94e
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1690
    .restart local v6       #conversationRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/MarkConversationNotificationsSeenOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/MarkConversationNotificationsSeenOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1693
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1698
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    :pswitch_96a
    const-string v10, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1699
    const-string v10, "message_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1700
    .restart local v16       #messageRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;

    move-wide/from16 v0, v16

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/google/android/apps/plus/realtimechat/RemoveMessageOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1702
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1707
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v16           #messageRowId:J
    :pswitch_98f
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1708
    .restart local v6       #conversationRowId:J
    const-string v10, "conversation_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 1709
    .local v67, name:Ljava/lang/String;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1711
    .local v3, operation:Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
    move-object/from16 v0, v67

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->setName(Ljava/lang/String;)V

    .line 1712
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1717
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
    .end local v6           #conversationRowId:J
    .end local v67           #name:Ljava/lang/String;
    :pswitch_9b8
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1718
    .restart local v6       #conversationRowId:J
    const-string v10, "conversation_muted"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v66

    .line 1719
    .local v66, muted:Z
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1721
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
    move/from16 v0, v66

    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;->setMuted(Z)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1727
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/UpdateConversationOperation;
    .end local v6           #conversationRowId:J
    .end local v66           #muted:Z
    :pswitch_9e2
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1728
    .restart local v6       #conversationRowId:J
    const-string v10, "inviter_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1729
    .local v23, inviterId:Ljava/lang/String;
    const-string v10, "accept"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v24

    .line 1730
    .local v24, accept:Z
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-wide/from16 v21, v6

    invoke-direct/range {v18 .. v24}, Lcom/google/android/apps/plus/realtimechat/ReplyToInvitationOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Z)V

    .line 1732
    .local v3, operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1737
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v23           #inviterId:Ljava/lang/String;
    .end local v24           #accept:Z
    :pswitch_a17
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1738
    .restart local v6       #conversationRowId:J
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/apps/plus/realtimechat/RequestMoreEventsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V

    .line 1740
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1745
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    :pswitch_a33
    const-string v10, "acl"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v53

    .line 1746
    .local v53, acl:I
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SetAclOperation;

    move/from16 v0, v53

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/apps/plus/realtimechat/SetAclOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 1748
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1753
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v53           #acl:I
    :pswitch_a50
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1754
    .restart local v6       #conversationRowId:J
    const-string v10, "is_present"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 1755
    .local v30, isPresent:Z
    const-string v10, "reciprocate"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v31

    .line 1756
    .local v31, reciprocate:Z
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-wide/from16 v28, v6

    invoke-direct/range {v25 .. v31}, Lcom/google/android/apps/plus/realtimechat/SendPresenceRequestOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZ)V

    .line 1758
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1763
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v30           #isPresent:Z
    .end local v31           #reciprocate:Z
    :pswitch_a86
    const-string v10, "conversation_row_id"

    const-wide/16 v11, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 1764
    .restart local v6       #conversationRowId:J
    const-string v10, "typing_status"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;

    move-result-object v37

    .line 1766
    .local v37, typingType:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;

    move-object/from16 v32, v3

    move-object/from16 v33, v4

    move-object/from16 v34, v5

    move-wide/from16 v35, v6

    invoke-direct/range {v32 .. v37}, Lcom/google/android/apps/plus/realtimechat/SendTypingRequestOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V

    .line 1768
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1773
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v6           #conversationRowId:J
    .end local v37           #typingType:Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;
    :pswitch_ab7
    const-string v10, "conversation_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1774
    .local v41, conversationId:Ljava/lang/String;
    const-string v10, "tile_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42

    .line 1775
    .local v42, tileType:Ljava/lang/String;
    const-string v10, "tile_event_version"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v43

    .line 1776
    .local v43, tileVersion:I
    const-string v10, "tile_event_type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 1778
    .local v44, tileEventType:Ljava/lang/String;
    const-string v10, "tile_event_data"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v45

    check-cast v45, Ljava/util/HashMap;

    .line 1780
    .local v45, tileEventData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;

    move-object/from16 v38, v3

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    invoke-direct/range {v38 .. v45}, Lcom/google/android/apps/plus/realtimechat/SendTileEventOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)V

    .line 1783
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    goto/16 :goto_b2

    .line 1788
    .end local v3           #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    .end local v41           #conversationId:Ljava/lang/String;
    .end local v42           #tileType:Ljava/lang/String;
    .end local v43           #tileVersion:I
    .end local v44           #tileEventType:Ljava/lang/String;
    .end local v45           #tileEventData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_afa
    const-string v10, "audience"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v15

    check-cast v15, Lcom/google/wireless/tacotruck/proto/Data$Audience;

    .line 1789
    .restart local v15       #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    invoke-static {v4, v5, v15}, Lcom/google/android/apps/plus/realtimechat/ParticipantUtils;->getParticipantListFromAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)Ljava/util/List;

    move-result-object v73

    .line 1792
    .local v73, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    new-instance v72, Ljava/util/ArrayList;

    invoke-direct/range {v72 .. v72}, Ljava/util/ArrayList;-><init>()V

    .line 1793
    .local v72, participantIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v73 .. v73}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v64

    .local v64, i$:Ljava/util/Iterator;
    :goto_b11
    invoke-interface/range {v64 .. v64}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b27

    invoke-interface/range {v64 .. v64}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 1794
    .local v70, participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    invoke-virtual/range {v70 .. v70}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getParticipantId()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v72

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b11

    .line 1796
    .end local v70           #participant:Lcom/google/wireless/realtimechat/proto/Data$Participant;
    :cond_b27
    invoke-static/range {v72 .. v72}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->getSuggestesRequest(Ljava/util/Collection;)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v59

    .line 1797
    .restart local v59       #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    const-string v11, "rid"

    const/4 v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v0, v59

    invoke-virtual {v10, v0, v11}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)Z

    .line 1798
    new-instance v10, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;

    const-string v11, "rid"

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v73

    invoke-direct {v0, v1, v10, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->completeRequest(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x3a98

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_b2

    .line 1806
    .end local v15           #audience:Lcom/google/wireless/tacotruck/proto/Data$Audience;
    .end local v59           #command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .end local v64           #i$:Ljava/util/Iterator;
    .end local v72           #participantIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v73           #participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    :pswitch_b65
    const-string v10, "message_row_id"

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1807
    .restart local v16       #messageRowId:J
    const-string v10, "flags"

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v51

    .line 1808
    .local v51, flags:I
    new-instance v3, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;

    move-object/from16 v46, v3

    move-object/from16 v47, v4

    move-object/from16 v48, v5

    move-wide/from16 v49, v16

    invoke-direct/range {v46 .. v51}, Lcom/google/android/apps/plus/realtimechat/CheckMessageSentOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JI)V

    .line 1810
    .restart local v3       #operation:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->executeOperation(Lcom/google/android/apps/plus/realtimechat/BunchClient;Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;)Ljava/lang/Object;

    .line 1811
    invoke-virtual {v3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->getResultValue()Ljava/lang/Object;

    move-result-object v77

    .line 1813
    .local v77, resultValue:Ljava/lang/Object;
    move-object/from16 v0, v77

    instance-of v10, v0, Ljava/lang/Boolean;

    if-eqz v10, :cond_b2

    .line 1814
    check-cast v77, Ljava/lang/Boolean;

    .end local v77           #resultValue:Ljava/lang/Object;
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 1817
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mBunchClient:Lcom/google/android/apps/plus/realtimechat/BunchClient;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->disconnect()V

    .line 1818
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V
    :try_end_bae
    .catch Ljava/lang/Exception; {:try_start_80e .. :try_end_bae} :catch_7e1

    goto/16 :goto_b2

    .line 1198
    :pswitch_data_bb0
    .packed-switch 0xa
        :pswitch_18b
        :pswitch_1d6
        :pswitch_764
        :pswitch_d4
        :pswitch_6bb
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_29b
        :pswitch_3ad
        :pswitch_4f1
        :pswitch_4df
        :pswitch_4fb
        :pswitch_57e
        :pswitch_9b
        :pswitch_567
        :pswitch_313
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_9b
        :pswitch_bc
    .end packed-switch

    .line 1597
    :pswitch_data_bf2
    .packed-switch 0x1a
        :pswitch_b65
        :pswitch_b2
        :pswitch_b2
        :pswitch_b2
        :pswitch_7bb
        :pswitch_80e
        :pswitch_8ec
        :pswitch_916
        :pswitch_b2
        :pswitch_932
        :pswitch_96a
        :pswitch_98f
        :pswitch_9b8
        :pswitch_b2
        :pswitch_b2
        :pswitch_9e2
        :pswitch_a17
        :pswitch_a33
        :pswitch_8c2
        :pswitch_83a
        :pswitch_865
        :pswitch_898
        :pswitch_a50
        :pswitch_a86
        :pswitch_94e
        :pswitch_ab7
        :pswitch_afa
    .end packed-switch
.end method

.method public static registerListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 527
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    return-void
.end method

.method public static removeMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1004
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1005
    const-string v1, "op"

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1006
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1007
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1008
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static removeResult(I)Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
    .registers 3
    .parameter "requestId"

    .prologue
    .line 559
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1112
    const-string v1, "op"

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1113
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1114
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1115
    const-string v1, "inviter_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    const-string v1, "accept"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1117
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static requestMoreEvents(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1130
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1131
    const-string v1, "op"

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1132
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1133
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1134
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static requestSuggestedParticipants(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$Audience;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1054
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1055
    const-string v1, "op"

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1056
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1057
    const-string v1, "audience"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1058
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static resetNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 751
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 752
    const-string v1, "op"

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 753
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 754
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 755
    return-void
.end method

.method private restartConnectCycle(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 1984
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectCount:I

    .line 1985
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mReconnectDelay:J

    .line 1986
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 1987
    return-void
.end method

.method public static retrySendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 865
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 866
    const-string v1, "op"

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 867
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 868
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 869
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 870
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private scheduleConnectAttempt(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 10
    .parameter

    .prologue
    const/4 v6, 0x3

    .line 1993
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1994
    iget-wide v2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLastConnectAttemptTime:J

    const-wide/16 v4, 0x3a98

    add-long/2addr v2, v4

    .line 1995
    cmp-long v4, v2, v0

    if-gez v4, :cond_29

    .line 1996
    const-string v0, "RealTimeChatService"

    invoke-static {v0, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1997
    const-string v0, "RealTimeChatService"

    const-string v1, "scheduling next connect attempt immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    :cond_1d
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    iput-object p1, v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2000
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2010
    :goto_28
    return-void

    .line 2002
    :cond_29
    const-string v4, "RealTimeChatService"

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 2003
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

    .line 2006
    :cond_4b
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2007
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    iput-object p1, v4, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 2008
    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    sub-long v0, v2, v0

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28
.end method

.method private scheduleLongTermConnect(Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide/32 v0, 0x6ddd00

    .line 1956
    const-string v2, "RealTimeChatService"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1957
    const-string v2, "RealTimeChatService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduling long term connect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_24
    new-instance v4, Landroid/content/Intent;

    const-class v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v4, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1960
    const-string v2, "op"

    const/16 v3, 0x1c

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1962
    const-string v2, "account_id"

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getRealTimeChatParticipantId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1963
    const-wide/16 v2, 0x2

    mul-long/2addr v2, p2

    .line 1964
    cmp-long v5, v2, v0

    if-lez v5, :cond_6d

    .line 1967
    :goto_42
    const-string v2, "reconnect_delay"

    invoke-virtual {v4, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1969
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1970
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    if-eqz v1, :cond_58

    .line 1971
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1973
    :cond_58
    const/4 v1, 0x0

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v4, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    .line 1975
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 1976
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mLongTermConnect:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1977
    return-void

    :cond_6d
    move-wide v0, v2

    goto :goto_42
.end method

.method public static sendLocalPhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 950
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 951
    const-string v1, "op"

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 952
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 953
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 954
    const-string v1, "uri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 955
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static sendMessage(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 823
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 824
    const-string v1, "op"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 826
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 827
    const-string v1, "message_text"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v1, "uri"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static sendPresenceRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZZ)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 885
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 886
    const-string v1, "op"

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 887
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 888
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 889
    const-string v1, "is_present"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 890
    const-string v1, "reciprocate"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 891
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static sendRemotePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJLjava/lang/String;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 845
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 846
    const-string v1, "op"

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 847
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 848
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 849
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 850
    const-string v1, "uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static sendTileEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 928
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    const-string v1, "op"

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 930
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 931
    const-string v1, "conversation_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 932
    const-string v1, "tile_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 933
    const-string v1, "tile_event_version"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 934
    const-string v1, "tile_event_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    const-string v1, "tile_event_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 936
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static sendTypingRequest(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/realtimechat/proto/Client$Typing$Type;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 906
    const-string v1, "op"

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 908
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 909
    const-string v1, "typing_status"

    invoke-virtual {p4}, Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;->getNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 910
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private sendUserCreateRequest(Lcom/google/android/apps/plus/realtimechat/BunchClient;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1913
    invoke-static {p0}, Lcom/google/android/apps/plus/util/AndroidUtils;->getAndroidId(Landroid/content/Context;)J

    move-result-wide v0

    .line 1914
    invoke-static {p2, v0, v1}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->createUser(Ljava/lang/String;J)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v2

    .line 1915
    const-string v3, "RealTimeChatService"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 1916
    const-string v3, "RealTimeChatService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->getCommandTypeName(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;->getRequestClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] expecting response"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
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

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_63
    const/4 v0, -0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/android/apps/plus/realtimechat/BunchClient;->sendCommand(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;I)Z

    .line 1922
    return-void
.end method

.method public static setAcl(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1147
    const-string v1, "op"

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1148
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1149
    const-string v1, "acl"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1150
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static setConversationMuted(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JZ)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1091
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1092
    const-string v1, "op"

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1093
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1094
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1095
    const-string v1, "conversation_muted"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1096
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static setConversationName(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLjava/lang/String;)I
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1072
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1073
    const-string v1, "op"

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1075
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1076
    const-string v1, "conversation_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1077
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method public static setCurrentConversationRowId(Ljava/lang/Long;)V
    .registers 5
    .parameter

    .prologue
    .line 688
    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    monitor-enter v1

    .line 689
    :try_start_3
    const-string v0, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 690
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

    .line 692
    :cond_24
    sput-object p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sCurrentConversationRowId:Ljava/lang/Long;

    .line 693
    monitor-exit v1

    .line 694
    return-void

    .line 693
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static setMessageFailed(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJ)I
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 969
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 970
    const-string v1, "op"

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 971
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 972
    const-string v1, "conversation_row_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 973
    const-string v1, "message_row_id"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 974
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->startCommand(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    return v0
.end method

.method private static startCommand(Landroid/content/Context;Landroid/content/Intent;)I
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1161
    invoke-static {}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->generateRequestId()I

    move-result v0

    .line 1162
    .local v0, requestId:I
    const-string v1, "rid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1164
    const-string v1, "RealTimeChatService"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 1165
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

    .line 1168
    :cond_3e
    sget-object v1, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sPendingRequests:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$PendingRequestList;->addRequest(Ljava/lang/Object;)V

    .line 1169
    return v0
.end method

.method public static unregisterListener(Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 536
    sget-object v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 537
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 194
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 195
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 196
    const-string v0, "RealTimeChatService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    .line 199
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    const-string v2, "ServiceThread"

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;-><init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->start()V

    .line 201
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 218
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 219
    const-string v0, "RealTimeChatService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 220
    const-string v0, "RealTimeChatService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_13
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mPingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mConnectRunnable:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ConnectRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    if-eqz v0, :cond_3b

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->quit()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    .line 231
    :cond_3b
    return-void
.end method

.method public onIntentProcessed(Landroid/content/Intent;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/lang/Object;)V
    .registers 13
    .parameter "intent"
    .parameter "serviceResult"
    .parameter "resultValue"

    .prologue
    const/4 v8, -0x1

    .line 2139
    const-string v7, "op"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2140
    .local v3, opCode:I
    const-string v7, "rid"

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2141
    .local v5, requestId:I
    const-string v7, "account"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 2142
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    sparse-switch v3, :sswitch_data_4c

    .line 2162
    :cond_18
    return-void

    :sswitch_19
    move-object v6, p3

    .line 2144
    check-cast v6, Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;

    .line 2146
    .local v6, result:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;
    sget-object v7, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 2147
    .local v2, listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    invoke-virtual {v2, v5, v0, v6, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onConversationCreated(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V

    goto :goto_22

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    .end local v6           #result:Lcom/google/android/apps/plus/realtimechat/CreateConversationOperation$ConversationResult;
    :sswitch_32
    move-object v4, p3

    .line 2154
    check-cast v4, Ljava/util/List;

    .line 2155
    .local v4, participants:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/realtimechat/proto/Data$Participant;>;"
    sget-object v7, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->sListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;

    .line 2156
    .restart local v2       #listener:Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
    invoke-virtual {v2, v5, v0, p2, v4}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;->onRequestSuggestedParticipants(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;Ljava/util/List;)V

    goto :goto_3b

    .line 2142
    nop

    :sswitch_data_4c
    .sparse-switch
        0x1e -> :sswitch_19
        0x34 -> :sswitch_32
    .end sparse-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 208
    invoke-static {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->initWakeLock(Landroid/content/Context;)V

    .line 209
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService;->mServiceThread:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    #calls: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->put(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->access$100(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;Landroid/content/Intent;)V

    .line 210
    const/4 v0, 0x2

    return v0
.end method
