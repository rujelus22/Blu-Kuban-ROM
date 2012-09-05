.class public final Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerAuth.java"


# instance fields
.field private SavedcryptoSessionCredential:Ljava/lang/String;

.field private SavedsessionKey:Ljava/lang/String;

.field private isKey:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private getApplicationKey()Ljava/lang/String;
    .registers 5

    .prologue
    .line 36
    iget-object v1, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sns/util/SnsUtil;->getApplicationKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, result:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 39
    const-string v1, "SNS_COMPOSER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApplicationKey = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_2a
    return-object v0
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x0

    const/16 v5, 0xfa1

    const/4 v10, 0x1

    .line 59
    if-nez p1, :cond_f

    .line 60
    const-string v6, "SNS_COMPOSER"

    const-string v7, "SnsRequest Should not be null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_e
    return v5

    .line 64
    :cond_f
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v3

    .line 66
    .local v3, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->prepareCompose()V

    .line 67
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->getPersistKey()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, persistKey:Ljava/lang/String;
    if-nez v0, :cond_24

    .line 70
    const-string v6, "SNS_COMPOSER"

    const-string v7, "persistKey is NULL!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 74
    :cond_24
    packed-switch v3, :pswitch_data_2a0

    .line 280
    const-string v6, "SNS_COMPOSER"

    const-string v7, "RequestType is NOT SUPPORTED!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 76
    :pswitch_2f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/auth/key"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v1, p1

    .line 78
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;

    .line 81
    .local v1, reqAuthKeyResolve:Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 82
    const-string v5, "Method"

    const-string v7, "resolve"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCloseTag()V

    .line 87
    const-string v5, "PersistKey"

    const-string v7, "Value"

    invoke-virtual {p0, v5, v7, v0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "SessionKey"

    const-string v7, "Type"

    const-string v8, "APIF"

    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;->getUseCryptoSessionKey()Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 96
    const-string v5, "CryptSessionKey"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 97
    const-string v5, "Use"

    const-string v7, "true"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v5, "Type"

    const-string v7, "SHA1"

    invoke-virtual {p0, v5, v7, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    :cond_8f
    const-string v5, "RemoteLoginInfo"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 106
    const-string v5, "Verbose"

    const-string v7, "true"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeEndTag()V

    .line 112
    const-string v5, "ApplicationKey"

    const-string v7, "Value"

    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->getApplicationKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeEndTag(Ljava/lang/String;)V

    .end local v1           #reqAuthKeyResolve:Lcom/sec/android/app/sns/request/data/SnsRequestAuthKeyResolve;
    :goto_ae
    move v5, v6

    .line 283
    goto/16 :goto_e

    .line 121
    :pswitch_b1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/auth/key"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 124
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 125
    const-string v5, "Method"

    const-string v7, "delete"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v5, "Timeout"

    const-string v7, "3000"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v5, "SessionKey"

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz p3, :cond_fd

    .line 131
    const-string v5, "CryptKey"

    iget-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v8, "delete"

    invoke-virtual {p0, v7, v8, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_fd
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCloseTag()V

    .line 138
    const-string v5, "PersistKey"

    const-string v7, "Value"

    invoke-virtual {p0, v5, v7, v0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeEndTag(Ljava/lang/String;)V

    goto :goto_ae

    .line 147
    :pswitch_10d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/auth"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v2, p1

    .line 149
    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;

    .line 152
    .local v2, reqAuthLogin:Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;
    if-nez p2, :cond_214

    if-nez p3, :cond_214

    .line 153
    iput-boolean v6, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->isKey:Z

    .line 155
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_148

    .line 156
    const-string v5, "SNS_COMPOSER"

    const-string v7, "SnsXmlComposerAuth : sessionKey() Check : NULL"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_148
    :goto_148
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 173
    const-string v5, "Method"

    const-string v7, "login"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-boolean v5, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->isKey:Z

    if-eqz v5, :cond_15f

    .line 175
    const-string v5, "SessionKey"

    iget-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->SavedsessionKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_15f
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_16d

    .line 178
    const-string v5, "Version"

    const/4 v7, 0x2

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;I)V

    .line 180
    :cond_16d
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCloseTag()V

    .line 183
    const-string v5, "UserName"

    const-string v7, "Value"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->getUID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v5, "Password"

    const-string v7, "Value"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->getPWD()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v5, "PersistKey"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 192
    const-string v5, "Use"

    const-string v7, "true"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v5, "Expires"

    const-string v7, "43200"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v5, "Value"

    invoke-virtual {p0, v5, v0, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 202
    const-string v5, "SessionKey"

    const-string v7, "Type"

    const-string v8, "APIF"

    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->getUseCryptoSessionKey()Z

    move-result v5

    if-eqz v5, :cond_1cb

    .line 207
    const-string v5, "CryptSessionKey"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 208
    const-string v5, "Use"

    const-string v7, "true"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-boolean v5, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->isKey:Z

    if-eqz v5, :cond_1c4

    .line 210
    const-string v5, "Value"

    iget-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->SavedcryptoSessionCredential:Ljava/lang/String;

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_1c4
    const-string v5, "Type"

    const-string v7, "SHA1"

    invoke-virtual {p0, v5, v7, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 219
    :cond_1cb
    const-string v5, "RemoteLoginInfo"

    const-string v7, "Verbose"

    const-string v8, "true"

    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v5, "ApplicationKey"

    const-string v7, "Value"

    invoke-direct {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->getApplicationKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;->getSessionResetFlag()Z

    move-result v5

    if-eqz v5, :cond_1ee

    .line 228
    const-string v5, "MSPSession"

    const-string v7, "Reset"

    const-string v8, "true"

    invoke-virtual {p0, v5, v7, v8}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1ee
    iget-object v5, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mAppContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/app/sns/util/SnsUtil;->getDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, result:Ljava/lang/String;
    if-eqz v4, :cond_20d

    .line 235
    const-string v5, "DeviceInfo"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 236
    const-string v5, "MCC"

    invoke-virtual {v4, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v5, "MNC"

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7, v10}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    :cond_20d
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_ae

    .line 158
    .end local v4           #result:Ljava/lang/String;
    :cond_214
    if-eqz p2, :cond_240

    if-eqz p3, :cond_240

    .line 159
    iput-object p2, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->SavedsessionKey:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->SavedcryptoSessionCredential:Ljava/lang/String;

    .line 161
    iput-boolean v10, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->isKey:Z

    .line 163
    invoke-static {}, Lcom/sec/android/app/sns/util/SnsUtil;->isLoggable()Z

    move-result v5

    if-eqz v5, :cond_148

    .line 164
    const-string v5, "SNS_COMPOSER"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SnsXmlComposerAuth : sessionKey() Check : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->SavedsessionKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_148

    .line 167
    :cond_240
    const-string v6, "SNS_COMPOSER"

    const-string v7, "sessionKey ERROR!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 250
    .end local v2           #reqAuthLogin:Lcom/sec/android/app/sns/request/data/SnsRequestAuthLogin;
    :pswitch_249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/auth"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 253
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeStartTag(Ljava/lang/String;)V

    .line 254
    const-string v5, "Method"

    const-string v7, "logout"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v5, "Timeout"

    const-string v7, "3000"

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    if-eqz p3, :cond_290

    .line 259
    const-string v5, "CryptKey"

    iget-object v7, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v8, "logout"

    invoke-virtual {p0, v7, v8, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_290
    const-string v5, "SessionKey"

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeCloseTag()V

    .line 275
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerAuth;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_ae

    .line 74
    nop

    :pswitch_data_2a0
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_b1
        :pswitch_10d
        :pswitch_249
    .end packed-switch
.end method
