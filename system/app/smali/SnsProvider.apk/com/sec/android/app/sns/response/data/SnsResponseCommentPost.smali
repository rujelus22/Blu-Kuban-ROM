.class public Lcom/sec/android/app/sns/response/data/SnsResponseCommentPost;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseCommentPost.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 38
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

    .line 40
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 16
    .parameter "context"
    .parameter "req"

    .prologue
    const/4 v10, 0x1

    .line 51
    const/4 v8, 0x0

    .line 52
    .local v8, uri:Landroid/net/Uri;
    const/16 v5, 0x1771

    .line 55
    .local v5, internalCode:I
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentPost;->getRespType()I

    move-result v9

    if-ne v9, v10, :cond_89

    .line 56
    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 57
    .local v2, comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v9

    iput v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mSP:I

    .line 58
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getContent()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mContent:Ljava/lang/String;

    .line 60
    new-instance v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    invoke-direct {v9}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;-><init>()V

    iput-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    .line 61
    iget-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    new-instance v10, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-direct {v10}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;-><init>()V

    iput-object v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentPost;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    .line 64
    .local v1, accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    .line 65
    .local v6, reqSpType:I
    if-ltz v6, :cond_5c

    const/16 v9, 0xf

    if-gt v6, v9, :cond_5c

    .line 66
    invoke-virtual {v1, v6}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v7

    .line 67
    .local v7, targetAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v7, :cond_5c

    .line 68
    iget-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mID:Ljava/lang/String;

    .line 69
    iget-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mName:Ljava/lang/String;

    .line 70
    iget-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCommenter:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;

    iget-object v9, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataCommenter;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-virtual {v7}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 73
    .end local v7           #targetAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_5c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;->mCreateTime:Ljava/lang/Long;

    .line 75
    new-instance v3, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v3, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 77
    .local v3, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 78
    invoke-virtual {v3, p2, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v8

    .line 79
    const/4 v5, 0x0

    .line 80
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getTargetID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual {v3, v9, v10, v11}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateActivityCommentCnt(Ljava/lang/String;IZ)I

    .line 82
    invoke-virtual {v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_89} :catch_8f

    .line 88
    .end local v1           #accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .end local v2           #comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    .end local v3           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v6           #reqSpType:I
    :cond_89
    :goto_89
    new-instance v9, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v9, v8, v5}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v9

    .line 84
    :catch_8f
    move-exception v4

    .line 85
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_89
.end method
