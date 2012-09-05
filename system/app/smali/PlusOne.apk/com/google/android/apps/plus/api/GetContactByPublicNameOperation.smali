.class public Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "GetContactByPublicNameOperation.java"


# instance fields
.field private mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

.field private final mPublicId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "publicId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 43
    const-string v2, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 46
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->mPublicId:Ljava/lang/String;

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
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 76
    const-string v1, "&query=c&idtype=p&contactid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->mPublicId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

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
    .registers 8
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v1

    .line 58
    .local v1, response:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->onStartResultProcessing()V

    .line 60
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getContactCount()I

    move-result v0

    .line 61
    .local v0, contactCount:I
    if-nez v0, :cond_28

    .line 62
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->mPublicId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 64
    :cond_28
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getContact(I)Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 65
    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/GetContactByPublicNameOperation;->mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 67
    return-void
.end method
