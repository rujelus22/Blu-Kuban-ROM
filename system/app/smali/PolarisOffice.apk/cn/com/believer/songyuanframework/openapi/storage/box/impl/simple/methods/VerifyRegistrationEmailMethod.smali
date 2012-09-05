.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "VerifyRegistrationEmailMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public verifyRegistrationEmail(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;
    .registers 24
    .parameter "verifyRegistrationEmailRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createVerifyRegistrationEmailResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;

    move-result-object v5

    .line 46
    .local v5, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailRequest;->getLoginName()Ljava/lang/String;

    move-result-object v12

    .line 49
    .local v12, loginName:Ljava/lang/String;
    const-string v19, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_91

    .line 51
    new-instance v7, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v7}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 52
    .local v7, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v19, "ISO-8859-1"

    move-object/from16 v0, v19

    invoke-virtual {v7, v12, v0}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 54
    const-string v19, "verify_registration_email"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v18

    .line 55
    .local v18, urlBuff:Ljava/lang/StringBuffer;
    const-string v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v19, "api_key"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v19, "&"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v19, "login"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v19, "="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :try_start_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 65
    .local v8, doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v14

    .line 67
    .local v14, responseElm:Lorg/dom4j/Element;
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 68
    .local v17, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 69
    .local v16, status:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;->setStatus(Ljava/lang/String;)V
    :try_end_7c
    .catch Lorg/dom4j/DocumentException; {:try_start_59 .. :try_end_7c} :catch_7d

    .line 117
    .end local v7           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v14           #responseElm:Lorg/dom4j/Element;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #statusElm:Lorg/dom4j/Element;
    .end local v18           #urlBuff:Ljava/lang/StringBuffer;
    :goto_7c
    return-object v5

    .line 72
    .restart local v7       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v18       #urlBuff:Ljava/lang/StringBuffer;
    :catch_7d
    move-exception v10

    .line 73
    .local v10, e:Lorg/dom4j/DocumentException;
    new-instance v6, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 74
    const-string v19, "failed to parse to a document."

    .line 73
    move-object/from16 v0, v19

    invoke-direct {v6, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    .local v6, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;->getStatus()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 76
    throw v6

    .line 79
    .end local v6           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v7           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v18           #urlBuff:Ljava/lang/StringBuffer;
    :cond_91
    const-string v19, "xml"

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_117

    .line 81
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v9

    .line 82
    .local v9, document:Lorg/dom4j/Document;
    const-string v19, "request"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 83
    .local v13, requestElm:Lorg/dom4j/Element;
    invoke-interface {v9, v13}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 84
    const-string v19, "action"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 85
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v19, "api_key"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 86
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v19, "login"

    invoke-static/range {v19 .. v19}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    .line 87
    .local v11, loginElm:Lorg/dom4j/Element;
    invoke-interface {v13, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 88
    invoke-interface {v13, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 89
    invoke-interface {v13, v11}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 91
    const-string v19, "verify_registration_email"

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 92
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 93
    invoke-interface {v11, v12}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-interface {v9}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, result:Ljava/lang/String;
    :try_start_e8
    invoke-static {v15}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 98
    .restart local v8       #doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v14

    .line 100
    .restart local v14       #responseElm:Lorg/dom4j/Element;
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 101
    .restart local v17       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v17 .. v17}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v16

    .line 102
    .restart local v16       #status:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;->setStatus(Ljava/lang/String;)V
    :try_end_101
    .catch Lorg/dom4j/DocumentException; {:try_start_e8 .. :try_end_101} :catch_103

    goto/16 :goto_7c

    .line 105
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v14           #responseElm:Lorg/dom4j/Element;
    .end local v16           #status:Ljava/lang/String;
    .end local v17           #statusElm:Lorg/dom4j/Element;
    :catch_103
    move-exception v10

    .line 106
    .restart local v10       #e:Lorg/dom4j/DocumentException;
    new-instance v6, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 107
    const-string v19, "failed to parse to a document."

    .line 106
    move-object/from16 v0, v19

    invoke-direct {v6, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    .restart local v6       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v5}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/VerifyRegistrationEmailResponse;->getStatus()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 109
    throw v6

    .line 112
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #document:Lorg/dom4j/Document;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v11           #loginElm:Lorg/dom4j/Element;
    .end local v13           #requestElm:Lorg/dom4j/Element;
    .end local v15           #result:Ljava/lang/String;
    :cond_117
    const-string v19, "soap"

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/VerifyRegistrationEmailMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_7c
.end method
