.class public Lcom/sec/android/app/sns/response/data/SnsResponseMessageGet;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseMessageGet.java"


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
    const/4 v3, 0x0

    .line 47
    .local v3, uri:Landroid/net/Uri;
    const/16 v1, 0x1771

    .line 49
    .local v1, internalCode:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseMessageGet;->getRespType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3b

    .line 50
    iget-object v2, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;

    .line 52
    .local v2, message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    iget-object v4, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v4, v4, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mUnread:Ljava/lang/String;

    if-eqz v4, :cond_41

    const-string v4, "false"

    iget-object v5, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v5, v5, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mUnread:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 53
    new-instance v0, Lcom/sec/android/app/sns/db/SnsDBAdapter;

    invoke-direct {v0, p1}, Lcom/sec/android/app/sns/db/SnsDBAdapter;-><init>(Landroid/content/Context;)V

    .line 54
    .local v0, dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->open()Lcom/sec/android/app/sns/db/SnsDBAdapter;

    .line 55
    invoke-virtual {p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mID:Ljava/lang/String;

    iget-object v7, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mReceiver:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;

    iget-object v7, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataReceiver;->mUnread:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->updateMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0}, Lcom/sec/android/app/sns/db/SnsDBAdapter;->close()V

    .line 63
    .end local v0           #dbAdapter:Lcom/sec/android/app/sns/db/SnsDBAdapter;
    .end local v2           #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    :cond_3b
    :goto_3b
    new-instance v4, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v4, v3, v1}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v4

    .line 60
    .restart local v2       #message:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;
    :cond_41
    const-string v4, "SnsResponse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SnsResponseMessageGet : disposeData : mUnread = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataMessage;->mUnread:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method
