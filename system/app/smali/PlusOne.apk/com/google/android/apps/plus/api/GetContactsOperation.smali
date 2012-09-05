.class public Lcom/google/android/apps/plus/api/GetContactsOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "GetContactsOperation.java"


# instance fields
.field private final mCount:I

.field private final mLastUpdateToken:Ljava/lang/String;

.field private final mOffset:I

.field private mResponse:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;IILandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 17
    .parameter "context"
    .parameter "account"
    .parameter "lastUpdateToken"
    .parameter "offset"
    .parameter "count"
    .parameter "intent"
    .parameter "listener"
    .parameter "syncState"

    .prologue
    .line 47
    const-string v2, "POST"

    invoke-static/range {p8 .. p8}, Lcom/google/android/apps/plus/api/GetContactsOperation;->createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 49
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mLastUpdateToken:Ljava/lang/String;

    .line 50
    iput p4, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mOffset:I

    .line 51
    iput p5, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mCount:I

    .line 52
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
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/GetContactsOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 61
    const-string v1, "&rfm=a&gf=c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "&count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "&query=ppl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mLastUpdateToken:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 66
    const-string v1, "&lastupdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mLastUpdateToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_37
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public getResponse()Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mResponse:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    return-object v0
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/api/ContactsOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    return-void
.end method

.method protected onHttpHandleContentFromStream(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 4
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/api/GetContactsOperation;->mResponse:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetContactsOperation;->onStartResultProcessing()V

    .line 80
    return-void
.end method
