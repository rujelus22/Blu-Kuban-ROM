.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerSnsGateway.java"


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

    .line 86
    :goto_b
    return v2

    .line 46
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    .line 48
    .local v1, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->prepareCompose()V

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://snsgw.samsungmobile.com:80/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/snsgateway/host"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 56
    packed-switch v1, :pswitch_data_86

    .line 83
    const-string v3, "SNS_COMPOSER"

    const-string v4, "RequestType is NOT SUPPORTED!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_41
    move-object v0, p1

    .line 59
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestSnsGatewayHostGet;

    .line 62
    .local v0, reqHostGet:Lcom/sec/android/app/sns/request/data/SnsRequestSnsGatewayHostGet;
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->composeStartTag(Ljava/lang/String;)V

    .line 63
    const-string v2, "Method"

    const-string v3, "get"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "Version"

    const-string v3, "2"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->composeCloseTag()V

    .line 68
    const-string v2, "DeviceInfo"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->composeStartTag(Ljava/lang/String;)V

    .line 69
    const-string v2, "ModelCode"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSnsGatewayHostGet;->getModelCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSnsGatewayHostGet;->getMCC()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 71
    const-string v2, "MCC"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestSnsGatewayHostGet;->getMCC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_77
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->composeCloseTag()V

    .line 75
    const-string v2, "DeviceInfo"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->composeEndTag(Ljava/lang/String;)V

    .line 78
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSnsGateway;->composeEndTag(Ljava/lang/String;)V

    .line 86
    const/4 v2, 0x0

    goto :goto_b

    .line 56
    :pswitch_data_86
    .packed-switch 0x28
        :pswitch_41
    .end packed-switch
.end method
