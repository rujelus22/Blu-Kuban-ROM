.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "GetFileInfoMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public getFileInfo(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;
    .registers 27
    .parameter "getFileInfoRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetFileInfoResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;

    move-result-object v13

    .line 48
    .local v13, getFileInfoResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoRequest;->getFileId()Ljava/lang/String;

    move-result-object v11

    .line 52
    .local v11, fileId:Ljava/lang/String;
    const-string v22, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_bd

    .line 54
    const-string v22, "get_file_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    .line 55
    .local v21, urlBuff:Ljava/lang/StringBuffer;
    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v22, "api_key"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    const-string v22, "auth_token"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v22, "&"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v22, "file_id"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v22, "="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    :try_start_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 69
    .local v8, doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 71
    .local v16, responseElm:Lorg/dom4j/Element;
    const-string v22, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 72
    .local v20, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v20 .. v20}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v19

    .line 73
    .local v19, status:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->setStatus(Ljava/lang/String;)V

    .line 74
    const-string v22, "s_get_file_info"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a8

    .line 76
    const-string v22, "info"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 77
    .local v14, infoElm:Lorg/dom4j/Element;
    invoke-static {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBoxFile(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v18

    .line 78
    .local v18, soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->setFile(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;)V
    :try_end_a8
    .catch Lorg/dom4j/DocumentException; {:try_start_64 .. :try_end_a8} :catch_a9

    .line 137
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v14           #infoElm:Lorg/dom4j/Element;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    .end local v19           #status:Ljava/lang/String;
    .end local v20           #statusElm:Lorg/dom4j/Element;
    .end local v21           #urlBuff:Ljava/lang/StringBuffer;
    :cond_a8
    :goto_a8
    return-object v13

    .line 80
    .restart local v21       #urlBuff:Ljava/lang/StringBuffer;
    :catch_a9
    move-exception v10

    .line 81
    .local v10, e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 82
    const-string v22, "failed to parse to a document."

    .line 81
    move-object/from16 v0, v22

    invoke-direct {v7, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .local v7, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 84
    throw v7

    .line 87
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v21           #urlBuff:Ljava/lang/StringBuffer;
    :cond_bd
    const-string v22, "xml"

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_170

    .line 89
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v9

    .line 91
    .local v9, document:Lorg/dom4j/Document;
    const-string v22, "request"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 92
    .local v15, requestElm:Lorg/dom4j/Element;
    invoke-interface {v9, v15}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 95
    const-string v22, "action"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 97
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v22, "api_key"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 99
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v22, "auth_token"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 101
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v22, "file_id"

    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v12

    .line 102
    .local v12, fileIdElm:Lorg/dom4j/Element;
    invoke-interface {v15, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 103
    invoke-interface {v15, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 104
    invoke-interface {v15, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 105
    invoke-interface {v15, v12}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 107
    const-string v22, "get_file_info"

    move-object/from16 v0, v22

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 108
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 109
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 110
    invoke-interface {v12, v11}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface {v9}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 113
    .local v17, result:Ljava/lang/String;
    :try_start_120
    invoke-static/range {v17 .. v17}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 114
    .restart local v8       #doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v16

    .line 116
    .restart local v16       #responseElm:Lorg/dom4j/Element;
    const-string v22, "status"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 117
    .restart local v20       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v20 .. v20}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v19

    .line 118
    .restart local v19       #status:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->setStatus(Ljava/lang/String;)V

    .line 119
    const-string v22, "s_get_file_info"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_a8

    .line 121
    const-string v22, "info"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 122
    .restart local v14       #infoElm:Lorg/dom4j/Element;
    invoke-static {v14}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBoxFile(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;

    move-result-object v18

    .line 123
    .restart local v18       #soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    move-object/from16 v0, v18

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->setFile(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;)V
    :try_end_15a
    .catch Lorg/dom4j/DocumentException; {:try_start_120 .. :try_end_15a} :catch_15c

    goto/16 :goto_a8

    .line 125
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v14           #infoElm:Lorg/dom4j/Element;
    .end local v16           #responseElm:Lorg/dom4j/Element;
    .end local v18           #soapFileInfo:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFile;
    .end local v19           #status:Ljava/lang/String;
    .end local v20           #statusElm:Lorg/dom4j/Element;
    :catch_15c
    move-exception v10

    .line 126
    .restart local v10       #e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 127
    const-string v22, "failed to parse to a document."

    .line 126
    move-object/from16 v0, v22

    invoke-direct {v7, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .restart local v7       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFileInfoResponse;->getStatus()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 129
    throw v7

    .line 132
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #document:Lorg/dom4j/Document;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v12           #fileIdElm:Lorg/dom4j/Element;
    .end local v15           #requestElm:Lorg/dom4j/Element;
    .end local v17           #result:Ljava/lang/String;
    :cond_170
    const-string v22, "soap"

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFileInfoMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_a8
.end method
