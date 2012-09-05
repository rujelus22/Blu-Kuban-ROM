.class public Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileGet;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponsePeopleProfileGet.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 42
    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getID()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getReqType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getInternalCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/android/app/sns/response/data/SnsResponse;->getHttpStatusCode()I

    move-result v5

    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sns/response/data/SnsResponse;-><init>(IIIIILjava/lang/Object;)V

    .line 44
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 22
    .parameter "context"
    .parameter "req"

    .prologue
    .line 55
    const/4 v14, 0x0

    .line 56
    .local v14, uri:Landroid/net/Uri;
    const/16 v10, 0x1771

    .line 58
    .local v10, internalCode:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileGet;->getRespType()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_99

    .line 59
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .local v11, people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    move-object/from16 v1, p2

    .line 61
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileGet;->getPeopleID()Ljava/lang/String;

    move-result-object v12

    .line 63
    .local v12, peopleID:Ljava/lang/String;
    if-eqz v12, :cond_99

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getPollingID()I

    move-result v1

    const/4 v6, -0x1

    if-gt v1, v6, :cond_29

    const-string v1, "owner"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 66
    :cond_29
    new-instance v8, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 67
    .local v8, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 68
    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v11}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v14

    .line 69
    const/4 v10, 0x0

    .line 70
    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 73
    :goto_3d
    if-eqz v11, :cond_92

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    .line 76
    .local v2, sp:I
    iget-object v3, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    .line 77
    .local v3, userID:Ljava/lang/String;
    iget-object v4, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mDisplayName:Ljava/lang/String;

    .line 78
    .local v4, displayName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 80
    .local v5, profilePhotoURL:Ljava/lang/String;
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    if-eqz v1, :cond_52

    .line 81
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v2

    .line 83
    :cond_52
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v1, :cond_5a

    .line 84
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 86
    :cond_5a
    const/4 v1, 0x1

    if-ne v2, v1, :cond_63

    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mName:Ljava/lang/String;

    if-eqz v1, :cond_63

    .line 87
    iget-object v4, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mName:Ljava/lang/String;

    .line 89
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileGet;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v7

    .line 91
    .local v7, account:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v7, :cond_8f

    .line 92
    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 94
    if-nez v4, :cond_7d

    .line 95
    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 97
    :cond_7d
    if-nez v5, :cond_83

    .line 98
    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v5

    .line 103
    :cond_83
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileGet;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->addAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    :cond_8f
    iget-object v11, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 108
    goto :goto_3d

    .line 111
    .end local v2           #sp:I
    .end local v3           #userID:Ljava/lang/String;
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #profilePhotoURL:Ljava/lang/String;
    .end local v7           #account:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_92
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileGet;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 150
    .end local v8           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v11           #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    .end local v12           #peopleID:Ljava/lang/String;
    :cond_99
    :goto_99
    new-instance v1, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v1, v14, v10}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v1

    .line 115
    .restart local v11       #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    .restart local v12       #peopleID:Ljava/lang/String;
    :cond_9f
    new-instance v8, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 116
    .restart local v8       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    invoke-direct {v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;-><init>()V

    .line 117
    .local v9, friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    iget-object v13, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 118
    .local v13, status:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;
    new-instance v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    invoke-direct {v1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;-><init>()V

    iput-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    .line 119
    new-instance v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-direct {v1}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;-><init>()V

    iput-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 121
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    iput-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mSP:Ljava/lang/String;

    .line 122
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mID:Ljava/lang/String;

    iput-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mID:Ljava/lang/String;

    .line 123
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mName:Ljava/lang/String;

    iput-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mFullName:Ljava/lang/String;

    .line 125
    if-eqz v13, :cond_e5

    .line 126
    iget-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    iget-object v6, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mStatus:Ljava/lang/String;

    .line 127
    iget-object v1, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    if-eqz v1, :cond_e5

    .line 128
    iget-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mStatus:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;

    iget-object v6, v13, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataStatus;->mCreateTime:Ljava/lang/Long;

    .line 132
    :cond_e5
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v1, :cond_101

    .line 133
    iget-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v6, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 134
    iget-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v6, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mMidViewURL:Ljava/lang/String;

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mMidViewURL:Ljava/lang/String;

    .line 135
    iget-object v1, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v6, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mFullViewURL:Ljava/lang/String;

    iput-object v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mFullViewURL:Ljava/lang/String;

    .line 138
    :cond_101
    const/16 v1, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->setReqType(I)V

    .line 141
    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 142
    move-object/from16 v0, p2

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v14

    .line 143
    const/4 v10, 0x0

    .line 144
    invoke-virtual {v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    goto :goto_99
.end method
