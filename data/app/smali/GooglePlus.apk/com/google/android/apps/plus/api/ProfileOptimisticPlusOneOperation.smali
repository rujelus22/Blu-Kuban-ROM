.class public Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;
.super Lcom/google/android/apps/plus/api/EsOperation;
.source "ProfileOptimisticPlusOneOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation$1;
    }
.end annotation


# instance fields
.field private mGaiaId:Ljava/lang/String;

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

    .line 38
    const-string v3, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->createESRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/EsOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 40
    return-void
.end method


# virtual methods
.method public createProfilePlusOne(Ljava/lang/String;)V
    .registers 7
    .parameter "gaiaId"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mGaiaId:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mGaiaId:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->changePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    .line 61
    :goto_f
    return-void

    .line 55
    :cond_10
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 57
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    move-result-object v0

    .line 58
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->setId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;

    .line 60
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->CREATE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    goto :goto_f
.end method

.method public deleteProfilePlusOne(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "gaiaId"
    .parameter "plusOneId"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mGaiaId:Ljava/lang/String;

    .line 72
    iget-object v1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mGaiaId:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->changePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_10

    .line 84
    :goto_f
    return-void

    .line 77
    :cond_10
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    iput-object v1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    .line 79
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    move-result-object v0

    .line 80
    .local v0, builder:Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;->ENTITY:Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Network$CreatePlusOneRequest$ObjectType;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 81
    invoke-virtual {v0, p2}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;

    .line 83
    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->DELETE_PLUS_ONE:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DeletePlusOneRequest;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->addRequest(Lcom/google/wireless/tacotruck/proto/Network$Request$Type;Lcom/google/protobuf/MessageLite;)V

    goto :goto_f
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    invoke-super {p0}, Lcom/google/android/apps/plus/api/EsOperation;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 8
    .parameter "errorCode"
    .parameter "reasonPhrase"
    .parameter "ex"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/apps/plus/api/EsOperation;->onHttpOperationComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    .line 93
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_9

    if-eqz p3, :cond_16

    .line 94
    :cond_9
    sget-object v0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation$1;->$SwitchMap$com$google$wireless$tacotruck$proto$Network$Request$Type:[I

    iget-object v1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mRequestType:Lcom/google/wireless/tacotruck/proto/Network$Request$Type;

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$Request$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2e

    .line 112
    :cond_16
    :goto_16
    return-void

    .line 97
    :pswitch_17
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mGaiaId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->changePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Z

    goto :goto_16

    .line 103
    :pswitch_22
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/ProfileOptimisticPlusOneOperation;->mGaiaId:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->changePlusOneData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)Z

    goto :goto_16

    .line 94
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_22
    .end packed-switch
.end method
