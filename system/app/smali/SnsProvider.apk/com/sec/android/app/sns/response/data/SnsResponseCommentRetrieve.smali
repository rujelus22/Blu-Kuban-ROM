.class public Lcom/sec/android/app/sns/response/data/SnsResponseCommentRetrieve;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseCommentRetrieve.java"


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
    .registers 12
    .parameter "context"
    .parameter "req"

    .prologue
    .line 47
    const/4 v5, 0x0

    .line 48
    .local v5, uri:Landroid/net/Uri;
    const/16 v4, 0x1771

    .line 51
    .local v4, internalCode:I
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentRetrieve;->getRespType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_33

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;

    .line 53
    .local v1, comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    new-instance v2, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v2, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    .local v2, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 55
    invoke-virtual {v2, p2, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v5

    .line 56
    const/4 v4, 0x0

    .line 57
    iget v6, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;->mHasNextType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_30

    .line 58
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateActivityCommentCnt(Ljava/lang/String;IZ)I

    .line 63
    :cond_30
    invoke-virtual {v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_39

    .line 69
    .end local v1           #comment:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataComment;
    .end local v2           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :cond_33
    :goto_33
    new-instance v6, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v6, v5, v4}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v6

    .line 65
    :catch_39
    move-exception v3

    .line 66
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method
