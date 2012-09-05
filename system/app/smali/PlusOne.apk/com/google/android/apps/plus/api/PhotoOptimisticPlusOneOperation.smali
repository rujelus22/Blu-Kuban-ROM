.class public Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "PhotoOptimisticPlusOneOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;
    }
.end annotation


# instance fields
.field private mPhotoId:J

.field private mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

.field private mRequestType:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 47
    const-string v3, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 49
    return-void
.end method

.method private handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)V
    .registers 13
    .parameter "request"
    .parameter "response"

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getType()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    move-result-object v9

    .line 137
    .local v9, requestType:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;
    sget-object v0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    .line 151
    :goto_f
    return-void

    .line 141
    :pswitch_10
    iget-object v0, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getOwnerGaiaId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getPhotoId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->getAlbumId()J

    move-result-wide v6

    sget-object v8, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    if-ne v9, v8, :cond_29

    const/4 v8, 0x1

    :goto_25
    invoke-static/range {v0 .. v8}, Lcom/google/android/apps/plus/content/EsPhotosData;->updatePhotoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJJZ)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    goto :goto_f

    :cond_29
    const/4 v8, 0x0

    goto :goto_25

    .line 137
    nop

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public createPlusOnePhoto(JJJZ)V
    .registers 20
    .parameter "userId"
    .parameter "albumId"
    .parameter "photoId"
    .parameter "plusOne"

    .prologue
    .line 60
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mPhotoId:J

    .line 62
    iget-object v2, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-wide v4, p1

    move-wide/from16 v6, p5

    move-wide v8, p3

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/google/android/apps/plus/content/EsPhotosData;->updatePhotoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JJJZ)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    .line 65
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    move-result-object v11

    .line 66
    .local v11, builder:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;
    move-wide/from16 v0, p5

    invoke-virtual {v11, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setPhotoId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 67
    invoke-virtual {v11, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setOwnerGaiaId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 68
    if-eqz p7, :cond_39

    .line 69
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v11, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 70
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v2, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    .line 76
    :goto_2b
    move-wide v0, p3

    invoke-virtual {v11, v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setAlbumId(J)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 77
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->PHOTO_ACTION:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    .line 78
    return-void

    .line 72
    :cond_39
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v11, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Builder;

    .line 73
    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    iput-object v2, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    goto :goto_2b
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
    .line 109
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getResponseBody()Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 110
    .local v0, body:Lcom/google/protobuf/ByteString;
    const-string v1, "HttpTransaction"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 111
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

    .line 115
    :cond_3b
    sget-object v1, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$Response;->getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_76

    .line 123
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

    .line 127
    .end local p2
    :goto_6a
    return-void

    .line 117
    .restart local p2
    :pswitch_6b
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;

    .end local p2
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->handleResponse(Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoActionResponse;)V

    goto :goto_6a

    .line 115
    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_6b
    .end packed-switch
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 9
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 85
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 87
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_9

    if-eqz p3, :cond_16

    .line 88
    :cond_9
    sget-object v0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$PhotoActionRequest$Type:[I

    iget-object v1, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotoActionRequest$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_24

    .line 101
    :cond_16
    :goto_16
    return-void

    .line 92
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-wide v2, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mPhotoId:J

    iget-object v4, p0, Lcom/google/android/apps/plus/api/PhotoOptimisticPlusOneOperation;->mPlusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPhotosData;->setPhotoPlusOne(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;JLcom/google/wireless/tacotruck/proto/Data$PlusOneData;)V

    goto :goto_16

    .line 88
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method
