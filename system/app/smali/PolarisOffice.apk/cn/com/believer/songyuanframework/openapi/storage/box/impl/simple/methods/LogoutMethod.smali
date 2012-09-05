.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "LogoutMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public logout(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    .registers 23
    .parameter "logoutRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createLogoutResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;

    move-result-object v7

    .line 43
    .local v7, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, authToken:Ljava/lang/String;
    const-string v18, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_82

    .line 48
    const-string v18, "logout"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    .line 49
    .local v17, urlBuff:Ljava/lang/StringBuffer;
    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v18, "api_key"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v18, "auth_token"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 59
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v13

    .line 61
    .local v13, responseElm:Lorg/dom4j/Element;
    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 62
    .local v16, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, status:Ljava/lang/String;
    invoke-interface {v7, v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;->setStatus(Ljava/lang/String;)V
    :try_end_6d
    .catch Lorg/dom4j/DocumentException; {:try_start_4c .. :try_end_6d} :catch_6e

    .line 115
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v13           #responseElm:Lorg/dom4j/Element;
    .end local v15           #status:Ljava/lang/String;
    .end local v16           #statusElm:Lorg/dom4j/Element;
    .end local v17           #urlBuff:Ljava/lang/StringBuffer;
    :goto_6d
    return-object v7

    .line 66
    .restart local v17       #urlBuff:Ljava/lang/StringBuffer;
    :catch_6e
    move-exception v11

    .line 67
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 68
    const-string v18, "failed to parse to a document."

    .line 67
    move-object/from16 v0, v18

    invoke-direct {v8, v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;->getStatus()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 70
    throw v8

    .line 73
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v17           #urlBuff:Ljava/lang/StringBuffer;
    :cond_82
    const-string v18, "xml"

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_106

    .line 75
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 77
    .local v10, document:Lorg/dom4j/Document;
    const-string v18, "request"

    invoke-static/range {v18 .. v18}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 78
    .local v12, requestElm:Lorg/dom4j/Element;
    invoke-interface {v10, v12}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 81
    const-string v18, "action"

    invoke-static/range {v18 .. v18}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 83
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v18, "api_key"

    invoke-static/range {v18 .. v18}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 85
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v18, "auth_token"

    invoke-static/range {v18 .. v18}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 86
    .local v6, authTokenElm:Lorg/dom4j/Element;
    invoke-interface {v12, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 87
    invoke-interface {v12, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 88
    invoke-interface {v12, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 90
    const-string v18, "logout"

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 91
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 92
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 95
    .local v14, result:Ljava/lang/String;
    :try_start_d9
    invoke-static {v14}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 96
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v13

    .line 98
    .restart local v13       #responseElm:Lorg/dom4j/Element;
    const-string v18, "status"

    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 99
    .restart local v16       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v15

    .line 100
    .restart local v15       #status:Ljava/lang/String;
    invoke-interface {v7, v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;->setStatus(Ljava/lang/String;)V
    :try_end_f0
    .catch Lorg/dom4j/DocumentException; {:try_start_d9 .. :try_end_f0} :catch_f2

    goto/16 :goto_6d

    .line 103
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v13           #responseElm:Lorg/dom4j/Element;
    .end local v15           #status:Ljava/lang/String;
    .end local v16           #statusElm:Lorg/dom4j/Element;
    :catch_f2
    move-exception v11

    .line 104
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 105
    const-string v18, "failed to parse to a document."

    .line 104
    move-object/from16 v0, v18

    invoke-direct {v8, v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 106
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/LogoutResponse;->getStatus()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 107
    throw v8

    .line 110
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v12           #requestElm:Lorg/dom4j/Element;
    .end local v14           #result:Ljava/lang/String;
    :cond_106
    const-string v18, "soap"

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/LogoutMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_6d
.end method
