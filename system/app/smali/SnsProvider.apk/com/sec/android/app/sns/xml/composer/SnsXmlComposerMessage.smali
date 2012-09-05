.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerMessage.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    .line 45
    if-nez p1, :cond_c

    .line 46
    const-string v9, "SNS_COMPOSER"

    const-string v10, "SnsRequest Should not be null!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const/16 v9, 0xfa1

    .line 296
    :goto_b
    return v9

    .line 50
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v7

    .line 52
    .local v7, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->prepareCompose()V

    .line 55
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

    const-string v10, "/message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 57
    packed-switch v7, :pswitch_data_348

    .line 293
    const-string v9, "SNS_COMPOSER"

    const-string v10, "RequestType is NOT SUPPORTED!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v9, 0xfa1

    goto :goto_b

    .line 59
    :pswitch_45
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

    const-string v10, "/message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v2, p1

    .line 61
    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;

    .line 64
    .local v2, reqMessageDelete:Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 65
    const-string v9, "Method"

    const-string v10, "delete"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v9, "Timeout"

    const-string v10, "3000"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v9, "SessionKey"

    invoke-virtual {p0, v9, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    if-eqz p3, :cond_94

    .line 69
    const-string v9, "CryptKey"

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v11, "delete"

    invoke-virtual {p0, v10, v11, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_94
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCloseTag()V

    .line 74
    const-string v9, "Folder"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 75
    const-string v9, "Value"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;->getFolderType()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    const-string v9, "Message"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 79
    const-string v9, "ID"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;->getMessageID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v9, "ThreadID"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;->getThreadID()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 82
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeEndTag(Ljava/lang/String;)V

    .line 296
    .end local v2           #reqMessageDelete:Lcom/sec/android/app/sns/request/data/SnsRequestMessageDelete;
    :goto_c3
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 87
    :pswitch_c6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/folder"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v3, p1

    .line 89
    check-cast v3, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;

    .line 92
    .local v3, reqMessageFolderRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 93
    const-string v9, "Method"

    const-string v10, "retrieve"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v9, "Timeout"

    const-string v10, "3000"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v9, "SessionKey"

    invoke-virtual {p0, v9, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-eqz p3, :cond_107

    .line 99
    const-string v9, "CryptKey"

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v11, "retrieve"

    invoke-virtual {p0, v10, v11, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_107
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCloseTag()V

    .line 106
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getInternalSp()I

    move-result v8

    .line 107
    .local v8, spType:I
    const-string v9, "People"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 108
    const-string v9, "ID"

    const-string v10, "owner"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v9, "SP"

    sget-object v10, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v10, v10, v8

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    const-string v9, "Folder"

    const-string v10, "Value"

    const-string v11, "merge"

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v9, "FullText"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 117
    const-string v9, "Value"

    const-string v10, "full"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeEndTag()V

    .line 121
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getTimeLimitIntervalEndDay()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_187

    .line 122
    const-string v9, "TimeLimit"

    const-string v10, "IntervalEndDay"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getTimeLimitIntervalEndDay()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_151
    :goto_151
    const-string v9, "Response"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 133
    const-string v9, "StartOffset"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getStartOffset()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;I)V

    .line 135
    const-string v9, "StartContext"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v9, "ThreadOnly"

    const-string v10, "true"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v9, "MaxCount"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getMaxCount()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;I)V

    .line 141
    const-string v9, "MaxReceiverCount"

    const-string v10, "-1"

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 125
    :cond_187
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getTimeLimitEndTime()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_151

    .line 126
    const-string v9, "TimeLimit"

    const-string v10, "EndTime"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;->getTimeLimitEndTime()Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_151

    .end local v3           #reqMessageFolderRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestMessageFolderRetrieve;
    .end local v8           #spType:I
    :pswitch_19d
    move-object v4, p1

    .line 151
    check-cast v4, Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;

    .line 154
    .local v4, reqMessageGet:Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 155
    const-string v9, "Method"

    const-string v10, "get"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v9, "Timeout"

    const-string v10, "3000"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v9, "SessionKey"

    invoke-virtual {p0, v9, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    if-eqz p3, :cond_1c7

    .line 160
    const-string v9, "CryptKey"

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v11, "get"

    invoke-virtual {p0, v10, v11, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_1c7
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCloseTag()V

    .line 167
    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;->getThreadID()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1df

    .line 168
    const-string v9, "Thread"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 169
    const-string v9, "ID"

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;->getThreadID()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    :cond_1df
    const-string v9, "Message"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 175
    const-string v9, "ID"

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;->getMessageID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v9, "Folder"

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;->getMessageFolder()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 180
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_c3

    .end local v4           #reqMessageGet:Lcom/sec/android/app/sns/request/data/SnsRequestMessageGet;
    :pswitch_1fe
    move-object v5, p1

    .line 185
    check-cast v5, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    .line 188
    .local v5, reqMessagePost:Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 189
    const-string v9, "Method"

    const-string v10, "post"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v9, "Timeout"

    const-string v10, "3000"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v9, "SessionKey"

    invoke-virtual {p0, v9, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    if-eqz p3, :cond_228

    .line 194
    const-string v9, "CryptKey"

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v11, "post"

    invoke-virtual {p0, v10, v11, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_228
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCloseTag()V

    .line 201
    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReceiverID()[Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, receiverIDs:[Ljava/lang/String;
    if-eqz v1, :cond_241

    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_232
    array-length v9, v1

    if-ge v0, v9, :cond_241

    .line 204
    const-string v9, "Receiver"

    const-string v10, "ID"

    aget-object v11, v1, v0

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_232

    .line 210
    .end local v0           #i:I
    :cond_241
    const-string v9, "Title"

    const-string v10, "Value"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v9, "Content"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getPostType()Ljava/lang/String;

    move-result-object v9

    const-string v10, "reply"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_298

    .line 218
    const-string v9, "Reply"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getSpType()I

    move-result v9

    if-eqz v9, :cond_27a

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getSpType()I

    move-result v9

    const/4 v10, 0x6

    if-eq v9, v10, :cond_27a

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getSpType()I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_283

    .line 222
    :cond_27a
    const-string v9, "ThreadID"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReplyThreadID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :cond_283
    const-string v9, "MessageID"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReplyMessageID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v9, "Folder"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getReplyFolder()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeEndTag()V

    .line 233
    :cond_298
    const-string v9, "SendType"

    const-string v10, "Value"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getPostType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 242
    .end local v1           #receiverIDs:[Ljava/lang/String;
    .end local v5           #reqMessagePost:Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;
    :pswitch_2aa
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/thread"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v6, p1

    .line 244
    check-cast v6, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;

    .line 247
    .local v6, reqMessageThreadRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 248
    const-string v9, "Method"

    const-string v10, "retrieve"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v9, "Timeout"

    const-string v10, "3000"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v9, "SessionKey"

    invoke-virtual {p0, v9, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-eqz p3, :cond_2eb

    .line 254
    const-string v9, "CryptKey"

    iget-object v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v11, "retrieve"

    invoke-virtual {p0, v10, v11, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2eb
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCloseTag()V

    .line 261
    const-string v9, "Folder"

    const-string v10, "Value"

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getFolder()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v9, "Thread"

    const-string v10, "ID"

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getThreadID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v9, "MarkRead"

    const-string v10, "Value"

    const-string v11, "true"

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v9, "FullText"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 274
    const-string v9, "Value"

    const-string v10, "full"

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeEndTag()V

    .line 278
    const-string v9, "Response"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeStartTag(Ljava/lang/String;)V

    .line 279
    const-string v9, "StartOffset"

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getStartOffset()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;I)V

    .line 281
    const-string v9, "StartContext"

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v9, "MaxCount"

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestMessageThreadRetrieve;->getMaxCount()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v9, v10, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 288
    const-string v9, "Request"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerMessage;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_c3

    .line 57
    :pswitch_data_348
    .packed-switch 0x12
        :pswitch_45
        :pswitch_c6
        :pswitch_19d
        :pswitch_1fe
        :pswitch_2aa
    .end packed-switch
.end method
