.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerServiceProvider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 29
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

    .line 41
    if-nez p1, :cond_c

    .line 42
    const-string v4, "SNS_COMPOSER"

    const-string v5, "SnsRequest Should not be null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :goto_b
    return v3

    .line 46
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    .line 47
    .local v1, reqType:I
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    .line 49
    .local v2, spType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->prepareCompose()V

    .line 52
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

    const-string v5, "/serviceprovider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 54
    packed-switch v1, :pswitch_data_de

    .line 97
    const-string v4, "SNS_COMPOSER"

    const-string v5, "RequestType is NOT SUPPORTED!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 56
    :pswitch_47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/deeplink"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;

    .line 61
    .local v0, reqServiceProviderDeepLinkGet:Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;
    const-string v3, "Request"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->composeStartTag(Ljava/lang/String;)V

    .line 62
    const-string v3, "Method"

    const-string v4, "get"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, "Timeout"

    const-string v4, "3000"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "SessionKey"

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p3, :cond_88

    .line 67
    const-string v3, "CryptKey"

    iget-object v4, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v5, "get"

    invoke-virtual {p0, v4, v5, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_88
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->composeCloseTag()V

    .line 74
    const-string v3, "Link"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->composeStartTag(Ljava/lang/String;)V

    .line 75
    const-string v3, "URL"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getDeeplinkUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v3, "Type"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getLinkType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "PeopleID"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getPeopleID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v3, "TargetID"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getTargetID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v3, "TargetSubID"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getTargetSubID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v3, "TargetCommentID"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestServiceProviderDeepLinkGet;->getTargetCommentID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v3, 0x1

    if-eq v2, v3, :cond_cc

    const/4 v3, 0x2

    if-ne v2, v3, :cond_d3

    .line 88
    :cond_cc
    const-string v3, "Version"

    const-string v4, "2"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_d3
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->composeEndTag()V

    .line 92
    const-string v3, "Request"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerServiceProvider;->composeEndTag(Ljava/lang/String;)V

    .line 100
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 54
    :pswitch_data_de
    .packed-switch 0x27
        :pswitch_47
    .end packed-switch
.end method
