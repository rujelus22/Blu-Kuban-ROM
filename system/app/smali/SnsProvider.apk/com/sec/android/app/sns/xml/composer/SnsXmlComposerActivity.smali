.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerActivity.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 19
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    .line 44
    if-nez p1, :cond_c

    .line 45
    const-string v12, "SNS_COMPOSER"

    const-string v13, "SnsRequest Should not be null!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/16 v12, 0xfa1

    .line 203
    :goto_b
    return v12

    .line 49
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v11

    .line 51
    .local v11, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->prepareCompose()V

    .line 54
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v14

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/activity"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 56
    const/4 v12, 0x4

    if-ne v11, v12, :cond_94

    move-object/from16 v8, p1

    .line 57
    check-cast v8, Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;

    .line 60
    .local v8, reqActivityForward:Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;
    const-string v12, "Request"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 61
    const-string v12, "Method"

    const-string v13, "forward"

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v12, "Timeout"

    const-string v13, "3000"

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v12, "SessionKey"

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz p3, :cond_6c

    .line 65
    const-string v12, "CryptKey"

    iget-object v13, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v14, "forward"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v13, v14, v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_6c
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCloseTag()V

    .line 72
    const-string v12, "Activity"

    const-string v13, "ID"

    invoke-virtual {v8}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;->getActivityID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v12, "Target"

    const-string v13, "ID"

    const-string v14, "all"

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v12, "Forward"

    const-string v13, "Type"

    const-string v14, "retweet"

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v12, "Request"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeEndTag(Ljava/lang/String;)V

    .line 203
    .end local v8           #reqActivityForward:Lcom/sec/android/app/sns/request/data/SnsRequestActivityForward;
    :goto_91
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 86
    :cond_94
    const/4 v12, 0x5

    if-ne v11, v12, :cond_191

    move-object/from16 v9, p1

    .line 87
    check-cast v9, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;

    .line 90
    .local v9, reqActivityRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;
    const-string v12, "Request"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 91
    const-string v12, "Method"

    const-string v13, "retrieve"

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v12, "Timeout"

    const-string v13, "3000"

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v12, "SessionKey"

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-eqz p3, :cond_c8

    .line 95
    const-string v12, "CryptKey"

    iget-object v13, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v14, "retrieve"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v13, v14, v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_c8
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCloseTag()V

    .line 101
    const/4 v4, 0x0

    .line 102
    .local v4, bCheckAccount:Z
    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getActorListKeySetToArray()[Ljava/lang/Object;

    move-result-object v2

    .line 105
    .local v2, actorKeySetArray:[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_d1
    array-length v12, v2

    if-ge v5, v12, :cond_10a

    .line 106
    aget-object v12, v2, v5

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 108
    .local v7, key:I
    invoke-virtual {v9, v7}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getActorList(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 109
    .local v3, actorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_e3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_106

    .line 110
    const-string v12, "People"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 111
    const-string v13, "ID"

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {p0, v13, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v12, "SP"

    sget-object v13, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v13, v13, v7

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 109
    add-int/lit8 v6, v6, 0x1

    goto :goto_e3

    .line 114
    :cond_106
    const/4 v4, 0x1

    .line 105
    add-int/lit8 v5, v5, 0x1

    goto :goto_d1

    .line 117
    .end local v3           #actorList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #j:I
    .end local v7           #key:I
    :cond_10a
    if-nez v4, :cond_117

    .line 118
    const-string v12, "SNS_COMPOSER"

    const-string v13, "Available account is none!!! "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/16 v12, 0xfa1

    goto/16 :goto_b

    .line 123
    :cond_117
    const-string v12, "FullText"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 124
    const-string v12, "Value"

    const-string v13, "full"

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 127
    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getLatestActivityTime()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_165

    .line 128
    const-string v12, "TimeLimit"

    const-string v13, "CheckTime"

    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getLatestActivityTime()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_139
    :goto_139
    const-string v12, "Response"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 143
    const-string v12, "StartOffset"

    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getStartOffset()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;I)V

    .line 145
    const-string v12, "StartContext"

    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v12, "MaxCount"

    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getMaxCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 151
    const-string v12, "Request"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 131
    :cond_165
    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getTimeLimitIntervalEndDay()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_17b

    .line 132
    const-string v12, "TimeLimit"

    const-string v13, "IntervalEndDay"

    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getTimeLimitIntervalEndDay()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_139

    .line 135
    :cond_17b
    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getTimeLimitEndTime()Ljava/lang/Long;

    move-result-object v12

    if-eqz v12, :cond_139

    .line 136
    const-string v12, "TimeLimit"

    const-string v13, "EndTime"

    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;->getTimeLimitEndTime()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_139

    .line 153
    .end local v2           #actorKeySetArray:[Ljava/lang/Object;
    .end local v4           #bCheckAccount:Z
    .end local v5           #i:I
    .end local v9           #reqActivityRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestActivityRetrieve;
    :cond_191
    const/4 v12, 0x6

    if-ne v11, v12, :cond_23f

    .line 154
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/statuslist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v10, p1

    .line 156
    check-cast v10, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;

    .line 159
    .local v10, reqActivityStatuslistGet:Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;
    const-string v12, "Request"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 160
    const-string v12, "Method"

    const-string v13, "get"

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v12, "Timeout"

    const-string v13, "3000"

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v12, "SessionKey"

    move-object/from16 v0, p2

    invoke-virtual {p0, v12, v0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-eqz p3, :cond_1dc

    .line 164
    const-string v12, "CryptKey"

    iget-object v13, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v14, "get"

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v13, v14, v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_1dc
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeCloseTag()V

    .line 171
    const-string v12, "People"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 172
    const-string v12, "ID"

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getPeopleID()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v12, "GroupingID"

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getGroupID()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    const-string v12, "Status"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 178
    const-string v12, "Type"

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getStatusType()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 182
    const-string v12, "FullText"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 183
    const-string v12, "Value"

    const-string v13, "full"

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 186
    const-string v12, "Response"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeStartTag(Ljava/lang/String;)V

    .line 187
    const-string v12, "StartOffset"

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getStartOffset()I

    move-result v13

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;I)V

    .line 189
    const-string v12, "StartContext"

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getStartContext()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v12, "MaxCount"

    invoke-virtual {v10}, Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;->getMaxCount()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v13, v14}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 197
    const-string v12, "Request"

    invoke-virtual {p0, v12}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerActivity;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_91

    .line 199
    .end local v10           #reqActivityStatuslistGet:Lcom/sec/android/app/sns/request/data/SnsRequestActivityStatuslistGet;
    :cond_23f
    const-string v12, "SNS_COMPOSER"

    const-string v13, "RequestType is NOT SUPPORTED!"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v12, 0xfa1

    goto/16 :goto_b
.end method
