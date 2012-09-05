.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "MoveMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public move(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    .registers 29
    .parameter "moveRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createMoveResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;

    move-result-object v7

    .line 48
    .local v7, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getTarget()Ljava/lang/String;

    move-result-object v19

    .line 51
    .local v19, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getTargetId()Ljava/lang/String;

    move-result-object v21

    .line 52
    .local v21, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveRequest;->getDestinationId()Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, destinationId:Ljava/lang/String;
    const-string v24, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d0

    .line 56
    const-string v24, "move"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v23

    .line 57
    .local v23, urlBuff:Ljava/lang/StringBuffer;
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v24, "api_key"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v24, "auth_token"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v24, "target"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v24, "target_id"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v24, "&"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v24, "destination_id"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v24, "="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    :try_start_98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 79
    .local v11, doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v15

    .line 81
    .local v15, responseElm:Lorg/dom4j/Element;
    const-string v24, "status"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 82
    .local v18, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v18 .. v18}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v17

    .line 83
    .local v17, status:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->setStatus(Ljava/lang/String;)V
    :try_end_bb
    .catch Lorg/dom4j/DocumentException; {:try_start_98 .. :try_end_bb} :catch_bc

    .line 147
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v15           #responseElm:Lorg/dom4j/Element;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #statusElm:Lorg/dom4j/Element;
    .end local v23           #urlBuff:Ljava/lang/StringBuffer;
    :goto_bb
    return-object v7

    .line 86
    .restart local v23       #urlBuff:Ljava/lang/StringBuffer;
    :catch_bc
    move-exception v13

    .line 87
    .local v13, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 88
    const-string v24, "failed to parse to a document."

    .line 87
    move-object/from16 v0, v24

    invoke-direct {v8, v0, v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->getStatus()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 90
    throw v8

    .line 93
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v23           #urlBuff:Ljava/lang/StringBuffer;
    :cond_d0
    const-string v24, "xml"

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_186

    .line 95
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v12

    .line 97
    .local v12, document:Lorg/dom4j/Document;
    const-string v24, "request"

    invoke-static/range {v24 .. v24}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 98
    .local v14, requestElm:Lorg/dom4j/Element;
    invoke-interface {v12, v14}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 101
    const-string v24, "action"

    invoke-static/range {v24 .. v24}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 103
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v24, "api_key"

    invoke-static/range {v24 .. v24}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 105
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v24, "auth_token"

    invoke-static/range {v24 .. v24}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 107
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v24, "target"

    invoke-static/range {v24 .. v24}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 109
    .local v20, targetElm:Lorg/dom4j/Element;
    const-string v24, "target_id"

    invoke-static/range {v24 .. v24}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 111
    .local v22, targetIdElm:Lorg/dom4j/Element;
    const-string v24, "destination_id"

    invoke-static/range {v24 .. v24}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v10

    .line 112
    .local v10, destinationIdElm:Lorg/dom4j/Element;
    invoke-interface {v14, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 113
    invoke-interface {v14, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 114
    invoke-interface {v14, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 115
    move-object/from16 v0, v20

    invoke-interface {v14, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 116
    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 117
    invoke-interface {v14, v10}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 119
    const-string v24, "move"

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 120
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 121
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 123
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 124
    invoke-interface {v10, v9}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface {v12}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 127
    .local v16, result:Ljava/lang/String;
    :try_start_157
    invoke-static/range {v16 .. v16}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v11

    .line 128
    .restart local v11       #doc:Lorg/dom4j/Document;
    invoke-interface {v11}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v15

    .line 130
    .restart local v15       #responseElm:Lorg/dom4j/Element;
    const-string v24, "status"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 131
    .restart local v18       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v18 .. v18}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v17

    .line 132
    .restart local v17       #status:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->setStatus(Ljava/lang/String;)V
    :try_end_170
    .catch Lorg/dom4j/DocumentException; {:try_start_157 .. :try_end_170} :catch_172

    goto/16 :goto_bb

    .line 135
    .end local v11           #doc:Lorg/dom4j/Document;
    .end local v15           #responseElm:Lorg/dom4j/Element;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #statusElm:Lorg/dom4j/Element;
    :catch_172
    move-exception v13

    .line 136
    .restart local v13       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 137
    const-string v24, "failed to parse to a document."

    .line 136
    move-object/from16 v0, v24

    invoke-direct {v8, v0, v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/MoveResponse;->getStatus()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 139
    throw v8

    .line 142
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #destinationIdElm:Lorg/dom4j/Element;
    .end local v12           #document:Lorg/dom4j/Document;
    .end local v13           #e:Lorg/dom4j/DocumentException;
    .end local v14           #requestElm:Lorg/dom4j/Element;
    .end local v16           #result:Ljava/lang/String;
    .end local v20           #targetElm:Lorg/dom4j/Element;
    .end local v22           #targetIdElm:Lorg/dom4j/Element;
    :cond_186
    const-string v24, "soap"

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/MoveMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_bb
.end method
