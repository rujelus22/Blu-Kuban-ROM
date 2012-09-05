.class Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;
.super Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;
.source "SocialHubSnsHandler.java"


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
    .line 310
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sns/ISnsRequesterCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(IZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 24
    .parameter "reqID"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v13, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    monitor-enter v13

    .line 318
    :try_start_5
    const-string v2, "SocialHubSnsHandler"

    const-string v3, "onResponse()"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reqID = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", bSuccess = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", bContinue = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", uri = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p4, :cond_bb

    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", httpStatusCode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", errCode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", subErrorCode = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", errorMap = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p8, :cond_bd

    invoke-interface/range {p8 .. p8}, Ljava/util/Map;->size()I

    move-result v1

    :goto_70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", reason = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_eb

    .line 332
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;

    .line 334
    .local v12, message:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;
    if-nez v12, :cond_bf

    .line 336
    const-string v1, "SocialHubSnsHandler"

    const-string v2, "onResponse()"

    const-string v3, "message is null!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    monitor-exit v13

    .line 349
    .end local v12           #message:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;
    :goto_ba
    return-void

    .line 318
    :cond_bb
    const/4 v1, 0x0

    goto :goto_3c

    :cond_bd
    const/4 v1, 0x0

    goto :goto_70

    .line 341
    .restart local v12       #message:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;
    :cond_bf
    iget-object v1, v12, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;->callback:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;

    if-eqz v1, :cond_db

    .line 342
    iget-object v1, v12, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;->callback:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;

    iget v3, v12, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;->reqType:I

    move v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v1 .. v11}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;->onResponse(IIZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V

    .line 344
    :cond_db
    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubSnsHandler$1;->this$0:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    iget-object v1, v1, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->mMessageMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v13

    goto :goto_ba

    .line 348
    .end local v12           #message:Lcom/sec/android/socialhub/service/SocialHubSnsHandler$HandleMessage;
    :catchall_e8
    move-exception v1

    monitor-exit v13
    :try_end_ea
    .catchall {:try_start_5 .. :try_end_ea} :catchall_e8

    throw v1

    .line 347
    :cond_eb
    :try_start_eb
    const-string v1, "SocialHubSnsHandler"

    const-string v2, "onResponse()"

    const-string v3, "does not has key"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    monitor-exit v13
    :try_end_f5
    .catchall {:try_start_eb .. :try_end_f5} :catchall_e8

    goto :goto_ba
.end method
