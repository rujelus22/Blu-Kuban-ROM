.class public Lcom/sec/dsm/system/osp/HeaderUtil;
.super Ljava/lang/Object;
.source "HeaderUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dsm/system/osp/HeaderUtil$1;,
        Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;
    }
.end annotation


# instance fields
.field private appID:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private queryParam:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timeManager:Lcom/sec/dsm/system/osp/ServerTimeManager;

.field private uriPathTimeInitialization:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "appID"
    .parameter "appSecret"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    :try_start_3
    iput-object p1, p0, Lcom/sec/dsm/system/osp/HeaderUtil;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/sec/dsm/system/osp/HeaderUtil;->appID:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/sec/dsm/system/osp/HeaderUtil;->appSecret:Ljava/lang/String;

    .line 52
    new-instance v1, Lcom/sec/dsm/system/osp/PropertyManager;

    invoke-direct {v1, p1}, Lcom/sec/dsm/system/osp/PropertyManager;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    const-string v2, "uri.path.time.initialization"

    invoke-virtual {v1, v2}, Lcom/sec/dsm/system/osp/PropertyManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/dsm/system/osp/HeaderUtil;->uriPathTimeInitialization:Ljava/lang/String;

    .line 55
    new-instance v2, Lcom/sec/dsm/system/osp/ServerTimeManager;

    invoke-direct {v2, p1}, Lcom/sec/dsm/system/osp/ServerTimeManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/dsm/system/osp/HeaderUtil;->timeManager:Lcom/sec/dsm/system/osp/ServerTimeManager;

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/dsm/system/osp/HeaderUtil;->queryParam:Ljava/util/HashMap;
    :try_end_24
    .catch Lcom/sec/dsm/system/osp/PropertyException; {:try_start_3 .. :try_end_24} :catch_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_24} :catch_33

    .line 64
    return-void

    .line 58
    .end local v1           #propertyManager:Lcom/sec/dsm/system/osp/PropertyManager;
    :catch_25
    move-exception v0

    .line 59
    .local v0, e:Lcom/sec/dsm/system/osp/PropertyException;
    invoke-virtual {v0}, Lcom/sec/dsm/system/osp/PropertyException;->printStackTrace()V

    .line 60
    new-instance v2, Ljava/lang/Exception;

    invoke-virtual {v0}, Lcom/sec/dsm/system/osp/PropertyException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v0           #e:Lcom/sec/dsm/system/osp/PropertyException;
    :catch_33
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method


# virtual methods
.method public generateAuthorizationHeader(Lcom/sec/dsm/system/osp/RestClient$HttpMethod;Ljava/lang/String;Ljava/lang/String;Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;)Ljava/lang/String;
    .registers 30
    .parameter "method"
    .parameter "uri"
    .parameter "body"
    .parameter "kindOfSignKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    const/4 v4, 0x0

    .line 182
    .local v4, authorization:Ljava/lang/String;
    :try_start_1
    const-string v21, "HeaderUtil"

    const-string v22, "generateAuthorizationHeader begin"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v15, 0x0

    .line 187
    .local v15, queryParamStr:Ljava/lang/String;
    const/16 v21, 0xa

    invoke-static/range {v21 .. v21}, Lcom/sec/dsm/system/osp/AuthUtil;->generateRandomToken(I)Ljava/lang/String;

    move-result-object v12

    .line 191
    .local v12, oauthNonce:Ljava/lang/String;
    const-wide/16 v19, 0x0

    .line 192
    .local v19, timestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/HeaderUtil;->uriPathTimeInitialization:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8c

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const-wide/16 v23, 0x3e8

    div-long v19, v21, v23

    .line 197
    :goto_2f
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, oauthTimestamp:Ljava/lang/String;
    const-string v14, ""

    .line 200
    .local v14, oauthToken:Ljava/lang/String;
    const-string v17, ""

    .line 201
    .local v17, signSecret:Ljava/lang/String;
    const/4 v11, 0x0

    .line 203
    .local v11, isBase64Encoded:Z
    sget-object v21, Lcom/sec/dsm/system/osp/HeaderUtil$1;->$SwitchMap$com$sec$dsm$system$osp$HeaderUtil$KindOfSignKey:[I

    invoke-virtual/range {p4 .. p4}, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->ordinal()I

    move-result v22

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_25e

    .line 229
    :cond_43
    :goto_43
    const/4 v9, 0x0

    .line 230
    .local v9, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/HeaderUtil;->queryParam:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_52
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_140

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 231
    .local v8, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v9, :cond_107

    .line 232
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_52

    .line 195
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #isBase64Encoded:Z
    .end local v13           #oauthTimestamp:Ljava/lang/String;
    .end local v14           #oauthToken:Ljava/lang/String;
    .end local v17           #signSecret:Ljava/lang/String;
    :cond_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/HeaderUtil;->timeManager:Lcom/sec/dsm/system/osp/ServerTimeManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/dsm/system/osp/ServerTimeManager;->getServerTime()J

    move-result-wide v19

    goto :goto_2f

    .line 205
    .restart local v11       #isBase64Encoded:Z
    .restart local v13       #oauthTimestamp:Ljava/lang/String;
    .restart local v14       #oauthToken:Ljava/lang/String;
    .restart local v17       #signSecret:Ljava/lang/String;
    :pswitch_97
    const-string v14, ""

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/HeaderUtil;->appSecret:Ljava/lang/String;

    move-object/from16 v17, v0
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9f} :catch_f5

    .line 207
    const/4 v11, 0x0

    .line 208
    goto :goto_43

    .line 212
    :pswitch_a1
    :try_start_a1
    new-instance v6, Lcom/sec/dsm/system/osp/CredentialManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/HeaderUtil;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/sec/dsm/system/osp/CredentialManager;-><init>(Landroid/content/Context;)V

    .line 215
    .local v6, credentialManager:Lcom/sec/dsm/system/osp/CredentialManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/HeaderUtil;->appID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/sec/dsm/system/osp/CredentialManager;->getOauthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/HeaderUtil;->appID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/sec/dsm/system/osp/CredentialManager;->getOauthTokenSecret(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_c5} :catch_fa

    move-result-object v17

    .line 217
    const/4 v11, 0x1

    .line 221
    if-eqz v14, :cond_ed

    if-eqz v17, :cond_ed

    :try_start_cb
    const-string v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_ed

    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_43

    .line 224
    :cond_ed
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "App wasn\'t signed in"

    invoke-direct/range {v21 .. v22}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_f5} :catch_f5

    .line 282
    .end local v6           #credentialManager:Lcom/sec/dsm/system/osp/CredentialManager;
    .end local v11           #isBase64Encoded:Z
    .end local v12           #oauthNonce:Ljava/lang/String;
    .end local v13           #oauthTimestamp:Ljava/lang/String;
    .end local v14           #oauthToken:Ljava/lang/String;
    .end local v15           #queryParamStr:Ljava/lang/String;
    .end local v17           #signSecret:Ljava/lang/String;
    .end local v19           #timestamp:J
    :catch_f5
    move-exception v7

    .line 283
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    throw v7

    .line 218
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v11       #isBase64Encoded:Z
    .restart local v12       #oauthNonce:Ljava/lang/String;
    .restart local v13       #oauthTimestamp:Ljava/lang/String;
    .restart local v14       #oauthToken:Ljava/lang/String;
    .restart local v15       #queryParamStr:Ljava/lang/String;
    .restart local v17       #signSecret:Ljava/lang/String;
    .restart local v19       #timestamp:J
    :catch_fa
    move-exception v7

    .line 219
    .restart local v7       #e:Ljava/lang/Exception;
    :try_start_fb
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "Can\'t get the App credential token."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    .line 234
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9       #i:I
    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_107
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_52

    .line 238
    .end local v8           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_140
    if-eqz v15, :cond_15f

    .line 239
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "?"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 243
    :cond_15f
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v21, "oauth_consumer_key="

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/dsm/system/osp/HeaderUtil;->appID:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v21, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v21, "oauth_signature_method="

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v21, "HmacSHA1"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string v21, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v21, "oauth_timestamp="

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v21, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v21, "oauth_nonce="

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const-string v21, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v21, "oauth_version="

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v21, "1.0"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    sget-object v21, Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;->APP_SECRET:Lcom/sec/dsm/system/osp/HeaderUtil$KindOfSignKey;

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1fd

    .line 261
    const-string v21, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v21, "oauth_token="

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1fd
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_1fd} :catch_f5

    .line 266
    :cond_1fd
    const/4 v5, 0x0

    .line 267
    .local v5, baseStr:Ljava/lang/String;
    const/16 v18, 0x0

    .line 270
    .local v18, signature:Ljava/lang/String;
    :try_start_200
    invoke-virtual/range {p1 .. p1}, Lcom/sec/dsm/system/osp/RestClient$HttpMethod;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-static {v0, v1, v15, v2, v3}, Lcom/sec/dsm/system/osp/AuthUtil;->getSignSourceString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    new-instance v18, Ljava/lang/String;

    .end local v18           #signature:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-static {v0, v5, v11}, Lcom/sec/dsm/system/osp/AuthUtil;->computeSignature(Ljava/lang/String;Ljava/lang/String;Z)[B

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/dsm/system/osp/Base64;->encode([B)[B

    move-result-object v21

    const-string v22, "UTF-8"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_22b} :catch_250

    .line 275
    .restart local v18       #signature:Ljava/lang/String;
    :try_start_22b
    const-string v21, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    const-string v21, "oauth_signature="

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    const-string v21, "HeaderUtil"

    const-string v22, "generateAuthorizationHeader end"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-object v4

    .line 272
    .end local v18           #signature:Ljava/lang/String;
    :catch_250
    move-exception v7

    .line 273
    .restart local v7       #e:Ljava/lang/Exception;
    new-instance v21, Ljava/lang/Exception;

    const-string v22, "Can\'t make a signed header."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
    :try_end_25d
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_25d} :catch_f5

    .line 203
    nop

    :pswitch_data_25e
    .packed-switch 0x1
        :pswitch_97
        :pswitch_a1
    .end packed-switch
.end method
