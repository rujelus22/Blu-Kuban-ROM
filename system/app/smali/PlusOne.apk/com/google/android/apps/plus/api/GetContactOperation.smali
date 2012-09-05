.class public Lcom/google/android/apps/plus/api/GetContactOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "GetContactOperation.java"


# instance fields
.field private mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

.field private final mInsertInDatabase:Z

.field private final mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "insertInDatabase"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v5, 0x0

    .line 47
    const-string v2, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/GetContactOperation;->createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 50
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mPersonId:Ljava/lang/String;

    .line 51
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mInsertInDatabase:Z

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
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/GetContactOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 94
    const-string v1, "&query=c&idtype=a&contactid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

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
    .registers 11
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;

    move-result-object v4

    .line 63
    .local v4, response:Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetContactOperation;->onStartResultProcessing()V

    .line 65
    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getContactCount()I

    move-result v2

    .line 66
    .local v2, contactCount:I
    if-nez v2, :cond_28

    .line 67
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mPersonId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 69
    :cond_28
    const v0, 0x7fffffff

    .line 70
    .local v0, affinity:I
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 71
    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Client$MobileContactsResponse;->getContactList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 72
    .local v1, contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAttributes()I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5a

    .line 74
    iput-object v1, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    .line 81
    .end local v1           #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :cond_4c
    iget-boolean v5, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mInsertInDatabase:Z

    if-eqz v5, :cond_59

    .line 82
    iget-object v5, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v7, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    invoke-static {v5, v6, v7}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertContact(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/contacts/proto/Contact$MobileContact;)V

    .line 85
    :cond_59
    return-void

    .line 76
    .restart local v1       #contact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;
    :cond_5a
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAffinity()I

    move-result v5

    if-ge v5, v0, :cond_36

    .line 77
    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAffinity()I

    move-result v0

    .line 78
    iput-object v1, p0, Lcom/google/android/apps/plus/api/GetContactOperation;->mContact:Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    goto :goto_36
.end method
