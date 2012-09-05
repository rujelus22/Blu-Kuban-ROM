.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerFriend.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 34
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

    .line 46
    if-nez p1, :cond_d

    .line 47
    const-string v8, "SNS_COMPOSER"

    const-string v9, "SnsRequest Should not be null!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_c
    return v7

    .line 51
    :cond_d
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v6

    .line 53
    .local v6, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->prepareCompose()V

    .line 56
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

    const-string v9, "/friend"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 58
    const/16 v8, 0xb

    if-ne v6, v8, :cond_7f

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestFriendDelete;

    .line 62
    .local v0, reqFriendDelete:Lcom/sec/android/app/sns/request/data/SnsRequestFriendDelete;
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 63
    const-string v7, "Method"

    const-string v8, "delete"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v7, "Timeout"

    const-string v8, "3000"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v7, "SessionKey"

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p3, :cond_67

    .line 67
    const-string v7, "CryptKey"

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v9, "delete"

    invoke-virtual {p0, v8, v9, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_67
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCloseTag()V

    .line 74
    const-string v7, "People"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 75
    const-string v7, "ID"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendDelete;->getTargetID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 78
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag(Ljava/lang/String;)V

    .line 282
    .end local v0           #reqFriendDelete:Lcom/sec/android/app/sns/request/data/SnsRequestFriendDelete;
    :goto_7d
    const/4 v7, 0x0

    goto :goto_c

    .line 79
    :cond_7f
    const/16 v8, 0xd

    if-ne v6, v8, :cond_106

    .line 81
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/grouping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v1, p1

    .line 83
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;

    .line 86
    .local v1, reqFriendGroupingGet:Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 87
    const-string v7, "Method"

    const-string v8, "get"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v7, "Timeout"

    const-string v8, "3000"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v7, "SessionKey"

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    if-eqz p3, :cond_c4

    .line 91
    const-string v7, "CryptKey"

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v9, "get"

    invoke-virtual {p0, v8, v9, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_c4
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCloseTag()V

    .line 98
    const-string v7, "People"

    const-string v8, "ID"

    const-string v9, "owner"

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v7, "Grouping"

    const-string v8, "Relation"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->getRelation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v7, "Response"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 107
    const-string v7, "StartOffset"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->getStartOffset()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;I)V

    .line 109
    const-string v7, "StartContext"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->getStartContext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v7, "MaxCount"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;->getMaxCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 116
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 117
    .end local v1           #reqFriendGroupingGet:Lcom/sec/android/app/sns/request/data/SnsRequestFriendGroupingGet;
    :cond_106
    const/16 v8, 0xe

    if-ne v6, v8, :cond_1b7

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v2, p1

    .line 121
    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;

    .line 124
    .local v2, reqFriendListRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 125
    const-string v7, "Method"

    const-string v8, "retrieve"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v7, "Timeout"

    const-string v8, "3000"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v7, "SessionKey"

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz p3, :cond_14b

    .line 129
    const-string v7, "CryptKey"

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v9, "retrieve"

    invoke-virtual {p0, v8, v9, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_14b
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCloseTag()V

    .line 136
    const-string v7, "People"

    const-string v8, "ID"

    const-string v9, "owner"

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v7, "Response"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 141
    const-string v7, "StartOffset"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getStartOffset()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;I)V

    .line 143
    const-string v7, "StartContext"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v7, "MaxCount"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getMaxCount()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;I)V

    .line 146
    const-string v7, "IncludeStatus"

    const-string v8, "true"

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 151
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getFullResponseTime()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_18a

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getUpdatedResponseTime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1b0

    .line 153
    :cond_18a
    const-string v7, "LastResponse"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getFullResponseTime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19e

    .line 156
    const-string v7, "FullResponseTime"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getFullResponseTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_19e
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getUpdatedResponseTime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1ad

    .line 159
    const-string v7, "UpdatedResponseTime"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;->getUpdatedResponseTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_1ad
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag()V

    .line 166
    :cond_1b0
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 167
    .end local v2           #reqFriendListRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieve;
    :cond_1b7
    const/16 v8, 0xc

    if-ne v6, v8, :cond_281

    .line 169
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v3, p1

    .line 171
    check-cast v3, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;

    .line 174
    .local v3, reqFriendListRetrieveEx:Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 175
    const-string v7, "Method"

    const-string v8, "retrieve"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v7, "Timeout"

    const-string v8, "3000"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v7, "SessionKey"

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    if-eqz p3, :cond_1fc

    .line 179
    const-string v7, "CryptKey"

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v9, "retrieve"

    invoke-virtual {p0, v8, v9, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_1fc
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCloseTag()V

    .line 186
    const-string v7, "People"

    const-string v8, "ID"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getPeopleID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getRelationType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_221

    .line 191
    const-string v7, "RelationType"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 192
    const-string v7, "Value"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getRelationType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag()V

    .line 198
    :cond_221
    const-string v7, "Response"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 199
    const-string v7, "StartOffset"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getStartOffset()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;I)V

    .line 201
    const-string v7, "StartContext"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getStartContext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v7, "MaxCount"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getMaxCount()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;I)V

    .line 204
    const-string v7, "IncludeStatus"

    const-string v8, "true"

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 209
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getFullResponseTime()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_254

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getUpdatedResponseTime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_27a

    .line 211
    :cond_254
    const-string v7, "LastResponse"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getFullResponseTime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_268

    .line 214
    const-string v7, "FullResponseTime"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getFullResponseTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_268
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getUpdatedResponseTime()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_277

    .line 217
    const-string v7, "UpdatedResponseTime"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;->getUpdatedResponseTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_277
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag()V

    .line 224
    :cond_27a
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 225
    .end local v3           #reqFriendListRetrieveEx:Lcom/sec/android/app/sns/request/data/SnsRequestFriendListRetrieveEx;
    :cond_281
    const/16 v8, 0xf

    if-ne v6, v8, :cond_2de

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/request"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v4, p1

    .line 229
    check-cast v4, Lcom/sec/android/app/sns/request/data/SnsRequestFriendRequestPost;

    .line 232
    .local v4, reqFriendRequestPost:Lcom/sec/android/app/sns/request/data/SnsRequestFriendRequestPost;
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 233
    const-string v7, "Method"

    const-string v8, "post"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v7, "Timeout"

    const-string v8, "3000"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v7, "SessionKey"

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    if-eqz p3, :cond_2c6

    .line 237
    const-string v7, "CryptKey"

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v9, "post"

    invoke-virtual {p0, v8, v9, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2c6
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCloseTag()V

    .line 244
    const-string v7, "People"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 245
    const-string v7, "ID"

    invoke-virtual {v4}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendRequestPost;->getTargetID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 248
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 249
    .end local v4           #reqFriendRequestPost:Lcom/sec/android/app/sns/request/data/SnsRequestFriendRequestPost;
    :cond_2de
    const/16 v8, 0x10

    if-ne v6, v8, :cond_348

    move-object v5, p1

    .line 250
    check-cast v5, Lcom/sec/android/app/sns/request/data/SnsRequestFriendSearch;

    .line 253
    .local v5, reqFriendSearch:Lcom/sec/android/app/sns/request/data/SnsRequestFriendSearch;
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 254
    const-string v7, "Method"

    const-string v8, "search"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v7, "Timeout"

    const-string v8, "3000"

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v7, "SessionKey"

    invoke-virtual {p0, v7, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-eqz p3, :cond_30c

    .line 258
    const-string v7, "CryptKey"

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v9, "search"

    invoke-virtual {p0, v8, v9, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_30c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeCloseTag()V

    .line 265
    const-string v7, "Name"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 266
    const-string v7, "Value"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendSearch;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    const-string v7, "Response"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeStartTag(Ljava/lang/String;)V

    .line 270
    const-string v7, "StartOffset"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendSearch;->getStartOffset()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;I)V

    .line 271
    const-string v7, "StartContext"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendSearch;->getStartContext()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v7, "MaxCount"

    invoke-virtual {v5}, Lcom/sec/android/app/sns/request/data/SnsRequestFriendSearch;->getMaxCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p0, v7, v8, v11}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 277
    const-string v7, "Request"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerFriend;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_7d

    .line 279
    .end local v5           #reqFriendSearch:Lcom/sec/android/app/sns/request/data/SnsRequestFriendSearch;
    :cond_348
    const-string v8, "SNS_COMPOSER"

    const-string v9, "RequestType is NOT SUPPORTED!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method
