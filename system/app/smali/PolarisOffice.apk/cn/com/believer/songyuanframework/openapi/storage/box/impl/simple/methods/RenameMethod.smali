.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "RenameMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public rename(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    .registers 30
    .parameter "renameRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createRenameResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;

    move-result-object v7

    .line 50
    .local v7, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->getTarget()Ljava/lang/String;

    move-result-object v20

    .line 53
    .local v20, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->getTargetId()Ljava/lang/String;

    move-result-object v22

    .line 54
    .local v22, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameRequest;->getNewName()Ljava/lang/String;

    move-result-object v13

    .line 56
    .local v13, newName:Ljava/lang/String;
    const-string v25, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_df

    .line 58
    new-instance v9, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v9}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 59
    .local v9, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v25, "ISO-8859-1"

    move-object/from16 v0, v25

    invoke-virtual {v9, v13, v0}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 61
    const-string v25, "rename"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 62
    .local v24, urlBuff:Ljava/lang/StringBuffer;
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v25, "api_key"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v25, "auth_token"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v25, "target"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v25, "target_id"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v25, "new_name"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :try_start_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 84
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 86
    .local v16, responseElm:Lorg/dom4j/Element;
    const-string v25, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 87
    .local v19, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v19 .. v19}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v18

    .line 88
    .local v18, status:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->setStatus(Ljava/lang/String;)V
    :try_end_ca
    .catch Lorg/dom4j/DocumentException; {:try_start_a5 .. :try_end_ca} :catch_cb

    .line 152
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusElm:Lorg/dom4j/Element;
    .end local v24           #urlBuff:Ljava/lang/StringBuffer;
    :goto_ca
    return-object v7

    .line 91
    .restart local v9       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v24       #urlBuff:Ljava/lang/StringBuffer;
    :catch_cb
    move-exception v12

    .line 92
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 93
    const-string v25, "failed to parse to a document."

    .line 92
    move-object/from16 v0, v25

    invoke-direct {v8, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 95
    throw v8

    .line 98
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v24           #urlBuff:Ljava/lang/StringBuffer;
    :cond_df
    const-string v25, "xml"

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_197

    .line 100
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 102
    .local v11, document:Lorg/dom4j/Document;
    const-string v25, "request"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 103
    .local v15, requestElm:Lorg/dom4j/Element;
    invoke-interface {v11, v15}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 106
    const-string v25, "action"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 108
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v25, "api_key"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 110
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v25, "auth_token"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 112
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v25, "target"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 114
    .local v21, targetElm:Lorg/dom4j/Element;
    const-string v25, "target_id"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 116
    .local v23, targetIdElm:Lorg/dom4j/Element;
    const-string v25, "new_name"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 117
    .local v14, newNameElm:Lorg/dom4j/Element;
    invoke-interface {v15, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 118
    invoke-interface {v15, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 119
    invoke-interface {v15, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 120
    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 121
    move-object/from16 v0, v23

    invoke-interface {v15, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 122
    invoke-interface {v15, v14}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 124
    const-string v25, "rename"

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 125
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 126
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 127
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 128
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 129
    invoke-interface {v14, v13}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 132
    .local v17, result:Ljava/lang/String;
    :try_start_166
    invoke-static/range {v17 .. v17}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 133
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 135
    .restart local v16       #responseElm:Lorg/dom4j/Element;
    const-string v25, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 136
    .restart local v19       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v19 .. v19}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v18

    .line 137
    .restart local v18       #status:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->setStatus(Ljava/lang/String;)V
    :try_end_181
    .catch Lorg/dom4j/DocumentException; {:try_start_166 .. :try_end_181} :catch_183

    goto/16 :goto_ca

    .line 140
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #status:Ljava/lang/String;
    .end local v19           #statusElm:Lorg/dom4j/Element;
    :catch_183
    move-exception v12

    .line 141
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 142
    const-string v25, "failed to parse to a document."

    .line 141
    move-object/from16 v0, v25

    invoke-direct {v8, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RenameResponse;->getStatus()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 144
    throw v8

    .line 147
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v14           #newNameElm:Lorg/dom4j/Element;
    .end local v15           #requestElm:Lorg/dom4j/Element;
    .end local v17           #result:Ljava/lang/String;
    .end local v21           #targetElm:Lorg/dom4j/Element;
    .end local v23           #targetIdElm:Lorg/dom4j/Element;
    :cond_197
    const-string v25, "soap"

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RenameMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_ca
.end method
