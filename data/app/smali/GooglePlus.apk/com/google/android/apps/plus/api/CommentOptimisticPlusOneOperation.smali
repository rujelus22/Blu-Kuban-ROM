.class public Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "CommentOptimisticPlusOneOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation$1;
    }
.end annotation


# instance fields
.field private mActivityId:Ljava/lang/String;

.field private mCommentId:Ljava/lang/String;

.field private mPhotoPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private mPostPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

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

    .line 52
    const-string v3, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 54
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->hasPlusoneData()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v4

    :goto_18
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPostsData;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V

    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->hasPlusoneData()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v4

    :goto_31
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->plusOnePhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V

    .line 177
    return-void

    :cond_35
    move-object v4, v6

    .line 171
    goto :goto_18

    :cond_37
    move-object v4, v6

    .line 174
    goto :goto_31
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;)V
    .registers 10
    .parameter "request"
    .parameter "response"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mCommentId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->hasPlusoneData()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v4

    :goto_16
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPostsData;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->getActivityId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mCommentId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->hasPlusoneData()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v4

    :goto_2d
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->plusOnePhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)V

    .line 193
    return-void

    :cond_31
    move-object v4, v6

    .line 187
    goto :goto_16

    :cond_33
    move-object v4, v6

    .line 190
    goto :goto_2d
.end method


# virtual methods
.method public addPlusOneComment(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "activityId"
    .parameter "commentId"

    .prologue
    const/4 v3, 0x1

    .line 63
    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, p1, p2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mPostPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, p1, p2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->plusOnePhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mPhotoPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 68
    iput-boolean v3, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mProcessMasterResponseFirst:Z

    .line 70
    iput-object p1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mActivityId:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mCommentId:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    .line 74
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->COMMENT:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 75
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 76
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setCommentId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 77
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 79
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 80
    return-void
.end method

.method public deletePlusOneComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "activityId"
    .parameter "commentId"
    .parameter "plusOneId"

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, p1, p2, v3}, Lcom/google/android/apps/plus/content/EsPostsData;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mPostPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2, p1, p2, v3}, Lcom/google/android/apps/plus/content/EsPhotosData;->plusOnePhotoComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mPhotoPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 95
    iput-object p1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mActivityId:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mCommentId:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    .line 99
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->COMMENT:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 100
    invoke-virtual {v0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setActivityId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 101
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 102
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 104
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 105
    return-void
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
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
    .line 139
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 140
    .local v0, body:Lcom/google/protobuf/ByteString;
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 141
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

    .line 145
    :cond_3b
    sget-object v1, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_80

    .line 157
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

    .line 161
    .end local p2
    :goto_6a
    return-void

    .line 147
    .restart local p2
    :pswitch_6b
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneResponse;)V

    goto :goto_6a

    .line 152
    .restart local p2
    :pswitch_75
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneResponse;)V

    goto :goto_6a

    .line 145
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
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 9
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 112
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 114
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_9

    if-eqz p3, :cond_16

    .line 115
    :cond_9
    sget-object v0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    .line 131
    :cond_16
    :goto_16
    return-void

    .line 119
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mActivityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mCommentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mPostPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPostsData;->setCommentPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mActivityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mCommentId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/CommentOptimisticPlusOneOperation;->mPhotoPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->setPhotoCommentPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_16

    .line 115
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method
