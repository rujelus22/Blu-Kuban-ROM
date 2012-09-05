.class public Lcom/google/android/apps/plus/api/GetProfileDataOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "GetProfileDataOperation.java"


# instance fields
.field private mContactAttributes:Ljava/lang/Integer;

.field private final mInsertInDatabase:Z

.field private final mPersonId:Ljava/lang/String;

.field private mProfile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;


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

    .line 46
    const-string v2, "POST"

    invoke-static {v5}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 48
    iput-object p3, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mPersonId:Ljava/lang/String;

    .line 49
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mInsertInDatabase:Z

    .line 50
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
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 81
    const-string v1, "&query=m&idtype=a&contactid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, "&psize=b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public getContactAttributes()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mContactAttributes:Ljava/lang/Integer;

    return-object v0
.end method

.method public getProfile()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mProfile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

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
    .registers 8
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;

    move-result-object v0

    .line 61
    .local v0, response:Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->onStartResultProcessing()V

    .line 63
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 64
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getProfile()Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mProfile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    .line 65
    iget-boolean v1, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mInsertInDatabase:Z

    if-eqz v1, :cond_22

    .line 66
    iget-object v1, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mPersonId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mProfile:Lcom/google/wireless/contacts/proto/Profile$MobileProfile;

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertProfile(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/contacts/proto/Profile$MobileProfile;)V

    .line 69
    :cond_22
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->hasContact()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 70
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileProfileResponse;->getContact()Lcom/google/wireless/contacts/proto/Contact$MobileContact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/contacts/proto/Contact$MobileContact;->getAttributes()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/api/GetProfileDataOperation;->mContactAttributes:Ljava/lang/Integer;

    .line 72
    :cond_36
    return-void
.end method
