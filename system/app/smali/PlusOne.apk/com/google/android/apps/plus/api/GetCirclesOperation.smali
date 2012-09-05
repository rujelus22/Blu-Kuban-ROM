.class public Lcom/google/android/apps/plus/api/GetCirclesOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "GetCirclesOperation.java"


# instance fields
.field private mCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"
    .parameter "syncState"

    .prologue
    .line 43
    const-string v2, "POST"

    invoke-static {p5}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected createPostData()Lorg/apache/http/HttpEntity;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 76
    const-string v1, "&query=cir"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public getCircleCount()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/apps/plus/api/GetCirclesOperation;->mCount:I

    return v0
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/ContactsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v2

    .line 56
    .local v2, response:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetCirclesOperation;->onStartResultProcessing()V

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getCircleList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v1, modList:Ljava/util/List;,"Ljava/util/List<Lcom/google/wireless/contacts/proto/Circles$MobileCircle;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_27

    .line 60
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    invoke-static {v3}, Lcom/google/android/apps/plus/api/ApiUtils;->setCircleIdNamespace(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 64
    :cond_27
    iget-object v3, p0, Lcom/google/android/apps/plus/api/GetCirclesOperation;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/GetCirclesOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v3, v4, v1}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertCircles(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 66
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/api/GetCirclesOperation;->mCount:I

    .line 67
    return-void
.end method
