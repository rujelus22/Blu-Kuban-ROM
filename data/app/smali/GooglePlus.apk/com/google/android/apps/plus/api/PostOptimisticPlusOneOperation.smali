.class public Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "PostOptimisticPlusOneOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation$1;
    }
.end annotation


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 48
    const-string v3, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 50
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    :goto_12
    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->plusOnePost(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V

    .line 160
    return-void

    .line 158
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;)V
    .registers 8
    .parameter "request"
    .parameter "response"

    .prologue
    .line 169
    iget-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->hasPlusoneData()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    :goto_12
    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->plusOnePost(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V

    .line 171
    return-void

    .line 169
    :cond_17
    const/4 v0, 0x0

    goto :goto_12
.end method


# virtual methods
.method public createPostPlusOne(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 8
    .parameter "type"
    .parameter "activityId"
    .parameter "audience"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x1

    invoke-static {v1, v2, p2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->plusOnePost(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 63
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    .line 64
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 65
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 66
    if-eqz p3, :cond_1e

    .line 67
    invoke-static {p3}, Lcom/google/android/apps/plus/api/ApiUtils;->removeCircleIdNamespaces(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Data$Audience;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setAudience(Lcom/google/wireless/tacotruck/proto/Data$Audience;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 69
    :cond_1e
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 71
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 72
    iput-object p2, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mActivityId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public deletePostPlusOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "plusOneId"
    .parameter "activityId"

    .prologue
    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->plusOnePost(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 84
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    .line 85
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 86
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 87
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 89
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 90
    iput-object p2, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mActivityId:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    invoke-super {p0}, Lcom/google/android/apps/plus/api/EsOperation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V
    .registers 7
    .parameter "response"
    .parameter "originalRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 128
    .local v0, body:Lcom/google/protobuf/ByteString;
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 129
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---- Response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", bytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_3b
    sget-object v1, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    .line 145
    const-string v1, "HttpTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled response type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local p2
    :goto_6a
    return-void

    .line 135
    .restart local p2
    :pswitch_6b
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;)V

    goto :goto_6a

    .line 140
    .restart local p2
    :pswitch_75
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;)V

    goto :goto_6a

    .line 133
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_75
    .end packed-switch
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 100
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_9

    if-eqz p3, :cond_16

    .line 101
    :cond_9
    sget-object v0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    iget-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_30

    .line 119
    :cond_16
    :goto_16
    return-void

    .line 104
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mActivityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->setPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_16

    .line 110
    :pswitch_23
    iget-object v0, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mActivityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/PostOptimisticPlusOneOperation;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->setPostPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_16

    .line 101
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_17
        :pswitch_23
    .end packed-switch
.end method
