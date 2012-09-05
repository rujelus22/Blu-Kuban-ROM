.class public Lcom/sec/android/app/sns/response/data/SnsResponseCommentFavoritePost;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseCommentFavoritePost.java"


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
    .registers 10
    .parameter "context"
    .parameter "req"

    .prologue
    .line 45
    const/16 v3, 0x1771

    .line 48
    .local v3, internalCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentFavoritePost;->getRespType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    .line 49
    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;

    .line 51
    .local v2, favorite:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 52
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 53
    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;->mID:Ljava/lang/String;

    iget-boolean v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;->mMask:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateFavorite(ILjava/lang/String;Z)V

    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_2b

    .line 61
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v2           #favorite:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFavorite;
    :cond_24
    :goto_24
    new-instance v4, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v4

    .line 57
    :catch_2b
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method
