.class public Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileSet;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponsePeopleProfileSet.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 47
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

    .line 49
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 29
    .parameter "context"
    .parameter "req"

    .prologue
    .line 60
    const/16 v21, 0x0

    .line 61
    .local v21, uri:Landroid/net/Uri;
    const/16 v13, 0x1771

    .line 62
    .local v13, internalCode:I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 64
    .local v10, errorMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileSet;->getRespType()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_174

    move-object/from16 v16, p2

    .line 65
    check-cast v16, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;

    .line 67
    .local v16, peopleRequest:Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->getSpTypeList()[I

    move-result-object v6

    .local v6, arr$:[I
    array-length v14, v6

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1f
    if-ge v11, v14, :cond_3b

    aget v18, v6, v11

    .line 68
    .local v18, sp:I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v12, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v22, "null"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    add-int/lit8 v11, v11, 0x1

    goto :goto_1f

    .line 73
    .end local v12           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18           #sp:I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 74
    .local v15, people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    iget-object v8, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mErrSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;

    .line 76
    .local v8, errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    const/4 v4, 0x0

    .line 78
    .local v4, accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    :goto_44
    if-eqz v15, :cond_16c

    iget-object v0, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_16c

    .line 79
    new-instance v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    invoke-direct {v5}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;-><init>()V

    .line 80
    .local v5, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileSet;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v4

    .line 82
    iget-object v0, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mSP:Ljava/lang/String;

    .line 83
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->getStatus()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mContent:Ljava/lang/String;

    .line 84
    new-instance v22, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    invoke-direct/range {v22 .. v22}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;-><init>()V

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    .line 85
    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    move-object/from16 v22, v0

    new-instance v23, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-direct/range {v23 .. v23}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 88
    .local v3, ActTime:Ljava/lang/Long;
    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mSP:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v17

    .line 89
    .local v17, respSpType:I
    if-ltz v17, :cond_e5

    const/16 v22, 0xf

    move/from16 v0, v17

    move/from16 v1, v22

    if-gt v0, v1, :cond_e5

    .line 90
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v20

    .line 91
    .local v20, targetAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v20, :cond_d5

    .line 92
    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mID:Ljava/lang/String;

    .line 93
    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mDisplayName:Ljava/lang/String;

    .line 94
    iget-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 95
    iput-object v3, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActTime:Ljava/lang/Long;

    .line 99
    :cond_d5
    const/16 v22, 0x2

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_e5

    .line 100
    iget-object v0, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mModifyTime:Ljava/lang/Long;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActTime:Ljava/lang/Long;

    .line 104
    .end local v20           #targetAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_e5
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentsCount:Ljava/lang/Integer;

    .line 105
    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentable:Ljava/lang/Boolean;

    .line 107
    new-instance v7, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 108
    .local v7, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 110
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 111
    .local v19, status:Landroid/content/ContentValues;
    const-string v23, "status"

    move-object/from16 v22, p2

    check-cast v22, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;->getStatus()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v22, "comments_count"

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v22, "create_time"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 115
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v22

    if-nez v22, :cond_144

    .line 116
    const-string v22, "SnsResponse"

    const-string v23, "SnsResponsePeopleProfileSet : disposeData(): Fail write activity "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_144
    iget-object v0, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updatePeopleStatus(ILandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v21

    .line 119
    invoke-virtual {v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 121
    iget-object v0, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mSP:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/app/sns/util/SnsUtil;->getSpTypeBySpName(Ljava/lang/String;)I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v15, v15, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;

    .line 124
    goto/16 :goto_44

    .line 126
    .end local v3           #ActTime:Ljava/lang/Long;
    .end local v5           #activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    .end local v7           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v17           #respSpType:I
    .end local v19           #status:Landroid/content/ContentValues;
    :cond_16c
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_17e

    .line 127
    const/4 v13, 0x0

    .line 128
    const/4 v10, 0x0

    .line 145
    .end local v4           #accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .end local v6           #arr$:[I
    .end local v8           #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v15           #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    .end local v16           #peopleRequest:Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;
    :cond_174
    :goto_174
    new-instance v22, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13, v10}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;ILjava/util/Map;)V

    return-object v22

    .line 130
    .restart local v4       #accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .restart local v6       #arr$:[I
    .restart local v8       #errSp:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;
    .restart local v11       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #people:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataPeople;
    .restart local v16       #peopleRequest:Lcom/sec/android/app/sns/request/data/SnsRequestPeopleProfileSet;
    :cond_17e
    if-eqz v8, :cond_1ba

    .line 131
    invoke-static {v8}, Lcom/sec/android/app/sns/response/data/SnsResponsePeopleProfileSet;->getErrSpList(Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataErrSp;)Ljava/util/ArrayList;

    move-result-object v9

    .line 133
    .local v9, errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_188
    :goto_188
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1ba

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 134
    .restart local v18       #sp:I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_188

    .line 135
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .restart local v12       #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v22, "null"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_188

    .line 141
    .end local v9           #errSpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18           #sp:I
    :cond_1ba
    const/16 v13, 0x1772

    goto :goto_174
.end method
