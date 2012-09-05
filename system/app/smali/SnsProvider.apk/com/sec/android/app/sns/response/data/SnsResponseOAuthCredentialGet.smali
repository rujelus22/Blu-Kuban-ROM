.class public Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseOAuthCredentialGet.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 36
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

    .line 38
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 17
    .parameter "context"
    .parameter "req"

    .prologue
    .line 49
    const/4 v12, 0x0

    .line 50
    .local v12, uri:Landroid/net/Uri;
    const/16 v8, 0x1771

    .line 52
    .local v8, internalCode:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;->getRespType()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_fe

    .line 54
    iget-object v7, p0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .line 56
    .local v7, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    if-eqz v7, :cond_fe

    .line 59
    iget-object v0, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    if-eqz v0, :cond_42

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 61
    .local v11, normalServerUrl:Ljava/lang/String;
    const/4 v10, 0x0

    .line 62
    .local v10, normalServerPort:I
    invoke-static {v11}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setHttpServerAddress(Ljava/lang/String;)V

    .line 63
    invoke-static {v11}, Lcom/sec/android/app/sns/util/SnsUtil;->extractPortNumber(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_3b

    .line 64
    const/16 v10, 0x50

    .line 67
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;->getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->registerHttpScheme(I)V

    .line 71
    .end local v10           #normalServerPort:I
    .end local v11           #normalServerUrl:Ljava/lang/String;
    :cond_42
    iget-object v0, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    if-eqz v0, :cond_75

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v0

    iget-object v5, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setCryptSessionCredential(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 74
    const-string v0, "SnsResponse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processResponse() : mCryptoSessionCredential = ["

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "]"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_75
    iget-object v9, v7, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 80
    .local v9, loginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v1

    .line 81
    .local v1, sp:I
    if-eqz v9, :cond_c8

    .line 83
    iget-object v2, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLoginPeopleID:Ljava/lang/String;

    .line 84
    .local v2, userID:Ljava/lang/String;
    iget-object v3, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mDisplayName:Ljava/lang/String;

    .line 85
    .local v3, displayName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 86
    .local v4, profilePhotoURL:Ljava/lang/String;
    iget-object v0, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v0, :cond_8a

    .line 87
    iget-object v0, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v4, v0, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 89
    :cond_8a
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->addAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/app/sns/response/data/SnsResponseOAuthCredentialGet;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 94
    iget-object v0, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLoginUserName:Ljava/lang/String;

    if-eqz v0, :cond_c8

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/android/app/sns/db/SnsDB$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/username="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v9, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLoginUserName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 97
    const/4 v8, 0x0

    .line 102
    .end local v2           #userID:Ljava/lang/String;
    .end local v3           #displayName:Ljava/lang/String;
    .end local v4           #profilePhotoURL:Ljava/lang/String;
    :cond_c8
    invoke-static {p1}, Lcom/sec/android/app/sns/util/SnsUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/sns/util/SnsUtil;->setICCID(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, ICCID:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 104
    const-string v0, "SNS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processResponse() : SP = ["

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "], Store ICCID = ["

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "]"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v1           #sp:I
    .end local v6           #ICCID:Ljava/lang/String;
    .end local v7           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    .end local v9           #loginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;
    :cond_fe
    new-instance v0, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v0, v12, v8}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    return-object v0
.end method
