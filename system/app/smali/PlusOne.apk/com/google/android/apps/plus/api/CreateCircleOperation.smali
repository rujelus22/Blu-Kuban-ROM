.class public Lcom/google/android/apps/plus/api/CreateCircleOperation;
.super Lcom/google/android/apps/plus/api/ContactsOperation;
.source "CreateCircleOperation.java"


# instance fields
.field private final mCircleName:Ljava/lang/String;

.field private final mJustFollowing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;ZLandroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "circleName"
    .parameter "justFollowing"
    .parameter "intent"
    .parameter "listener"

    .prologue
    .line 42
    const-string v2, "POST"

    invoke-static {}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->createContactsActionRequestUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/api/ContactsOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/content/EsAccount;Ljava/io/OutputStream;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V

    .line 44
    iput-object p3, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mCircleName:Ljava/lang/String;

    .line 45
    iput-boolean p4, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mJustFollowing:Z

    .line 46
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
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->appendIntegrationParameters(Ljava/lang/StringBuilder;)V

    .line 55
    const-string v1, "&a=cc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "&ct=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "&cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mCircleName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget-boolean v1, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mJustFollowing:Z

    if-eqz v1, :cond_2a

    .line 59
    const-string v1, "&cfs=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_2a
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
    .registers 10
    .parameter "inputStream"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p1}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;

    move-result-object v6

    .line 71
    .local v6, response:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;
    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    if-eq v0, v1, :cond_29

    .line 72
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not perform create new circle request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getResponseCode()Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse$ResponseCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_29
    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->onStartResultProcessing()V

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/api/CreateCircleOperation;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mCircleName:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/wireless/contacts/proto/Circles$CreateCircleResponse;->getType()Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/contacts/proto/Circles$MobileCircle$Type;->getNumber()I

    move-result v4

    iget-boolean v5, p0, Lcom/google/android/apps/plus/api/CreateCircleOperation;->mJustFollowing:Z

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsPeopleData;->insertNewCircle(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 80
    return-void
.end method
