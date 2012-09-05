.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "ExportTagsMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public exportTags(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;
    .registers 25
    .parameter "exportTagsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createExportTagsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;

    move-result-object v11

    .line 51
    .local v11, exportTagsResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, authToken:Ljava/lang/String;
    const-string v20, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9d

    .line 56
    const-string v20, "export_tags"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    .line 57
    .local v19, urlBuff:Ljava/lang/StringBuffer;
    const-string v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v20, "api_key"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v20, "&"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const-string v20, "auth_token"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v20, "="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    :try_start_4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 67
    .local v8, doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v13

    .line 69
    .local v13, responseElm:Lorg/dom4j/Element;
    const-string v20, "status"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 70
    .local v16, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v15

    .line 71
    .local v15, status:Ljava/lang/String;
    invoke-interface {v11, v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->setStatus(Ljava/lang/String;)V

    .line 72
    const-string v20, "export_tags_ok"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_88

    .line 74
    const-string v20, "tags"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 76
    .local v18, tagsXMLElm:Lorg/dom4j/Element;
    invoke-static/range {v18 .. v18}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->transferTags2List(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v17

    .line 77
    .local v17, tagsList:Ljava/util/List;
    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->setTagList(Ljava/util/List;)V
    :try_end_88
    .catch Lorg/dom4j/DocumentException; {:try_start_4c .. :try_end_88} :catch_89

    .line 133
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v13           #responseElm:Lorg/dom4j/Element;
    .end local v15           #status:Ljava/lang/String;
    .end local v16           #statusElm:Lorg/dom4j/Element;
    .end local v17           #tagsList:Ljava/util/List;
    .end local v18           #tagsXMLElm:Lorg/dom4j/Element;
    .end local v19           #urlBuff:Ljava/lang/StringBuffer;
    :cond_88
    :goto_88
    return-object v11

    .line 79
    .restart local v19       #urlBuff:Ljava/lang/StringBuffer;
    :catch_89
    move-exception v10

    .line 80
    .local v10, e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 81
    const-string v20, "failed to parse to a document."

    .line 80
    move-object/from16 v0, v20

    invoke-direct {v7, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    .local v7, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->getStatus()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 83
    throw v7

    .line 86
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v19           #urlBuff:Ljava/lang/StringBuffer;
    :cond_9d
    const-string v20, "xml"

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13c

    .line 88
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v9

    .line 90
    .local v9, document:Lorg/dom4j/Document;
    const-string v20, "request"

    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 91
    .local v12, requestElm:Lorg/dom4j/Element;
    invoke-interface {v9, v12}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 94
    const-string v20, "action"

    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 96
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v20, "api_key"

    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 98
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v20, "auth_token"

    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 99
    .local v6, authTokenElm:Lorg/dom4j/Element;
    invoke-interface {v12, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 100
    invoke-interface {v12, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 101
    invoke-interface {v12, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 103
    const-string v20, "export_tags"

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 104
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 105
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface {v9}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 109
    .local v14, result:Ljava/lang/String;
    :try_start_f4
    invoke-static {v14}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 110
    .restart local v8       #doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v13

    .line 112
    .restart local v13       #responseElm:Lorg/dom4j/Element;
    const-string v20, "status"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 113
    .restart local v16       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v16 .. v16}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v15

    .line 114
    .restart local v15       #status:Ljava/lang/String;
    invoke-interface {v11, v15}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->setStatus(Ljava/lang/String;)V

    .line 115
    const-string v20, "export_tags_ok"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_88

    .line 117
    const-string v20, "tags"

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 119
    .restart local v18       #tagsXMLElm:Lorg/dom4j/Element;
    invoke-static/range {v18 .. v18}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->transferTags2List(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v17

    .line 120
    .restart local v17       #tagsList:Ljava/util/List;
    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->setTagList(Ljava/util/List;)V
    :try_end_126
    .catch Lorg/dom4j/DocumentException; {:try_start_f4 .. :try_end_126} :catch_128

    goto/16 :goto_88

    .line 122
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v13           #responseElm:Lorg/dom4j/Element;
    .end local v15           #status:Ljava/lang/String;
    .end local v16           #statusElm:Lorg/dom4j/Element;
    .end local v17           #tagsList:Ljava/util/List;
    .end local v18           #tagsXMLElm:Lorg/dom4j/Element;
    :catch_128
    move-exception v10

    .line 123
    .restart local v10       #e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 124
    const-string v20, "failed to parse to a document."

    .line 123
    move-object/from16 v0, v20

    invoke-direct {v7, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .restart local v7       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/ExportTagsResponse;->getStatus()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 126
    throw v7

    .line 128
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #document:Lorg/dom4j/Document;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v12           #requestElm:Lorg/dom4j/Element;
    .end local v14           #result:Ljava/lang/String;
    :cond_13c
    const-string v20, "soap"

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/ExportTagsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_88
.end method
