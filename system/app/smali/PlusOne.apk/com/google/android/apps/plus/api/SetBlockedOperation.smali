.class public Lcom/google/android/apps/plus/api/SetBlockedOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "SetBlockedOperation.java"


# instance fields
.field private final mBlock:Z

.field private final mPersonId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "personId"
    .parameter "block"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 41
    const-string v2, "POST"

    invoke-static {}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->createContactsActionRequestUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 43
    iput-object p3, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mPersonId:Ljava/lang/String;

    .line 44
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mBlock:Z

    .line 45
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
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 54
    const-string v1, "&idtype=a&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mPersonId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-boolean v1, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mBlock:Z

    if-eqz v1, :cond_22

    .line 56
    const-string v1, "&a=b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_1c
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1

    .line 58
    :cond_22
    const-string v1, "&a=ub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c
.end method

.method public bridge synthetic onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 24
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
    .line 69
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    .line 71
    .local v0, response:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->onStartResultProcessing()V

    .line 73
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    if-ne v1, v2, :cond_1d

    .line 74
    iget-object v1, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/SetBlockedOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mPersonId:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/apps/plus/api/SetBlockedOperation;->mBlock:Z

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/apps/plus/content/EsPeopleData;->setPersonBlocked(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Z)V

    .line 79
    return-void

    .line 76
    :cond_1d
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not perform block/unblock request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
