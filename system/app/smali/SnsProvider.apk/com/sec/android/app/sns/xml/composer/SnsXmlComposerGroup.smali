.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerGroup.java"


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
    .registers 10
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/16 v2, 0xfa1

    .line 42
    if-nez p1, :cond_c

    .line 43
    const-string v3, "SNS_COMPOSER"

    const-string v4, "SnsRequest Should not be null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_b
    return v2

    .line 47
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    .line 49
    .local v1, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->prepareCompose()V

    .line 52
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

    const-string v4, "/group"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 54
    packed-switch v1, :pswitch_data_a6

    .line 101
    const-string v3, "SNS_COMPOSER"

    const-string v4, "RequestType is NOT SUPPORTED!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_43
    move-object v0, p1

    .line 58
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;

    .line 61
    .local v0, reqGroupRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->composeStartTag(Ljava/lang/String;)V

    .line 62
    const-string v2, "Method"

    const-string v3, "retrieve"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "Timeout"

    const-string v3, "3000"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "SessionKey"

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz p3, :cond_6d

    .line 69
    const-string v2, "CryptKey"

    iget-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v4, "retrieve"

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_6d
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->composeCloseTag()V

    .line 77
    const-string v2, "People"

    const-string v3, "ID"

    const-string v4, "owner"

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v2, "Response"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->composeStartTag(Ljava/lang/String;)V

    .line 88
    const-string v2, "StartOffset"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;->getStartOffset()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->addAttribute(Ljava/lang/String;I)V

    .line 90
    const-string v2, "StartContext"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v2, "MaxCount"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestGroupRetrieve;->getMaxCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 96
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerGroup;->composeEndTag(Ljava/lang/String;)V

    .line 104
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 54
    :pswitch_data_a6
    .packed-switch 0x11
        :pswitch_43
    .end packed-switch
.end method
