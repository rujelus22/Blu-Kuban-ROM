.class public abstract Lcom/google/android/apps/plus/api/AvatarOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "AvatarOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/AvatarOperation$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "syncState"

    .prologue
    .line 42
    const-string v3, "POST"

    invoke-static {p5}, Lcom/google/android/apps/plus/api/AvatarOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAvatar(JI)V
    .registers 7
    .parameter "userId"
    .parameter "size"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    move-result-object v0

    .line 53
    .local v0, request:Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;
    invoke-virtual {v0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setUserId(J)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setUseBase64(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setEnableSilhouette(Z)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    .line 56
    invoke-virtual {v0, p3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->setImageSize(I)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;

    .line 58
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_AVATAR:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/AvatarOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 59
    return-void
.end method

.method protected handleError(Lcom/google/wireless/tacotruck/proto/Network$Response;)V
    .registers 5
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v0

    .line 67
    .local v0, errorCode:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    sget-object v1, Lcom/google/android/apps/plus/api/AvatarOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Response$ErrorCode:[I

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_14

    .line 80
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->handleError(Lcom/google/wireless/tacotruck/proto/Network$Response;)V

    .line 81
    :pswitch_12
    return-void

    .line 67
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_12
        :pswitch_12
        :pswitch_12
    .end packed-switch
.end method

.method protected handleOneResponse(Lcom/google/wireless/tacotruck/proto/Network$Response;Lcom/google/protobuf/MessageLite;)V
    .registers 9
    .parameter "response"
    .parameter "originalRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->GET_AVATAR:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 110
    .end local p2
    :cond_c
    :goto_c
    return-void

    .line 93
    .restart local p2
    :cond_d
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;

    .end local p2
    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarRequest;->getUserId()J

    move-result-wide v1

    .line 95
    .local v1, userId:J
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->hasErrorCode()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 96
    sget-object v3, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 97
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/api/AvatarOperation;->handleResponse(J[B)V

    goto :goto_c

    .line 102
    :cond_2a
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 103
    .local v0, body:Lcom/google/protobuf/ByteString;
    const-string v3, "HttpTransaction"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 104
    const-string v3, "HttpTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---- Response type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_65
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Network$GetAvatarResponse;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/apps/plus/api/AvatarOperation;->handleResponse(J[B)V

    goto :goto_c
.end method

.method protected abstract handleResponse(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method
