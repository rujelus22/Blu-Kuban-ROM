.class public Lcom/sec/android/app/sns/response/data/SnsResponseMessageDelete;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseMessageDelete.java"


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
    .registers 11
    .parameter "context"
    .parameter "req"

    .prologue
    .line 46
    const/4 v5, 0x0

    .line 47
    .local v5, uri:Landroid/net/Uri;
    const/16 v4, 0x1771

    .line 48
    .local v4, internalCode:I
    const/4 v2, 0x0

    .line 51
    .local v2, deletedCount:I
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseMessageDelete;->getRespType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_27

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;

    .line 54
    .local v1, deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 56
    invoke-virtual {v0, p2, v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->deleteMessage(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;)I

    move-result v2

    .line 57
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 59
    if-lez v2, :cond_2d

    .line 60
    const-string v6, "content://com.sec.android.app.provider.sns/message"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_30

    move-result-object v5

    .line 62
    const/4 v4, 0x0

    .line 71
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v1           #deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    :cond_27
    :goto_27
    new-instance v6, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v6, v5, v4}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v6

    .line 64
    .restart local v0       #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .restart local v1       #deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    :cond_2d
    const/16 v4, 0x1774

    goto :goto_27

    .line 67
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v1           #deleted:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataDeleted;
    :catch_30
    move-exception v3

    .line 68
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
