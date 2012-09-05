.class Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;
.super Ljava/lang/Object;
.source "SocialHubMsgService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->runRetry(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;)V
    .registers 2
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;->this$1:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 848
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;->this$1:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->this$0:Lcom/sec/android/socialhub/service/SocialHubMsgService;

    #calls: Lcom/sec/android/socialhub/service/SocialHubMsgService;->startManagement()V
    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService;->access$100(Lcom/sec/android/socialhub/service/SocialHubMsgService;)V

    .line 850
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;->this$1:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->access$210(Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;)I

    .line 851
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;->this$1:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I
    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->access$200(Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 852
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;->this$1:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    #setter for: Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->mTaskCount:I
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->access$202(Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;I)I

    .line 854
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager$1;->this$1:Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/service/SocialHubMsgService$RetryManager;->runRetry(Z)V

    .line 855
    return-void
.end method
