.class public Lcom/sec/android/app/sns/response/data/SnsResponseNotePost;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseNotePost.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 34
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

    .line 36
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 18
    .parameter "context"
    .parameter "req"

    .prologue
    .line 47
    const/4 v10, 0x0

    .line 48
    .local v10, uri:Landroid/net/Uri;
    const/16 v5, 0x1771

    .line 50
    .local v5, internalCode:I
    iget-object v6, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .line 51
    .local v6, note:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;
    new-instance v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;

    invoke-direct {v3}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;-><init>()V

    .line 53
    .local v3, activity:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;
    const/4 v2, 0x0

    .line 55
    .local v2, accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v11

    if-eqz v11, :cond_39

    .line 56
    const-string v11, "SnsResponse"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processResponse() : NOTE_POST : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mResult:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", resource ID :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_39
    :goto_39
    if-eqz v6, :cond_dd

    const-string v11, "success"

    iget-object v12, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mResult:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_dd

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseNotePost;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v2

    .line 63
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v8

    .line 65
    .local v8, respSpType:I
    sget-object v11, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v11, v11, v8

    iput-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mSP:Ljava/lang/String;

    move-object/from16 v11, p2

    .line 66
    check-cast v11, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;

    invoke-virtual {v11}, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;->getContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mContent:Ljava/lang/String;

    .line 67
    new-instance v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    invoke-direct {v11}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;-><init>()V

    iput-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    .line 68
    iget-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    new-instance v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-direct {v12}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;-><init>()V

    iput-object v12, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 69
    new-instance v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    invoke-direct {v11}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;-><init>()V

    iput-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 73
    .local v1, ActTime:Ljava/lang/Long;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    .line 74
    .local v7, reqSpType:I
    if-ltz v7, :cond_b7

    const/16 v11, 0xf

    if-gt v7, v11, :cond_b7

    .line 75
    invoke-virtual {v2, v8}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v9

    .line 76
    .local v9, targetAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v9, :cond_b7

    .line 77
    iget-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    invoke-virtual {v9}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mID:Ljava/lang/String;

    .line 78
    iget-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    invoke-virtual {v9}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mDisplayName:Ljava/lang/String;

    .line 79
    iget-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActor:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;

    iget-object v11, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActor;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-virtual {v9}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 80
    iput-object v1, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mActTime:Ljava/lang/Long;

    .line 81
    iget-object v12, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mTarget:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;

    move-object/from16 v11, p2

    check-cast v11, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;

    invoke-virtual {v11}, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;->getCategoryOwnerID()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v12, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataTarget;->mID:Ljava/lang/String;

    .line 85
    .end local v9           #targetAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_b7
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentsCount:Ljava/lang/Integer;

    .line 86
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataActivity;->mCommentable:Ljava/lang/Boolean;

    .line 88
    new-instance v4, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 89
    .local v4, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 90
    move-object/from16 v0, p2

    invoke-virtual {v4, v0, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v10

    .line 91
    const/4 v5, 0x0

    .line 92
    invoke-virtual {v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 94
    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;->mNext:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataNote;

    .line 95
    goto/16 :goto_39

    .line 97
    .end local v1           #ActTime:Ljava/lang/Long;
    .end local v4           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v7           #reqSpType:I
    .end local v8           #respSpType:I
    :cond_dd
    new-instance v11, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v11, v10, v5}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v11
.end method
