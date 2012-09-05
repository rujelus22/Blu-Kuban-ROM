.class public Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "GetBlockedPeopleOperation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 37
    const-string v2, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 39
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
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 48
    const-string v1, "&query=cml&cmtl=m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "&circleid=f.15"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
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
    .registers 7
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;

    move-result-object v0

    .line 62
    .local v0, response:Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->onStartResultProcessing()V

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetBlockedPeopleOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileCircleMembersResponse;->getMemberList()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertBlockedPeople(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/util/List;)V

    .line 65
    return-void
.end method
