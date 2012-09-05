.class Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;
.super Ljava/lang/Object;
.source "SocialHubSnsHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->initiailize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .parameter "arg0"
    .parameter "service"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-static {p2}, Lcom/sec/android/app/sns/ISnsRequester$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/sns/ISnsRequester;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 414
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$100(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    const-string v1, "connected"

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsReqConnected:Z

    .line 417
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #calls: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->checkServiceConnection()V
    invoke-static {v0}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$000(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V

    .line 419
    const-string v0, "SocialHubSnsHandler"

    const-string v1, "onServiceConnected()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRequester connected. connection - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v3}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$100(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 7
    .parameter "arg0"

    .prologue
    .line 390
    const-string v1, "SocialHubSnsHandler"

    const-string v2, "onServiceDisconnected()"

    const-string v3, "mRequester disconnceted."

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 394
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->bIsReqConnected:Z

    .line 398
    :try_start_13
    const-string v1, "SocialHubSnsHandler"

    const-string v2, "onServiceDisconnected()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to take connection. connection - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v4}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$100(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$100(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    .line 400
    const-string v1, "SocialHubSnsHandler"

    const-string v2, "onServiceDisconnected()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "taken. connection - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #getter for: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mConnectQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v4}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$100(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_64} :catch_6a

    .line 407
    :goto_64
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$3;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    #calls: Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->checkServiceConnection()V
    invoke-static {v1}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->access$000(Lcom/sec/android/socialhub/service/SocialHubSnsHandler;)V

    .line 409
    return-void

    .line 402
    :catch_6a
    move-exception v0

    .line 404
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_64
.end method
