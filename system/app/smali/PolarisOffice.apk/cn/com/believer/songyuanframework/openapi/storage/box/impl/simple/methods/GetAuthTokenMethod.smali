.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "GetAuthTokenMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getAuthToken(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    .registers 37
    .parameter "getAuthTokenRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetAuthTokenResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;

    move-result-object v13

    .line 50
    .local v13, getAuthTokenResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;->getApiKey()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenRequest;->getTicket()Ljava/lang/String;

    move-result-object v26

    .line 53
    .local v26, ticket:Ljava/lang/String;
    const-string v32, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_15b

    .line 55
    const-string v32, "get_auth_token"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    .line 56
    .local v28, urlBuff:Ljava/lang/StringBuffer;
    const-string v32, "&"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v32, "api_key"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v32, "="

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v32, "&"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v32, "ticket"

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v32, "="

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    :try_start_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 66
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 68
    .local v16, responseElm:Lorg/dom4j/Element;
    const-string v32, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v25

    .line 69
    .local v25, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v25 .. v25}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v24

    .line 70
    .local v24, status:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->setStatus(Ljava/lang/String;)V

    .line 71
    const-string v32, "get_auth_token_ok"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_145

    .line 73
    const-string v32, "auth_token"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 75
    .local v8, authTokenElm:Lorg/dom4j/Element;
    const-string v32, "user"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v30

    .line 76
    .local v30, userElm:Lorg/dom4j/Element;
    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, authToken:Ljava/lang/String;
    const-string v32, "login"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 81
    .local v14, loginElm:Lorg/dom4j/Element;
    const-string v32, "email"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 83
    .local v12, emailElm:Lorg/dom4j/Element;
    const-string v32, "access_id"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 85
    .local v3, accessIdElm:Lorg/dom4j/Element;
    const-string v32, "user_id"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v31

    .line 87
    .local v31, userIdElm:Lorg/dom4j/Element;
    const-string v32, "space_amount"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 89
    .local v20, spaceAmountElm:Lorg/dom4j/Element;
    const-string v32, "space_used"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 91
    .local v23, spaceUsedElm:Lorg/dom4j/Element;
    invoke-interface {v13, v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->setAuthToken(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxUser()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;

    move-result-object v29

    .line 93
    .local v29, user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    invoke-interface {v14}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setLogin(Ljava/lang/String;)V

    .line 94
    invoke-interface {v12}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setEmail(Ljava/lang/String;)V

    .line 95
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setAccessId(Ljava/lang/String;)V

    .line 96
    invoke-interface/range {v31 .. v31}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setUserId(Ljava/lang/String;)V
    :try_end_11e
    .catch Lorg/dom4j/DocumentException; {:try_start_66 .. :try_end_11e} :catch_14e

    .line 97
    const-wide/16 v18, 0x0

    .line 99
    .local v18, spaceAmount:J
    :try_start_120
    invoke-interface/range {v20 .. v20}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_127
    .catch Ljava/lang/NumberFormatException; {:try_start_120 .. :try_end_127} :catch_146
    .catch Lorg/dom4j/DocumentException; {:try_start_120 .. :try_end_127} :catch_14e

    move-result-wide v18

    .line 103
    :goto_128
    :try_start_128
    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setSpaceAmount(J)V
    :try_end_12f
    .catch Lorg/dom4j/DocumentException; {:try_start_128 .. :try_end_12f} :catch_14e

    .line 104
    const-wide/16 v21, 0x0

    .line 106
    .local v21, spaceUsed:J
    :try_start_131
    invoke-interface/range {v23 .. v23}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_138
    .catch Ljava/lang/NumberFormatException; {:try_start_131 .. :try_end_138} :catch_14a
    .catch Lorg/dom4j/DocumentException; {:try_start_131 .. :try_end_138} :catch_14e

    move-result-wide v21

    .line 110
    :goto_139
    :try_start_139
    move-object/from16 v0, v29

    move-wide/from16 v1, v21

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setSpaceUsed(J)V

    .line 111
    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->setUser(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;)V
    :try_end_145
    .catch Lorg/dom4j/DocumentException; {:try_start_139 .. :try_end_145} :catch_14e

    .line 196
    .end local v3           #accessIdElm:Lorg/dom4j/Element;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v12           #emailElm:Lorg/dom4j/Element;
    .end local v14           #loginElm:Lorg/dom4j/Element;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #spaceAmount:J
    .end local v20           #spaceAmountElm:Lorg/dom4j/Element;
    .end local v21           #spaceUsed:J
    .end local v23           #spaceUsedElm:Lorg/dom4j/Element;
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #statusElm:Lorg/dom4j/Element;
    .end local v28           #urlBuff:Ljava/lang/StringBuffer;
    .end local v29           #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .end local v30           #userElm:Lorg/dom4j/Element;
    .end local v31           #userIdElm:Lorg/dom4j/Element;
    :cond_145
    :goto_145
    return-object v13

    .line 100
    .restart local v3       #accessIdElm:Lorg/dom4j/Element;
    .restart local v7       #authToken:Ljava/lang/String;
    .restart local v8       #authTokenElm:Lorg/dom4j/Element;
    .restart local v9       #doc:Lorg/dom4j/Document;
    .restart local v12       #emailElm:Lorg/dom4j/Element;
    .restart local v14       #loginElm:Lorg/dom4j/Element;
    .restart local v16       #responseElm:Lorg/dom4j/Element;
    .restart local v18       #spaceAmount:J
    .restart local v20       #spaceAmountElm:Lorg/dom4j/Element;
    .restart local v23       #spaceUsedElm:Lorg/dom4j/Element;
    .restart local v24       #status:Ljava/lang/String;
    .restart local v25       #statusElm:Lorg/dom4j/Element;
    .restart local v28       #urlBuff:Ljava/lang/StringBuffer;
    .restart local v29       #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .restart local v30       #userElm:Lorg/dom4j/Element;
    .restart local v31       #userIdElm:Lorg/dom4j/Element;
    :catch_146
    move-exception v11

    .line 101
    .local v11, e:Ljava/lang/NumberFormatException;
    const-wide/high16 v18, -0x8000

    goto :goto_128

    .line 107
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v21       #spaceUsed:J
    :catch_14a
    move-exception v11

    .line 108
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    const-wide/high16 v21, -0x8000

    goto :goto_139

    .line 113
    .end local v3           #accessIdElm:Lorg/dom4j/Element;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v12           #emailElm:Lorg/dom4j/Element;
    .end local v14           #loginElm:Lorg/dom4j/Element;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #spaceAmount:J
    .end local v20           #spaceAmountElm:Lorg/dom4j/Element;
    .end local v21           #spaceUsed:J
    .end local v23           #spaceUsedElm:Lorg/dom4j/Element;
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #statusElm:Lorg/dom4j/Element;
    .end local v29           #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .end local v30           #userElm:Lorg/dom4j/Element;
    .end local v31           #userIdElm:Lorg/dom4j/Element;
    :catch_14e
    move-exception v11

    .line 114
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v32, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    const-string v33, "failed to parse to a document."

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32

    .line 117
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v28           #urlBuff:Ljava/lang/StringBuffer;
    :cond_15b
    const-string v32, "xml"

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2a4

    .line 119
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 121
    .local v10, document:Lorg/dom4j/Document;
    const-string v32, "request"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 122
    .local v15, requestElm:Lorg/dom4j/Element;
    invoke-interface {v10, v15}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 125
    const-string v32, "action"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 127
    .local v4, actionElm:Lorg/dom4j/Element;
    const-string v32, "api_key"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 129
    .local v6, apiKeyElm:Lorg/dom4j/Element;
    const-string v32, "ticket"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v27

    .line 130
    .local v27, ticketElm:Lorg/dom4j/Element;
    invoke-interface {v15, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 131
    invoke-interface {v15, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 132
    move-object/from16 v0, v27

    invoke-interface {v15, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 134
    const-string v32, "get_auth_token"

    move-object/from16 v0, v32

    invoke-interface {v4, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 135
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 139
    .local v17, result:Ljava/lang/String;
    :try_start_1b8
    invoke-static/range {v17 .. v17}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 140
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 142
    .restart local v16       #responseElm:Lorg/dom4j/Element;
    const-string v32, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v25

    .line 143
    .restart local v25       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v25 .. v25}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v24

    .line 144
    .restart local v24       #status:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->setStatus(Ljava/lang/String;)V

    .line 145
    const-string v32, "get_auth_token_ok"

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_145

    .line 147
    const-string v32, "auth_token"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v8

    .line 149
    .restart local v8       #authTokenElm:Lorg/dom4j/Element;
    const-string v32, "user"

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v30

    .line 150
    .restart local v30       #userElm:Lorg/dom4j/Element;
    invoke-interface {v8}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v7

    .line 153
    .restart local v7       #authToken:Ljava/lang/String;
    const-string v32, "login"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 155
    .restart local v14       #loginElm:Lorg/dom4j/Element;
    const-string v32, "email"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 157
    .restart local v12       #emailElm:Lorg/dom4j/Element;
    const-string v32, "access_id"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v3

    .line 159
    .restart local v3       #accessIdElm:Lorg/dom4j/Element;
    const-string v32, "user_id"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v31

    .line 161
    .restart local v31       #userIdElm:Lorg/dom4j/Element;
    const-string v32, "space_amount"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 163
    .restart local v20       #spaceAmountElm:Lorg/dom4j/Element;
    const-string v32, "space_used"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 165
    .restart local v23       #spaceUsedElm:Lorg/dom4j/Element;
    invoke-interface {v13, v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->setAuthToken(Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxObjectFactory;->createBoxUser()Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;

    move-result-object v29

    .line 167
    .restart local v29       #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    invoke-interface {v14}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setLogin(Ljava/lang/String;)V

    .line 168
    invoke-interface {v12}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setEmail(Ljava/lang/String;)V

    .line 169
    invoke-interface {v3}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setAccessId(Ljava/lang/String;)V

    .line 170
    invoke-interface/range {v31 .. v31}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setUserId(Ljava/lang/String;)V
    :try_end_266
    .catch Lorg/dom4j/DocumentException; {:try_start_1b8 .. :try_end_266} :catch_28f

    .line 171
    const-wide/16 v18, 0x0

    .line 173
    .restart local v18       #spaceAmount:J
    :try_start_268
    invoke-interface/range {v20 .. v20}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_26f
    .catch Ljava/lang/NumberFormatException; {:try_start_268 .. :try_end_26f} :catch_29c
    .catch Lorg/dom4j/DocumentException; {:try_start_268 .. :try_end_26f} :catch_28f

    move-result-wide v18

    .line 177
    :goto_270
    :try_start_270
    move-object/from16 v0, v29

    move-wide/from16 v1, v18

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setSpaceAmount(J)V
    :try_end_277
    .catch Lorg/dom4j/DocumentException; {:try_start_270 .. :try_end_277} :catch_28f

    .line 178
    const-wide/16 v21, 0x0

    .line 180
    .restart local v21       #spaceUsed:J
    :try_start_279
    invoke-interface/range {v23 .. v23}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_280
    .catch Ljava/lang/NumberFormatException; {:try_start_279 .. :try_end_280} :catch_2a0
    .catch Lorg/dom4j/DocumentException; {:try_start_279 .. :try_end_280} :catch_28f

    move-result-wide v21

    .line 184
    :goto_281
    :try_start_281
    move-object/from16 v0, v29

    move-wide/from16 v1, v21

    invoke-interface {v0, v1, v2}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;->setSpaceUsed(J)V

    .line 185
    move-object/from16 v0, v29

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetAuthTokenResponse;->setUser(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;)V
    :try_end_28d
    .catch Lorg/dom4j/DocumentException; {:try_start_281 .. :try_end_28d} :catch_28f

    goto/16 :goto_145

    .line 187
    .end local v3           #accessIdElm:Lorg/dom4j/Element;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v12           #emailElm:Lorg/dom4j/Element;
    .end local v14           #loginElm:Lorg/dom4j/Element;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #spaceAmount:J
    .end local v20           #spaceAmountElm:Lorg/dom4j/Element;
    .end local v21           #spaceUsed:J
    .end local v23           #spaceUsedElm:Lorg/dom4j/Element;
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #statusElm:Lorg/dom4j/Element;
    .end local v29           #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .end local v30           #userElm:Lorg/dom4j/Element;
    .end local v31           #userIdElm:Lorg/dom4j/Element;
    :catch_28f
    move-exception v11

    .line 188
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v32, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    const-string v33, "failed to parse to a document."

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32

    .line 174
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .restart local v3       #accessIdElm:Lorg/dom4j/Element;
    .restart local v7       #authToken:Ljava/lang/String;
    .restart local v8       #authTokenElm:Lorg/dom4j/Element;
    .restart local v9       #doc:Lorg/dom4j/Document;
    .restart local v12       #emailElm:Lorg/dom4j/Element;
    .restart local v14       #loginElm:Lorg/dom4j/Element;
    .restart local v16       #responseElm:Lorg/dom4j/Element;
    .restart local v18       #spaceAmount:J
    .restart local v20       #spaceAmountElm:Lorg/dom4j/Element;
    .restart local v23       #spaceUsedElm:Lorg/dom4j/Element;
    .restart local v24       #status:Ljava/lang/String;
    .restart local v25       #statusElm:Lorg/dom4j/Element;
    .restart local v29       #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .restart local v30       #userElm:Lorg/dom4j/Element;
    .restart local v31       #userIdElm:Lorg/dom4j/Element;
    :catch_29c
    move-exception v11

    .line 175
    .local v11, e:Ljava/lang/NumberFormatException;
    const-wide/high16 v18, -0x8000

    goto :goto_270

    .line 181
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .restart local v21       #spaceUsed:J
    :catch_2a0
    move-exception v11

    .line 182
    .restart local v11       #e:Ljava/lang/NumberFormatException;
    const-wide/high16 v21, -0x8000

    goto :goto_281

    .line 191
    .end local v3           #accessIdElm:Lorg/dom4j/Element;
    .end local v4           #actionElm:Lorg/dom4j/Element;
    .end local v6           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authToken:Ljava/lang/String;
    .end local v8           #authTokenElm:Lorg/dom4j/Element;
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v12           #emailElm:Lorg/dom4j/Element;
    .end local v14           #loginElm:Lorg/dom4j/Element;
    .end local v15           #requestElm:Lorg/dom4j/Element;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v17           #result:Ljava/lang/String;
    .end local v18           #spaceAmount:J
    .end local v20           #spaceAmountElm:Lorg/dom4j/Element;
    .end local v21           #spaceUsed:J
    .end local v23           #spaceUsedElm:Lorg/dom4j/Element;
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #statusElm:Lorg/dom4j/Element;
    .end local v27           #ticketElm:Lorg/dom4j/Element;
    .end local v29           #user:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxUser;
    .end local v30           #userElm:Lorg/dom4j/Element;
    .end local v31           #userIdElm:Lorg/dom4j/Element;
    :cond_2a4
    const-string v32, "soap"

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetAuthTokenMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_145
.end method
