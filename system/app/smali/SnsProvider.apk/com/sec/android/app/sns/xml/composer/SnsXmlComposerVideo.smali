.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerVideo.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/16 v3, 0xfa1

    .line 42
    if-nez p1, :cond_c

    .line 43
    const-string v4, "SNS_COMPOSER"

    const-string v5, "SnsRequest Should not be null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_b
    return v3

    .line 47
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v0

    .line 49
    .local v0, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->prepareCompose()V

    .line 52
    const/16 v4, 0x23

    if-eq v4, v0, :cond_3c

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 55
    :cond_3c
    packed-switch v0, :pswitch_data_e0

    .line 107
    const-string v4, "SNS_COMPOSER"

    const-string v5, "RequestType is NOT SUPPORTED!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_47
    move-object v1, p1

    .line 57
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;

    .line 60
    .local v1, reqVideoUpload:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;
    const-string v3, "Request"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeStartTag(Ljava/lang/String;)V

    .line 61
    const-string v3, "Method"

    const-string v4, "upload"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "Timeout"

    const-string v4, "3000"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "SessionKey"

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p3, :cond_71

    .line 67
    const-string v3, "CryptKey"

    iget-object v4, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v5, "upload"

    invoke-virtual {p0, v4, v5, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeCloseTag()V

    .line 73
    const-string v3, "Video"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeStartTag(Ljava/lang/String;)V

    .line 74
    const-string v3, "Title"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeCloseTag()V

    .line 78
    const-string v3, "Category"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeStartTag(Ljava/lang/String;)V

    .line 79
    const-string v3, "OwnerID"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;->getCategoryOwnerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeEndTag()V

    .line 88
    const-string v3, "File"

    const-string v4, "Name"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v3, "Video"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeEndTag(Ljava/lang/String;)V

    .line 95
    const-string v3, "Request"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerVideo;->composeEndTag(Ljava/lang/String;)V

    .line 110
    .end local v1           #reqVideoUpload:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUpload;
    :goto_ab
    const/4 v3, 0x0

    goto/16 :goto_b

    :pswitch_ae
    move-object v2, p1

    .line 100
    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;

    .line 101
    .local v2, reqVideoUploadBody:Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getResourceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 102
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestVideoUploadBody;->getParcelFileDesc()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mBody:Ljava/lang/Object;

    goto :goto_ab

    .line 55
    nop

    :pswitch_data_e0
    .packed-switch 0x22
        :pswitch_47
        :pswitch_ae
    .end packed-switch
.end method
