.class final Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "BlockingC2DMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnC2dmReceivedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;->this$0:Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;-><init>(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;)V

    return-void
.end method


# virtual methods
.method onC2dmRegistration(Lcom/google/android/apps/plus/service/ServiceResult;Ljava/lang/String;)V
    .registers 4
    .parameter "serviceResult"
    .parameter "registrationToken"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;->this$0:Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;

    #setter for: Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mServiceResult:Lcom/google/android/apps/plus/service/ServiceResult;
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->access$102(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;Lcom/google/android/apps/plus/service/ServiceResult;)Lcom/google/android/apps/plus/service/ServiceResult;

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;->this$0:Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;

    #setter for: Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mRegistrationToken:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->access$202(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient$OnC2dmReceivedListener;->this$0:Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;

    #getter for: Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->mEvent:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;->access$300(Lcom/google/android/apps/plus/realtimechat/BlockingC2DMClient;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 67
    return-void
.end method
