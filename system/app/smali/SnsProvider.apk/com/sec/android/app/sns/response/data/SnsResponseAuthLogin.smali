.class public Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;
.super Lcom/sec/android/app/sns/response/data/SnsResponse;
.source "SnsResponseAuthLogin.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sns/response/data/SnsResponse;Ljava/lang/Object;)V
    .registers 10
    .parameter "oldResp"
    .parameter "object"

    .prologue
    .line 37
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

    .line 39
    return-void
.end method


# virtual methods
.method public disposeData(Landroid/content/Context;Lcom/sec/android/app/sns/request/data/SnsRequest;)Lcom/sec/android/app/sns/result/SnsDisposeResultData;
    .registers 20
    .parameter "context"
    .parameter "req"

    .prologue
    .line 50
    const/4 v15, 0x0

    .line 51
    .local v15, uri:Landroid/net/Uri;
    const/16 v9, 0x1771

    .line 53
    .local v9, internalCode:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getRespType()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_173

    .line 55
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/sns/response/data/SnsResponse;->mObject:Ljava/lang/Object;

    check-cast v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;

    .line 57
    .local v8, auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    if-eqz v8, :cond_173

    .line 60
    iget-object v1, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    if-eqz v1, :cond_44

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mServerAddr:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, normalServerUrl:Ljava/lang/String;
    const/4 v13, 0x0

    .line 63
    .local v13, normalServerPort:I
    invoke-static {v14}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setHttpServerAddress(Ljava/lang/String;)V

    .line 64
    invoke-static {v14}, Lcom/sec/android/app/sns/util/SnsUtil;->extractPortNumber(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_3d

    .line 65
    const/16 v13, 0x50

    .line 68
    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getHttpMgr()Lcom/sec/android/app/sns/http/SnsHttpMgr;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/sec/android/app/sns/http/SnsHttpMgr;->registerHttpScheme(I)V

    .line 72
    .end local v13           #normalServerPort:I
    .end local v14           #normalServerUrl:Ljava/lang/String;
    :cond_44
    iget-object v1, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    if-eqz v1, :cond_7f

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v1

    iget-object v6, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setCryptSessionCredential(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_dc

    .line 75
    const-string v1, "SnsResponse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processResponse() : mCryptoSessionCredential = ["

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mCryptSessionKeyValue:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_7f
    :goto_7f
    iget-object v11, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mRemoteLoginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;

    .line 83
    .local v11, loginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v2

    .line 84
    .local v2, sp:I
    if-eqz v11, :cond_103

    .line 86
    iget-object v3, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mLoginPeopleID:Ljava/lang/String;

    .line 87
    .local v3, userID:Ljava/lang/String;
    iget-object v4, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mDisplayName:Ljava/lang/String;

    .line 88
    .local v4, displayName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 89
    .local v5, profilePhotoURL:Ljava/lang/String;
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    if-eqz v1, :cond_94

    .line 90
    iget-object v1, v11, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;->mProfilePhoto:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;

    iget-object v5, v1, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataProfilePhoto;->mURL:Ljava/lang/String;

    .line 93
    :cond_94
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v10

    .line 95
    .local v10, loginAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    if-eqz v10, :cond_e4

    .line 96
    invoke-virtual {v10}, Lcom/sec/android/app/sns/account/SnsAccount;->getUserID()Ljava/lang/String;

    move-result-object v12

    .line 98
    .local v12, loginUserID:Ljava/lang/String;
    if-eqz v12, :cond_e4

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e4

    .line 99
    const-string v1, "SnsResponse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "disposeData() : sp = ["

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, "] another account is already exist!!"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v1, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v1, v15, v9}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    .line 135
    .end local v2           #sp:I
    .end local v3           #userID:Ljava/lang/String;
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #profilePhotoURL:Ljava/lang/String;
    .end local v8           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    .end local v10           #loginAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    .end local v11           #loginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;
    .end local v12           #loginUserID:Ljava/lang/String;
    :goto_db
    return-object v1

    .line 78
    .restart local v8       #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    :cond_dc
    const-string v1, "SnsResponse"

    const-string v6, "processResponse() : mCryptoSessionCredential"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 105
    .restart local v2       #sp:I
    .restart local v3       #userID:Ljava/lang/String;
    .restart local v4       #displayName:Ljava/lang/String;
    .restart local v5       #profilePhotoURL:Ljava/lang/String;
    .restart local v10       #loginAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    .restart local v11       #loginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;
    :cond_e4
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->addAccount(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->getAccount(I)Lcom/sec/android/app/sns/account/SnsAccount;

    move-result-object v1

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sns/account/SnsAccount;->setSessionValidity(Z)V

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getAccountMgr()Lcom/sec/android/app/sns/account/SnsAccountMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/account/SnsAccountMgr;->writeAccountInfo()V

    .line 111
    .end local v3           #userID:Ljava/lang/String;
    .end local v4           #displayName:Ljava/lang/String;
    .end local v5           #profilePhotoURL:Ljava/lang/String;
    .end local v10           #loginAccount:Lcom/sec/android/app/sns/account/SnsAccount;
    :cond_103
    iget-object v1, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mOAuthURL:Ljava/lang/String;

    if-eqz v1, :cond_10d

    .line 113
    iget-object v1, v8, Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;->mOAuthURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 116
    :cond_10d
    invoke-static {v2}, Lcom/sec/android/app/sns/util/SnsUtil;->isOAuthSpType(I)Z

    move-result v1

    if-nez v1, :cond_151

    .line 118
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sns/util/SnsUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v2, v1}, Lcom/sec/android/app/sns/util/SnsUtil;->setICCID(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, ICCID:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_151

    .line 120
    const-string v1, "SNS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "processResponse() : SP = ["

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, "], Store ICCID = ["

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v16, "]"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v7           #ICCID:Ljava/lang/String;
    :cond_151
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->getSeesionStatus()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_163

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getRequestMgr()Lcom/sec/android/app/sns/request/SnsRequestMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/SnsRequestMgr;->resumeWaitingRequest()V

    .line 127
    :cond_163
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->setSessionStatus(I)V

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/response/data/SnsResponseAuthLogin;->getSessionMgr()Lcom/sec/android/app/sns/session/SnsSessionMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sns/session/SnsSessionMgr;->writeSessionInfo()V

    .line 130
    const/4 v9, 0x0

    .line 135
    .end local v2           #sp:I
    .end local v8           #auth:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataAuth;
    .end local v11           #loginInfo:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedDataRemoteLoginInfo;
    :cond_173
    new-instance v1, Lcom/sec/android/app/sns/result/SnsDisposeResultData;

    invoke-direct {v1, v15, v9}, Lcom/sec/android/app/sns/result/SnsDisposeResultData;-><init>(Landroid/net/Uri;I)V

    goto/16 :goto_db
.end method
