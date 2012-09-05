.class public Lcom/sec/android/app/sns/response/data/SnsResponseCommentFavoriteGetUser;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseCommentFavoriteGetUser.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 31
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

    .line 33
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 10
    .parameter "context"
    .parameter "req"

    .prologue
    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, uri:Landroid/net/Uri;
    const/16 v2, 0x1771

    .line 48
    .local v2, internalCode:I
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseCommentFavoriteGetUser;->getRespType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1e

    .line 49
    iget-object v4, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;

    .line 50
    .local v4, user:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 52
    invoke-virtual {v0, p2, v4}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v3

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_24

    .line 60
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v4           #user:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataUser;
    :cond_1e
    :goto_1e
    new-instance v5, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v5, v3, v2}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v5

    .line 56
    :catch_24
    move-exception v1

    .line 57
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method
