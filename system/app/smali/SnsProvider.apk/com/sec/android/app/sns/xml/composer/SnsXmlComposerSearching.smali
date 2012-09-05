.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerSearching.java"


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
    .registers 10
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/16 v2, 0xfa1

    .line 41
    if-nez p1, :cond_c

    .line 42
    const-string v3, "SNS_COMPOSER"

    const-string v4, "SnsRequest Should not be null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_b
    return v2

    .line 46
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    .line 48
    .local v1, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->prepareCompose()V

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/searching"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 53
    packed-switch v1, :pswitch_data_f6

    .line 117
    const-string v3, "SNS_COMPOSER"

    const-string v4, "RequestType is NOT SUPPORTED!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 55
    :pswitch_43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/keywords"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 60
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeStartTag(Ljava/lang/String;)V

    .line 61
    const-string v2, "Method"

    const-string v3, "retrieve"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v2, "Timeout"

    const-string v3, "3000"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "SessionKey"

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p3, :cond_81

    .line 67
    const-string v2, "CryptKey"

    iget-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v4, "retrieve"

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_81
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeCloseTag()V

    .line 74
    const-string v2, "People"

    const-string v3, "ID"

    const-string v4, "owner"

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeEndTag(Ljava/lang/String;)V

    .line 121
    :goto_92
    const/4 v2, 0x0

    goto/16 :goto_b

    :pswitch_95
    move-object v0, p1

    .line 83
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;

    .line 86
    .local v0, reqSearchingSearch:Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeStartTag(Ljava/lang/String;)V

    .line 87
    const-string v2, "Method"

    const-string v3, "search"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "Timeout"

    const-string v3, "3000"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v2, "SessionKey"

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz p3, :cond_bf

    .line 93
    const-string v2, "CryptKey"

    iget-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v4, "search"

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_bf
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeCloseTag()V

    .line 100
    const-string v2, "Keyword"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;->getKeyWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v2, "Response"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeStartTag(Ljava/lang/String;)V

    .line 104
    const-string v2, "StartOffset"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;->getStartOffset()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;I)V

    .line 106
    const-string v2, "StartContext"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;->getStartContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "MaxCount"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSearchingSearch;->getMaxCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 112
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSearching;->composeEndTag(Ljava/lang/String;)V

    goto :goto_92

    .line 53
    :pswitch_data_f6
    .packed-switch 0x25
        :pswitch_43
        :pswitch_95
    .end packed-switch
.end method
