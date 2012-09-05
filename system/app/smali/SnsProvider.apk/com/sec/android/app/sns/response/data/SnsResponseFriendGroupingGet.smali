.class public Lcom/sec/android/app/sns/response/data/SnsResponseFriendGroupingGet;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseFriendGroupingGet.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 33
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

    .line 35
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 10
    .parameter "context"
    .parameter "req"

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, uri:Landroid/net/Uri;
    const/16 v3, 0x1771

    .line 50
    .local v3, internalCode:I
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendGroupingGet;->getRespType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;

    .line 52
    .local v2, friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 54
    invoke-virtual {v0, p2, v2}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v4

    .line 55
    const/4 v3, 0x0

    .line 56
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_24

    .line 62
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v2           #friendGrouping:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendGrouping;
    :cond_1e
    :goto_1e
    new-instance v5, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v5, v4, v3}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v5

    .line 58
    :catch_24
    move-exception v1

    .line 59
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
