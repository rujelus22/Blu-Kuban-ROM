.class abstract Lcom/google/android/apps/plus/api/ContactsOperation;
.super Lcom/google/android/apps/plus/network/HttpOperation;
.source "ContactsOperation.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 8
    .parameter "context"
    .parameter "method"
    .parameter "url"
    .parameter "account"
    .parameter "outputStream"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/plus/network/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 33
    return-void
.end method

.method protected static createContactsActionRequestUrl()Ljava/lang/String;
    .registers 1

    .prologue
    .line 88
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->CONTACTS_ACTION_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/api/ContactsOperation;->appendLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static createContactsRequestUrl(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Ljava/lang/String;
    .registers 3
    .parameter "syncState"

    .prologue
    .line 80
    sget-object v0, Lcom/google/android/apps/plus/util/Property;->CONTACTS_DATA_URL:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/api/ContactsOperation;->appendLocale(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isFullSync(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/api/ContactsOperation;->appendSyncParameter(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActionToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ContactsOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONTACTS_AT"

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/network/AuthData;->getActionToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setActionToken(Ljava/lang/String;)V
    .registers 4
    .parameter "value"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/api/ContactsOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONTACTS_AT"

    invoke-static {v0, v1, p1}, Lcom/google/android/apps/plus/network/AuthData;->setActionToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected appendIntegrationParameters(Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter "sb"

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x3f

    if-eq v0, v1, :cond_19

    .line 70
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    :cond_19
    const-string v0, "fmt=pb&in="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "&atc="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/api/ContactsOperation;->getActionToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    return-void
.end method

.method protected isImmediatelyRetryableError(Ljava/lang/Exception;)Z
    .registers 3
    .parameter "e"

    .prologue
    .line 37
    instance-of v0, p1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v0, :cond_e

    move-object v0, p1

    .line 38
    check-cast v0, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 45
    :cond_e
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/network/HttpOperation;->isImmediatelyRetryableError(Ljava/lang/Exception;)Z

    move-result v0

    :goto_12
    return v0

    .line 42
    :pswitch_13
    const/4 v0, 0x1

    goto :goto_12

    .line 38
    nop

    :pswitch_data_16
    .packed-switch 0x190
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public onHttpCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 4
    .parameter "cookie"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/network/HttpOperation;->onHttpCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 51
    const-string v0, "CONTACTS_AT"

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 52
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/api/ContactsOperation;->setActionToken(Ljava/lang/String;)V

    .line 54
    :cond_16
    return-void
.end method
