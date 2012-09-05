.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerNotification.java"


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
    .registers 16
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/16 v7, 0xfa1

    const/4 v11, 0x1

    .line 42
    if-nez p1, :cond_d

    .line 43
    const-string v8, "SNS_COMPOSER"

    const-string v9, "SnsRequest Should not be null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_c
    return v7

    .line 47
    :cond_d
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v5

    .line 49
    .local v5, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->prepareCompose()V

    .line 52
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/notification"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 54
    packed-switch v5, :pswitch_data_11a

    .line 132
    const-string v8, "SNS_COMPOSER"

    const-string v9, "RequestType is NOT SUPPORTED!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :pswitch_44
    move-object v3, p1

    .line 59
    check-cast v3, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;

    .line 62
    .local v3, reqNotificationPost:Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeStartTag(Ljava/lang/String;)V

    .line 63
    const-string v7, "Method"

    const-string v8, "post"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v7, "Timeout"

    const-string v8, "3000"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v7, "SessionKey"

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz p3, :cond_6e

    .line 68
    const-string v7, "CryptKey"

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v9, "post"

    invoke-virtual {p0, v8, v9, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_6e
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeCloseTag()V

    .line 75
    const-string v7, "NoDelay"

    const-string v8, "Value"

    const-string v9, "true"

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v7, "NotificationID"

    const-string v8, "Value"

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getID()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;->getSpTypeList()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_8b
    if-ge v1, v2, :cond_a7

    aget v6, v0, v1

    .line 84
    .local v6, spType:I
    const-string v7, "Notification"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeStartTag(Ljava/lang/String;)V

    .line 85
    const-string v7, "SP"

    sget-object v8, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v8, v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v7, "Name"

    const-string v8, "all"

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    .line 91
    .end local v6           #spType:I
    :cond_a7
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeEndTag(Ljava/lang/String;)V

    .line 135
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #reqNotificationPost:Lcom/sec/android/app/sns/request/data/SnsRequestNotificationPost;
    :goto_ac
    const/4 v7, 0x0

    goto/16 :goto_c

    :pswitch_af
    move-object v4, p1

    .line 97
    check-cast v4, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;

    .line 100
    .local v4, reqNotificationRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeStartTag(Ljava/lang/String;)V

    .line 101
    const-string v7, "Method"

    const-string v8, "retrieve"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "Timeout"

    const-string v8, "3000"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v7, "SessionKey"

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    if-eqz p3, :cond_d9

    .line 106
    const-string v7, "CryptKey"

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v9, "retrieve"

    invoke-virtual {p0, v8, v9, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_d9
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeCloseTag()V

    .line 113
    const-string v7, "Notification"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeStartTag(Ljava/lang/String;)V

    .line 114
    const-string v7, "Name"

    const-string v8, "notice"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v7, "MarkRead"

    const-string v8, "true"

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 118
    const-string v7, "Response"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeStartTag(Ljava/lang/String;)V

    .line 119
    const-string v7, "StartOffset"

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;->getStartOffset()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;I)V

    .line 121
    const-string v7, "StartContext"

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v7, "MaxCount"

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestNotificationRetrieve;->getMaxCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 127
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNotification;->composeEndTag(Ljava/lang/String;)V

    goto :goto_ac

    .line 54
    nop

    :pswitch_data_11a
    .packed-switch 0x18
        :pswitch_44
        :pswitch_af
    .end packed-switch
.end method
