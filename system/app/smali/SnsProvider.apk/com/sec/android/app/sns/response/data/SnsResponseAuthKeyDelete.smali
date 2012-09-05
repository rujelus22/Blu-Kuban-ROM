.class public Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyDelete;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseAuthKeyDelete.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 23
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

    .line 25
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 9
    .parameter "context"
    .parameter "req"

    .prologue
    .line 36
    const/16 v3, 0x1771

    .line 39
    .local v3, internalCode:I
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyDelete;->getRespType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3a

    .line 40
    iget-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .line 43
    .local v0, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    if-eqz v0, :cond_3a

    .line 44
    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mPersistKey:Ljava/lang/String;

    if-eqz v4, :cond_3a

    const-string v4, "null"

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mPersistKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyDelete;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->removeAllAccounts()V

    .line 46
    const-string v4, "SnsResponse"

    const-string v5, "processResponse() :  removeAllAccounts..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v1, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 51
    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->dropAllTables()Z

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {v1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_41

    .line 61
    .end local v0           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    .end local v1           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    :cond_3a
    :goto_3a
    new-instance v4, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v4

    .line 58
    :catch_41
    move-exception v2

    .line 59
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method
