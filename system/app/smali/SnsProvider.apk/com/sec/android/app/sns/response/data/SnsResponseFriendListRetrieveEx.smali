.class public Lcom/sec/android/app/sns/response/data/SnsResponseFriendListRetrieveEx;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseFriendListRetrieveEx.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 32
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

    .line 34
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 13
    .parameter "context"
    .parameter "req"

    .prologue
    .line 45
    const/4 v5, 0x0

    .line 46
    .local v5, uri:Landroid/net/Uri;
    const/16 v4, 0x1771

    .line 49
    .local v4, internalCode:I
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendListRetrieveEx;->getRespType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_49

    .line 50
    iget-object v3, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;

    .line 51
    .local v3, friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 53
    invoke-virtual {v0, p2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v5

    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 57
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->getConstraintStopFlag()Z

    move-result v6

    if-eqz v6, :cond_25

    .line 58
    const/4 v4, 0x1

    .line 61
    :cond_25
    if-eqz v5, :cond_49

    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    if-eqz v6, :cond_49

    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    if-eqz v6, :cond_49

    .line 62
    new-instance v1, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, dbAdapter2:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 64
    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v7

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mFriendDataType:Ljava/lang/String;

    iget-object v9, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mResponseTime:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateFriendResponseTime(IILjava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_49} :catch_4f

    .line 73
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v1           #dbAdapter2:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v3           #friend:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriend;
    :cond_49
    :goto_49
    new-instance v6, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v6, v5, v4}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v6

    .line 69
    :catch_4f
    move-exception v2

    .line 70
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method
