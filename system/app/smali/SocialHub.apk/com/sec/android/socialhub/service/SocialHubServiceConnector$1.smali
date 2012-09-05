.class Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;
.super Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback$Stub;
.source "SocialHubServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->initService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/service/SocialHubServiceConnector;)V
    .registers 2
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    invoke-direct {p0}, Lcom/sec/android/socialhub/service/aidl/ISocialHubServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReponse(IIZILjava/lang/String;)V
    .registers 14
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v7, v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 392
    :try_start_5
    const-string v0, "SocialHubServiceConnector"

    const-string v1, "onMessageReponse()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 402
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;

    .line 404
    .local v6, message:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;
    if-nez v6, :cond_70

    .line 406
    const-string v0, "SocialHubServiceConnector"

    const-string v1, "onMessageReponse()"

    const-string v2, "message is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    monitor-exit v7

    .line 420
    .end local v6           #message:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;
    :goto_6f
    return-void

    .line 410
    .restart local v6       #message:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;
    :cond_70
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v0, v0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, v6, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;->mCallback:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ISocialHubApiCallback;->onMessageReponse(IIZILjava/lang/String;)V

    .line 414
    const-string v0, "SocialHubServiceConnector"

    const-string v1, "onMessageReponse()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reqMap Size - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/service/SocialHubServiceConnector$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubServiceConnector;

    iget-object v3, v3, Lcom/sec/android/socialhub/service/SocialHubServiceConnector;->mReqMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    monitor-exit v7

    goto :goto_6f

    .line 419
    .end local v6           #message:Lcom/sec/android/socialhub/service/SocialHubServiceConnector$ServiceMessage;
    :catchall_a9
    move-exception v0

    monitor-exit v7
    :try_end_ab
    .catchall {:try_start_5 .. :try_end_ab} :catchall_a9

    throw v0

    .line 418
    :cond_ac
    :try_start_ac
    const-string v0, "SocialHubServiceConnector"

    const-string v1, "onMessageReponse()"

    const-string v2, "does not has key"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    monitor-exit v7
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_a9

    goto :goto_6f
.end method
