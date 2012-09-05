.class public Lcom/sec/android/app/sns/response/data/SnsResponseMessageThreadRetrieve;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseMessageThreadRetrieve.java"


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
    .registers 12
    .parameter "context"
    .parameter "req"

    .prologue
    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, uri:Landroid/net/Uri;
    const/16 v2, 0x1771

    .line 49
    .local v2, internalCode:I
    :try_start_3
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseMessageThreadRetrieve;->getRespType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_46

    .line 51
    iget-object v3, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;

    .line 53
    .local v3, thread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 55
    invoke-virtual {v0, p2, v3}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->insertEntry(Lcom/sec/android/app/sns/request/data/SnsRequest;Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;)Landroid/net/Uri;

    move-result-object v4

    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v4, :cond_43

    iget-object v5, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mUnread:Ljava/lang/String;

    if-eqz v5, :cond_43

    const-string v5, "false"

    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v6, v6, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mUnread:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 59
    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    iget-object v6, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mID:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;->mMessage:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v8, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mUnread:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 63
    :cond_43
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_4c

    .line 69
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v3           #thread:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataThread;
    :cond_46
    :goto_46
    new-instance v5, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v5, v4, v2}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v5

    .line 65
    :catch_4c
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method
