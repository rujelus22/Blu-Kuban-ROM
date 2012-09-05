.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "CreateFolderMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public createFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    .registers 32
    .parameter "createFolderRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createCreateFolderResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;

    move-result-object v9

    .line 54
    .local v9, createFolderResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->getFolderName()Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, name:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->getParentFolderId()Ljava/lang/String;

    move-result-object v16

    .line 58
    .local v16, parentFolderId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderRequest;->isShare()Z

    move-result v21

    .line 60
    .local v21, share:Z
    const-string v27, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_104

    .line 62
    new-instance v8, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v8}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 63
    .local v8, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v27, "ISO-8859-1"

    move-object/from16 v0, v27

    invoke-virtual {v8, v14, v0}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 65
    const-string v27, "create_folder"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v26

    .line 66
    .local v26, urlBuff:Ljava/lang/StringBuffer;
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v27, "api_key"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v27, "auth_token"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v27, "parent_id"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v27, "name"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v27, "&"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v27, "share"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v27, "="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    if-eqz v21, :cond_ea

    .line 86
    const-string v27, "1"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :goto_a5
    :try_start_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 92
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v19

    .line 94
    .local v19, responseElm:Lorg/dom4j/Element;
    const-string v27, "status"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v25

    .line 95
    .local v25, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v25 .. v25}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v24

    .line 96
    .local v24, status:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v9, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->setStatus(Ljava/lang/String;)V

    .line 97
    const-string v27, "create_ok"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e9

    .line 99
    const-string v27, "folder"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 101
    .local v13, folderElm:Lorg/dom4j/Element;
    invoke-static {v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBoxFolder(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object v23

    .line 102
    .local v23, soapFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->setFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;)V
    :try_end_e9
    .catch Lorg/dom4j/DocumentException; {:try_start_a5 .. :try_end_e9} :catch_f0

    .line 175
    .end local v8           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v13           #folderElm:Lorg/dom4j/Element;
    .end local v19           #responseElm:Lorg/dom4j/Element;
    .end local v23           #soapFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #statusElm:Lorg/dom4j/Element;
    .end local v26           #urlBuff:Ljava/lang/StringBuffer;
    :cond_e9
    :goto_e9
    return-object v9

    .line 88
    .restart local v8       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v26       #urlBuff:Ljava/lang/StringBuffer;
    :cond_ea
    const-string v27, "0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a5

    .line 104
    :catch_f0
    move-exception v12

    .line 105
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 106
    const-string v27, "failed to parse to a document."

    .line 105
    move-object/from16 v0, v27

    invoke-direct {v7, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .local v7, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->getStatus()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 108
    throw v7

    .line 111
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v8           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v26           #urlBuff:Ljava/lang/StringBuffer;
    :cond_104
    const-string v27, "xml"

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1f7

    .line 113
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 115
    .local v11, document:Lorg/dom4j/Document;
    const-string v27, "request"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 116
    .local v18, requestElm:Lorg/dom4j/Element;
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 119
    const-string v27, "action"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 121
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v27, "api_key"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 123
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v27, "auth_token"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 125
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v27, "parent_id"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v17

    .line 127
    .local v17, parentIdElm:Lorg/dom4j/Element;
    const-string v27, "name"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 129
    .local v15, nameElm:Lorg/dom4j/Element;
    const-string v27, "share"

    invoke-static/range {v27 .. v27}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 130
    .local v22, shareElm:Lorg/dom4j/Element;
    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 131
    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 132
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 133
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 134
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 135
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 137
    const-string v27, "create_folder"

    move-object/from16 v0, v27

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 138
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 139
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 141
    invoke-interface {v15, v14}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 142
    if-eqz v21, :cond_1ed

    .line 143
    const-string v27, "1"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 147
    :goto_189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v27 .. v29}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 150
    .local v20, result:Ljava/lang/String;
    :try_start_19d
    invoke-static/range {v20 .. v20}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 151
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v19

    .line 153
    .restart local v19       #responseElm:Lorg/dom4j/Element;
    const-string v27, "status"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v25

    .line 154
    .restart local v25       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v25 .. v25}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v24

    .line 155
    .restart local v24       #status:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-interface {v9, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->setStatus(Ljava/lang/String;)V

    .line 156
    const-string v27, "create_ok"

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e9

    .line 158
    const-string v27, "folder"

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 160
    .restart local v13       #folderElm:Lorg/dom4j/Element;
    invoke-static {v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toBoxFolder(Lorg/dom4j/Element;)Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;

    move-result-object v23

    .line 161
    .restart local v23       #soapFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->setFolder(Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;)V
    :try_end_1d7
    .catch Lorg/dom4j/DocumentException; {:try_start_19d .. :try_end_1d7} :catch_1d9

    goto/16 :goto_e9

    .line 163
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v13           #folderElm:Lorg/dom4j/Element;
    .end local v19           #responseElm:Lorg/dom4j/Element;
    .end local v23           #soapFolder:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxFolder;
    .end local v24           #status:Ljava/lang/String;
    .end local v25           #statusElm:Lorg/dom4j/Element;
    :catch_1d9
    move-exception v12

    .line 164
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 165
    const-string v27, "failed to parse to a document."

    .line 164
    move-object/from16 v0, v27

    invoke-direct {v7, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    .restart local v7       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v9}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/CreateFolderResponse;->getStatus()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 167
    throw v7

    .line 145
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v20           #result:Ljava/lang/String;
    :cond_1ed
    const-string v27, "0"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    goto :goto_189

    .line 170
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v15           #nameElm:Lorg/dom4j/Element;
    .end local v17           #parentIdElm:Lorg/dom4j/Element;
    .end local v18           #requestElm:Lorg/dom4j/Element;
    .end local v22           #shareElm:Lorg/dom4j/Element;
    :cond_1f7
    const-string v27, "soap"

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/CreateFolderMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_e9
.end method
