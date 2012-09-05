.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "AddToMyBoxMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public addToMyBox(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;
    .registers 35
    .parameter "addToMyBoxRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createAddToMyBoxResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;

    move-result-object v3

    .line 50
    .local v3, addToMyBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getApiKey()Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v6

    .line 52
    .local v6, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getFileId()Ljava/lang/String;

    move-result-object v13

    .line 53
    .local v13, fileId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getPublicName()Ljava/lang/String;

    move-result-object v18

    .line 54
    .local v18, publicName:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getFolderId()Ljava/lang/String;

    move-result-object v15

    .line 55
    .local v15, folderId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxRequest;->getTags()[Ljava/lang/String;

    move-result-object v27

    .line 57
    .local v27, tags:[Ljava/lang/String;
    const-string v30, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_13d

    .line 59
    new-instance v9, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v9}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 60
    .local v9, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v30, "ISO-8859-1"

    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 61
    if-eqz v27, :cond_48

    .line 62
    const/16 v17, 0x0

    .local v17, i:I
    :goto_3d
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-lt v0, v1, :cond_ef

    .line 69
    .end local v17           #i:I
    :cond_48
    const-string v30, "add_to_mybox"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    .line 70
    .local v29, urlBuff:Ljava/lang/StringBuffer;
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v30, "api_key"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v30, "auth_token"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v30, "file_id"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v30, "public_name"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v30, "folder_id"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    if-nez v27, :cond_101

    .line 91
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v30, "tags[]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_c9
    :try_start_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 105
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v21

    .line 107
    .local v21, responseElm:Lorg/dom4j/Element;
    const-string v30, "status"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 108
    .local v24, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v24 .. v24}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v23

    .line 109
    .local v23, status:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;->setStatus(Ljava/lang/String;)V
    :try_end_ee
    .catch Lorg/dom4j/DocumentException; {:try_start_c9 .. :try_end_ee} :catch_129

    .line 186
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v21           #responseElm:Lorg/dom4j/Element;
    .end local v23           #status:Ljava/lang/String;
    .end local v24           #statusElm:Lorg/dom4j/Element;
    .end local v29           #urlBuff:Ljava/lang/StringBuffer;
    :goto_ee
    return-object v3

    .line 63
    .restart local v9       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v17       #i:I
    :cond_ef
    aget-object v25, v27, v17

    .line 64
    .local v25, tag:Ljava/lang/String;
    const-string v30, "ISO-8859-1"

    move-object/from16 v0, v25

    move-object/from16 v1, v30

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 65
    aput-object v25, v27, v17

    .line 62
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3d

    .line 95
    .end local v17           #i:I
    .end local v25           #tag:Ljava/lang/String;
    .restart local v29       #urlBuff:Ljava/lang/StringBuffer;
    :cond_101
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_103
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-ge v0, v1, :cond_c9

    .line 96
    aget-object v25, v27, v17

    .line 97
    .restart local v25       #tag:Ljava/lang/String;
    const-string v30, "&"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v30, "tags[]"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v17, v17, 0x1

    goto :goto_103

    .line 112
    .end local v17           #i:I
    .end local v25           #tag:Ljava/lang/String;
    :catch_129
    move-exception v12

    .line 113
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 114
    const-string v30, "failed to parse to a document."

    .line 113
    move-object/from16 v0, v30

    invoke-direct {v8, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;->getStatus()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 116
    throw v8

    .line 119
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v29           #urlBuff:Ljava/lang/StringBuffer;
    :cond_13d
    const-string v30, "xml"

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_236

    .line 121
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 123
    .local v11, document:Lorg/dom4j/Document;
    const-string v30, "request"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 124
    .local v20, requestElm:Lorg/dom4j/Element;
    move-object/from16 v0, v20

    invoke-interface {v11, v0}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 127
    const-string v30, "action"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 129
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v30, "api_key"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v5

    .line 131
    .local v5, apiKeyElm:Lorg/dom4j/Element;
    const-string v30, "auth_token"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v7

    .line 133
    .local v7, authTokenElm:Lorg/dom4j/Element;
    const-string v30, "file_id"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 135
    .local v14, fileIdElm:Lorg/dom4j/Element;
    const-string v30, "public_name"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 137
    .local v19, publicNameElm:Lorg/dom4j/Element;
    const-string v30, "folder_id"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 139
    .local v16, folderIdElm:Lorg/dom4j/Element;
    const-string v30, "tags"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v28

    .line 140
    .local v28, tagsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 141
    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 142
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 143
    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 144
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 145
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 146
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 148
    const-string v30, "add_to_mybox"

    move-object/from16 v0, v30

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 149
    invoke-interface {v5, v4}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 150
    invoke-interface {v7, v6}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 151
    invoke-interface {v14, v13}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 152
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 154
    if-eqz v27, :cond_1d8

    .line 155
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1cd
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v17

    move/from16 v1, v30

    if-lt v0, v1, :cond_21d

    .line 163
    .end local v17           #i:I
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v30 .. v32}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 166
    .local v22, result:Ljava/lang/String;
    :try_start_1ec
    invoke-static/range {v22 .. v22}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 167
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v21

    .line 169
    .restart local v21       #responseElm:Lorg/dom4j/Element;
    const-string v30, "status"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 170
    .restart local v24       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v24 .. v24}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v23

    .line 171
    .restart local v23       #status:Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-interface {v3, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;->setStatus(Ljava/lang/String;)V
    :try_end_207
    .catch Lorg/dom4j/DocumentException; {:try_start_1ec .. :try_end_207} :catch_209

    goto/16 :goto_ee

    .line 174
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v21           #responseElm:Lorg/dom4j/Element;
    .end local v23           #status:Ljava/lang/String;
    .end local v24           #statusElm:Lorg/dom4j/Element;
    :catch_209
    move-exception v12

    .line 175
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 176
    const-string v30, "failed to parse to a document."

    .line 175
    move-object/from16 v0, v30

    invoke-direct {v8, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v3}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToMyBoxResponse;->getStatus()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 178
    throw v8

    .line 156
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v22           #result:Ljava/lang/String;
    .restart local v17       #i:I
    :cond_21d
    aget-object v25, v27, v17

    .line 158
    .restart local v25       #tag:Ljava/lang/String;
    const-string v30, "item"

    invoke-static/range {v30 .. v30}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v26

    .line 159
    .local v26, tagElm:Lorg/dom4j/Element;
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 155
    add-int/lit8 v17, v17, 0x1

    goto :goto_1cd

    .line 181
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v5           #apiKeyElm:Lorg/dom4j/Element;
    .end local v7           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v14           #fileIdElm:Lorg/dom4j/Element;
    .end local v16           #folderIdElm:Lorg/dom4j/Element;
    .end local v17           #i:I
    .end local v19           #publicNameElm:Lorg/dom4j/Element;
    .end local v20           #requestElm:Lorg/dom4j/Element;
    .end local v25           #tag:Ljava/lang/String;
    .end local v26           #tagElm:Lorg/dom4j/Element;
    .end local v28           #tagsElm:Lorg/dom4j/Element;
    :cond_236
    const-string v30, "soap"

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToMyBoxMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_ee
.end method
