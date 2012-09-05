.class public Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyResolve;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseAuthKeyResolve.java"


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
    const/16 v1, 0x1771

    .line 48
    .local v1, internalCode:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyResolve;->getRespType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a4

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .line 53
    .local v0, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    if-eqz v0, :cond_a4

    .line 55
    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    if-eqz v4, :cond_69

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, normalServerUrl:Ljava/lang/String;
    const/4 v2, 0x0

    .line 58
    .local v2, normalServerPort:I
    invoke-static {v3}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setHttpServerAddress(Ljava/lang/String;)V

    .line 59
    invoke-static {v3}, Lcom/sec/android/app/sns/util/SnsUtil;->extractPortNumber(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3a

    .line 60
    const/16 v2, 0x50

    .line 63
    :cond_3a
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyResolve;->getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->registerHttpScheme(I)V

    .line 65
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 66
    const-string v4, "SnsResponse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processResponse() : NORMAL SERVER ADDRESS = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getHttpServerAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v2           #normalServerPort:I
    .end local v3           #normalServerUrl:Ljava/lang/String;
    :cond_69
    :goto_69
    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    if-eqz v4, :cond_9c

    .line 76
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyResolve;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setCryptSessionCredential(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 78
    const-string v4, "SnsResponse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "processResponse() : mCryptoSessionCredential = ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_9c
    :goto_9c
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthKeyResolve;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 89
    .end local v0           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    :cond_a4
    new-instance v4, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v1}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v4

    .line 70
    .restart local v0       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    .restart local v2       #normalServerPort:I
    .restart local v3       #normalServerUrl:Ljava/lang/String;
    :cond_ab
    const-string v4, "SnsResponse"

    const-string v5, "processResponse() : NORMAL SERVER ADDRESS "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 81
    .end local v2           #normalServerPort:I
    .end local v3           #normalServerUrl:Ljava/lang/String;
    :cond_b3
    const-string v4, "SnsResponse"

    const-string v5, "processResponse() : mCryptoSessionCredential"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c
.end method
