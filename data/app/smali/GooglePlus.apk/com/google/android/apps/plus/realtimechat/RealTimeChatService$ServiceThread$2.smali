.class Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$2;
.super Ljava/lang/Object;
.source "RealTimeChatService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)V
    .registers 2
    .parameter

    .prologue
    .line 2542
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$2;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$2;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    #getter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mThreadHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->access$1400(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread$2;->this$1:Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;

    #getter for: Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->mProcessQueueRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;->access$1300(Lcom/google/android/apps/plus/realtimechat/RealTimeChatService$ServiceThread;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2549
    return-void
.end method
