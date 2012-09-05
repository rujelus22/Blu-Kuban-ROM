.class public Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "ModifyCirclePropertiesOperation.java"


# instance fields
.field private final mCircleId:Ljava/lang/String;

.field private final mCircleName:Ljava/lang/String;

.field private final mJustFollowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "circleId"
    .parameter "circleName"
    .parameter "justFollowing"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 44
    const-string v2, "POST"

    invoke-static {}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->createContactsActionRequestUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 46
    iput-object p3, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleId:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleName:Ljava/lang/String;

    .line 48
    iput-boolean p5, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mJustFollowing:Z

    .line 49
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
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 58
    const-string v1, "&a=mc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, "&circleid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "&cfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-boolean v1, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mJustFollowing:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    new-instance v1, Lcom/google/android/apps/plus/network/StreamBuilder;

    invoke-direct {v1, v0}, Lcom/google/android/apps/plus/network/StreamBuilder;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1

    .line 61
    :cond_2b
    const/4 v1, 0x1

    goto :goto_22
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
    .registers 9
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    .line 75
    .local v0, response:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    move-result-object v1

    sget-object v2, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    if-eq v1, v2, :cond_29

    .line 76
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not perform modify circle properties request: "

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

    .line 80
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->onStartResultProcessing()V

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget-object v3, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mCircleName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/apps/plus/api/ModifyCirclePropertiesOperation;->mJustFollowing:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->modifyCircleProperties(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method
