.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerPeople.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    .line 43
    if-nez p1, :cond_c

    .line 44
    const-string v9, "SNS_COMPOSER"

    const-string v10, "SnsRequest Should not be null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/16 v9, 0xfa1

    .line 157
    .end local p1
    :goto_b
    return v9

    .line 48
    .restart local p1
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v7

    .line 50
    .local v7, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->prepareCompose()V

    .line 53
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/people"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 55
    packed-switch v7, :pswitch_data_18a

    .line 154
    const-string v9, "SNS_COMPOSER"

    const-string v10, "RequestType is NOT SUPPORTED!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v9, 0xfa1

    goto :goto_b

    .line 58
    :pswitch_45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/profile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v4, p1

    .line 60
    check-cast v4, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;

    .line 63
    .local v4, reqPeopleProfileGet:Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeStartTag(Ljava/lang/String;)V

    .line 64
    const-string v9, "Method"

    const-string v10, "get"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v9, "Timeout"

    const-string v10, "3000"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v9, "SessionKey"

    invoke-virtual {p0, v9, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz p3, :cond_86

    .line 69
    const-string v9, "CryptKey"

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v11, "get"

    invoke-virtual {p0, v10, v11, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_86
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeCloseTag()V

    .line 76
    const-string v9, "People"

    const-string v10, "ID"

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;->getPeopleID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v9, "Response"

    const-string v10, "InfoParams"

    const-string v11, "all"

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeEndTag(Ljava/lang/String;)V

    .line 157
    .end local v4           #reqPeopleProfileGet:Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;
    .end local p1
    :goto_a2
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 89
    .restart local p1
    :pswitch_a5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/profile"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v5, p1

    .line 91
    check-cast v5, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;

    .line 94
    .local v5, reqPeopleProfileSet:Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeStartTag(Ljava/lang/String;)V

    .line 95
    const-string v9, "Method"

    const-string v10, "set"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v9, "Timeout"

    const-string v10, "3000"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v9, "SessionKey"

    invoke-virtual {p0, v9, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p3, :cond_e6

    .line 100
    const-string v9, "CryptKey"

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v11, "set"

    invoke-virtual {p0, v10, v11, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_e6
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeCloseTag()V

    .line 107
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->getSpTypeList()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_f1
    if-ge v1, v2, :cond_10e

    aget v8, v0, v1

    .line 108
    .local v8, spType:I
    const-string v9, "People"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeStartTag(Ljava/lang/String;)V

    .line 109
    const-string v9, "ID"

    const-string v10, "owner"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v9, "SP"

    sget-object v10, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v10, v10, v8

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_f1

    .line 114
    .end local v8           #spType:I
    :cond_10e
    const-string v9, "Status"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeEndTag(Ljava/lang/String;)V

    goto :goto_a2

    .line 122
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #reqPeopleProfileSet:Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;
    .restart local p1
    :pswitch_11d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/status"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v6, p1

    .line 124
    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleStatusGet;

    .line 127
    .local v6, reqPeopleStatusGet:Lcom/sec/android/app/sns/request/data/SnsRequestPeopleStatusGet;
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeStartTag(Ljava/lang/String;)V

    .line 128
    const-string v9, "Method"

    const-string v10, "get"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v9, "Timeout"

    const-string v10, "3000"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v9, "SessionKey"

    invoke-virtual {p0, v9, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz p3, :cond_15e

    .line 134
    const-string v9, "CryptKey"

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v11, "get"

    invoke-virtual {p0, v10, v11, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_15e
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeCloseTag()V

    .line 140
    const/4 v8, -0x1

    .line 142
    .restart local v8       #spType:I
    const/4 v8, 0x0

    :goto_163
    const/16 v9, 0xf

    if-gt v8, v9, :cond_182

    .line 143
    invoke-virtual {v6, v8}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleStatusGet;->getPeopleID(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, peopleID:Ljava/lang/String;
    const-string v9, "People"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeStartTag(Ljava/lang/String;)V

    .line 146
    const-string v9, "ID"

    invoke-virtual {p0, v9, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v9, "SP"

    sget-object v10, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v10, v10, v8

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_163

    .line 149
    .end local v3           #peopleID:Ljava/lang/String;
    :cond_182
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPeople;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_a2

    .line 55
    nop

    :pswitch_data_18a
    .packed-switch 0x1a
        :pswitch_45
        :pswitch_a5
        :pswitch_11d
    .end packed-switch
.end method
