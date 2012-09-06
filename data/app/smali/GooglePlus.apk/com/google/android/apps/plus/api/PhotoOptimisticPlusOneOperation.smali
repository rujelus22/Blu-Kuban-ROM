.class public Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "PhotoOptimisticPlusOneOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 42
    const-string v3, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

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
.method public createPlusOnePhoto(Ljava/lang/String;JJZ)V
    .registers 16
    .parameter "ownerGaiaId"
    .parameter "albumId"
    .parameter "photoId"
    .parameter "plusOne"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object v2, p1

    move-wide v3, p4

    move-wide v5, p2

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsPhotosData;->updatePhotoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;JJZ)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 60
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v8

    .line 61
    .local v8, plusOneBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    invoke-virtual {v8, p4, p5}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 62
    invoke-virtual {v8, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setFocusObfuscatedOwnerId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 63
    if-eqz p6, :cond_29

    .line 64
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v8, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 69
    :goto_1c
    invoke-virtual {v8, p2, p3}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 70
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTO_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v8}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 75
    return-void

    .line 66
    :cond_29
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v8, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    goto :goto_1c
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    invoke-super {p0}, Lcom/google/android/apps/plus/api/EsOperation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 84
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 85
    .local v0, body:Lcom/google/protobuf/ByteString;
    const-string v3, "HttpTransaction"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 86
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

    .line 90
    :cond_3b
    sget-object v3, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_62

    .line 101
    :cond_4a
    :goto_4a
    return-void

    .line 92
    :pswitch_4b
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;

    move-result-object v2

    .line 94
    .local v2, photoResponse:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->hasPhoto()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 95
    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoResponse;->getPhoto()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;

    move-result-object v1

    .line 96
    .local v1, photo:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
    iget-object v3, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Lcom/google/android/apps/plus/content/EsPhotosData;->insertSinglePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V

    goto :goto_4a

    .line 90
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4b
    .end packed-switch
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method
