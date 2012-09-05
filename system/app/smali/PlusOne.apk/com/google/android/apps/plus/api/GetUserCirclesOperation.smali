.class public Lcom/google/android/apps/plus/api/GetUserCirclesOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "GetUserCirclesOperation.java"


# instance fields
.field private mCircles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 43
    const-string v2, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 46
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->mPersonId:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method protected createPostData()Lorg/apache/http/HttpEntity;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 71
    const-string v1, "&query=cir&idtype=a&contactid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public getCircles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/contacts/proto/Circles$MobileCircle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->mCircles:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/ContactsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 7
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;

    move-result-object v1

    .line 58
    .local v1, response:Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobileCirclesResponse;->getCircleList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->mCircles:Ljava/util/List;

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->mCircles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2c

    .line 60
    iget-object v3, p0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->mCircles:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetUserCirclesOperation;->mCircles:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    invoke-static {v2}, Lcom/google/android/apps/plus/api/ApiUtils;->setCircleIdNamespace(Lcom/google/wireless/contacts/proto/Circles$MobileCircle;)Lcom/google/wireless/contacts/proto/Circles$MobileCircle;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 62
    :cond_2c
    return-void
.end method
