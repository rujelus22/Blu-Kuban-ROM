.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "PublicUnshareMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public publicUnshare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;
    .registers 27
    .parameter "publicUnshareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createPublicUnshareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;

    move-result-object v7

    .line 48
    .local v7, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->getTarget()Ljava/lang/String;

    move-result-object v17

    .line 51
    .local v17, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareRequest;->getTargetId()Ljava/lang/String;

    move-result-object v19

    .line 53
    .local v19, targetId:Ljava/lang/String;
    const-string v22, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b6

    .line 55
    const-string v22, "public_unshare"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    .line 56
    .local v21, urlBuff:Ljava/lang/StringBuffer;
    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v22, "api_key"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v22, "auth_token"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v22, "target"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v22, "target_id"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    :try_start_80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 74
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v13

    .line 76
    .local v13, responseElm:Lorg/dom4j/Element;
    const-string v22, "status"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 77
    .local v16, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v15

    .line 78
    .local v15, status:Ljava/lang/String;
    invoke-interface {v7, v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;->setStatus(Ljava/lang/String;)V
    :try_end_a1
    .catch Lorg/dom4j/DocumentException; {:try_start_80 .. :try_end_a1} :catch_a2

    .line 138
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v13           #responseElm:Lorg/dom4j/Element;
    .end local v15           #status:Ljava/lang/String;
    .end local v16           #statusElm:Lorg/dom4j/Element;
    .end local v21           #urlBuff:Ljava/lang/StringBuffer;
    :goto_a1
    return-object v7

    .line 81
    .restart local v21       #urlBuff:Ljava/lang/StringBuffer;
    :catch_a2
    move-exception v11

    .line 82
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 83
    const-string v22, "failed to parse to a document."

    .line 82
    move-object/from16 v0, v22

    invoke-direct {v8, v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;->getStatus()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 85
    throw v8

    .line 88
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v21           #urlBuff:Ljava/lang/StringBuffer;
    :cond_b6
    const-string v22, "xml"

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15e

    .line 90
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 92
    .local v10, document:Lorg/dom4j/Document;
    const-string v22, "request"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 93
    .local v12, requestElm:Lorg/dom4j/Element;
    invoke-interface {v10, v12}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 96
    const-string v22, "action"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 98
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v22, "api_key"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 100
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v22, "auth_token"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 102
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v22, "target"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 104
    .local v18, targetElm:Lorg/dom4j/Element;
    const-string v22, "target_id"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 105
    .local v20, targetIdElm:Lorg/dom4j/Element;
    invoke-interface {v12, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 106
    invoke-interface {v12, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 107
    invoke-interface {v12, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 108
    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 109
    move-object/from16 v0, v20

    invoke-interface {v12, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 111
    const-string v22, "public_unshare"

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 112
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 113
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 114
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 115
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 118
    .local v14, result:Ljava/lang/String;
    :try_start_131
    invoke-static {v14}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 119
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v13

    .line 121
    .restart local v13       #responseElm:Lorg/dom4j/Element;
    const-string v22, "status"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 122
    .restart local v16       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v15

    .line 123
    .restart local v15       #status:Ljava/lang/String;
    invoke-interface {v7, v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;->setStatus(Ljava/lang/String;)V
    :try_end_148
    .catch Lorg/dom4j/DocumentException; {:try_start_131 .. :try_end_148} :catch_14a

    goto/16 :goto_a1

    .line 126
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v13           #responseElm:Lorg/dom4j/Element;
    .end local v15           #status:Ljava/lang/String;
    .end local v16           #statusElm:Lorg/dom4j/Element;
    :catch_14a
    move-exception v11

    .line 127
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 128
    const-string v22, "failed to parse to a document."

    .line 127
    move-object/from16 v0, v22

    invoke-direct {v8, v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 129
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicUnshareResponse;->getStatus()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 130
    throw v8

    .line 133
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v12           #requestElm:Lorg/dom4j/Element;
    .end local v14           #result:Ljava/lang/String;
    .end local v18           #targetElm:Lorg/dom4j/Element;
    .end local v20           #targetIdElm:Lorg/dom4j/Element;
    :cond_15e
    const-string v22, "soap"

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicUnshareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_a1
.end method
