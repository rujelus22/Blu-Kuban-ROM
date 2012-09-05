.class public Lcom/sec/android/app/sns/response/data/SnsResponseFriendRequestPost;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseFriendRequestPost.java"


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
    const/4 v6, 0x1

    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, uri:Landroid/net/Uri;
    const/16 v3, 0x1771

    .line 50
    .local v3, internalCode:I
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseFriendRequestPost;->getRespType()I

    move-result v5

    if-ne v5, v6, :cond_3b

    .line 51
    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;

    .line 53
    .local v2, friendRequest:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 55
    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;->mID:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateIsFriendStatus(Ljava/lang/String;Z)V

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.sec.android.app.provider.sns/friend/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_41

    .line 65
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v2           #friendRequest:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataFriendRequest;
    :cond_3b
    :goto_3b
    new-instance v5, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v5, v4, v3}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v5

    .line 61
    :catch_41
    move-exception v1

    .line 62
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method
