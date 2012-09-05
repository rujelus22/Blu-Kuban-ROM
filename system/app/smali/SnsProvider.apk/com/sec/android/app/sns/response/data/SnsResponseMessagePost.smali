.class public Lcom/sec/android/app/sns/response/data/SnsResponseMessagePost;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseMessagePost.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 40
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

    .line 42
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 14
    .parameter "context"
    .parameter "req"

    .prologue
    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, uri:Landroid/net/Uri;
    const/16 v2, 0x1771

    .line 56
    .local v2, internalCode:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseMessagePost;->getRespType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8d

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseMessagePost;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    .line 59
    .local v0, accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    iget-object v3, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 61
    .local v3, message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    iget-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mResult:Ljava/lang/String;

    if-eqz v7, :cond_93

    const-string v7, "success"

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mResult:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    move-object v7, p2

    .line 62
    check-cast v7, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    invoke-virtual {v7}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getTitle()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mTitle:Ljava/lang/String;

    move-object v7, p2

    .line 63
    check-cast v7, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;

    invoke-virtual {v7}, Lcom/sec/android/app/sns/request/data/SnsRequestMessagePost;->getContent()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mContent:Ljava/lang/String;

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSendTime:Ljava/lang/Long;

    .line 65
    const-string v7, "outbox"

    iput-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mFolder:Ljava/lang/String;

    .line 66
    new-instance v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    invoke-direct {v7}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;-><init>()V

    iput-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    .line 67
    iget-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    new-instance v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-direct {v8}, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;-><init>()V

    iput-object v8, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    .line 69
    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    .line 70
    .local v4, reqSpType:I
    if-ltz v4, :cond_7d

    const/16 v7, 0xf

    if-gt v4, v7, :cond_7d

    .line 71
    invoke-virtual {v0, v4}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v5

    .line 72
    .local v5, targetAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v5, :cond_7d

    .line 73
    iget-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mID:Ljava/lang/String;

    .line 74
    iget-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/account/SnsAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mName:Ljava/lang/String;

    .line 75
    iget-object v7, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mSender:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataSender;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    invoke-virtual {v5}, Lcom/sec/android/app/sns/account/SnsAccount;->getProfilePhotoUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 79
    .end local v5           #targetAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_7d
    new-instance v1, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 80
    .local v1, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 81
    invoke-virtual {v1, p2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v6

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 90
    .end local v0           #accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .end local v1           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v3           #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    .end local v4           #reqSpType:I
    :cond_8d
    :goto_8d
    new-instance v7, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v7, v6, v2}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v7

    .line 85
    .restart local v0       #accountInfo:Lcom/sec/android/app/sns/account/SnsAccountMgr;
    .restart local v3       #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    :cond_93
    const-string v7, "SnsResponse"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SnsResponseMessagePost : disposeData : message.mResult = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mResult:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/16 v2, 0x1775

    goto :goto_8d
.end method
