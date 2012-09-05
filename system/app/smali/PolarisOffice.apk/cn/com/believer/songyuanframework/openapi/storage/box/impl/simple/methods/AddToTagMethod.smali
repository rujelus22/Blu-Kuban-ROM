.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "AddToTagMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public addToTag(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;
    .registers 33
    .parameter "addToTagRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createAddToTagResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;

    move-result-object v7

    .line 48
    .local v7, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getTarget()Ljava/lang/String;

    move-result-object v23

    .line 51
    .local v23, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getTargetId()Ljava/lang/String;

    move-result-object v25

    .line 52
    .local v25, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagRequest;->getTags()[Ljava/lang/String;

    move-result-object v21

    .line 54
    .local v21, tags:[Ljava/lang/String;
    const-string v28, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_115

    .line 56
    new-instance v9, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v9}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 57
    .local v9, codec:Lorg/apache/commons/codec/net/URLCodec;
    if-eqz v21, :cond_37

    .line 58
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2e
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v13, v0, :cond_ca

    .line 65
    .end local v13           #i:I
    :cond_37
    const-string v28, "add_to_tag"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v27

    .line 66
    .local v27, urlBuff:Ljava/lang/StringBuffer;
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v28, "api_key"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v28, "auth_token"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    if-nez v21, :cond_dc

    .line 75
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    const-string v28, "tags[]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_7a
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v28, "target"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v28, "target_id"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    :try_start_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 97
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v15

    .line 99
    .local v15, responseElm:Lorg/dom4j/Element;
    const-string v28, "status"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 100
    .local v18, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v18 .. v18}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v17

    .line 101
    .local v17, status:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;->setStatus(Ljava/lang/String;)V
    :try_end_c9
    .catch Lorg/dom4j/DocumentException; {:try_start_a6 .. :try_end_c9} :catch_101

    .line 174
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v15           #responseElm:Lorg/dom4j/Element;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #statusElm:Lorg/dom4j/Element;
    .end local v27           #urlBuff:Ljava/lang/StringBuffer;
    :goto_c9
    return-object v7

    .line 59
    .restart local v9       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v13       #i:I
    :cond_ca
    aget-object v19, v21, v13

    .line 60
    .local v19, tag:Ljava/lang/String;
    const-string v28, "ISO-8859-1"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 61
    aput-object v19, v21, v13

    .line 58
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2e

    .line 79
    .end local v13           #i:I
    .end local v19           #tag:Ljava/lang/String;
    .restart local v27       #urlBuff:Ljava/lang/StringBuffer;
    :cond_dc
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_dd
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_7a

    .line 80
    aget-object v19, v21, v13

    .line 81
    .restart local v19       #tag:Ljava/lang/String;
    const-string v28, "&"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v28, "tags[]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v28, "="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    add-int/lit8 v13, v13, 0x1

    goto :goto_dd

    .line 104
    .end local v13           #i:I
    .end local v19           #tag:Ljava/lang/String;
    :catch_101
    move-exception v12

    .line 105
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 106
    const-string v28, "failed to parse to a document."

    .line 105
    move-object/from16 v0, v28

    invoke-direct {v8, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;->getStatus()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 108
    throw v8

    .line 111
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v27           #urlBuff:Ljava/lang/StringBuffer;
    :cond_115
    const-string v28, "xml"

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_1ef

    .line 113
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 115
    .local v11, document:Lorg/dom4j/Document;
    const-string v28, "request"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 116
    .local v14, requestElm:Lorg/dom4j/Element;
    invoke-interface {v11, v14}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 119
    const-string v28, "action"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 121
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v28, "api_key"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 123
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v28, "auth_token"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 125
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v28, "tags"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 127
    .local v22, tagsElm:Lorg/dom4j/Element;
    const-string v28, "target"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 129
    .local v24, targetElm:Lorg/dom4j/Element;
    const-string v28, "target_id"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v26

    .line 130
    .local v26, targetIdElm:Lorg/dom4j/Element;
    invoke-interface {v14, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 131
    invoke-interface {v14, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 132
    invoke-interface {v14, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 133
    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 134
    move-object/from16 v0, v24

    invoke-interface {v14, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 135
    move-object/from16 v0, v26

    invoke-interface {v14, v0}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 137
    const-string v28, "add_to_tag"

    move-object/from16 v0, v28

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 138
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 139
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 141
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 142
    if-eqz v21, :cond_193

    .line 143
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_18a
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-lt v13, v0, :cond_1d6

    .line 151
    .end local v13           #i:I
    :cond_193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 154
    .local v16, result:Ljava/lang/String;
    :try_start_1a7
    invoke-static/range {v16 .. v16}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 155
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v15

    .line 157
    .restart local v15       #responseElm:Lorg/dom4j/Element;
    const-string v28, "status"

    move-object/from16 v0, v28

    invoke-interface {v15, v0}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 158
    .restart local v18       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v18 .. v18}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v17

    .line 159
    .restart local v17       #status:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1c0
    .catch Lorg/dom4j/DocumentException; {:try_start_1a7 .. :try_end_1c0} :catch_1c2

    goto/16 :goto_c9

    .line 162
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v15           #responseElm:Lorg/dom4j/Element;
    .end local v17           #status:Ljava/lang/String;
    .end local v18           #statusElm:Lorg/dom4j/Element;
    :catch_1c2
    move-exception v12

    .line 163
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 164
    const-string v28, "failed to parse to a document."

    .line 163
    move-object/from16 v0, v28

    invoke-direct {v8, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/AddToTagResponse;->getStatus()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 166
    throw v8

    .line 144
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v16           #result:Ljava/lang/String;
    .restart local v13       #i:I
    :cond_1d6
    aget-object v19, v21, v13

    .line 146
    .restart local v19       #tag:Ljava/lang/String;
    const-string v28, "item"

    invoke-static/range {v28 .. v28}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 147
    .local v20, tagElm:Lorg/dom4j/Element;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 143
    add-int/lit8 v13, v13, 0x1

    goto :goto_18a

    .line 169
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v13           #i:I
    .end local v14           #requestElm:Lorg/dom4j/Element;
    .end local v19           #tag:Ljava/lang/String;
    .end local v20           #tagElm:Lorg/dom4j/Element;
    .end local v22           #tagsElm:Lorg/dom4j/Element;
    .end local v24           #targetElm:Lorg/dom4j/Element;
    .end local v26           #targetIdElm:Lorg/dom4j/Element;
    :cond_1ef
    const-string v28, "soap"

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/AddToTagMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_c9
.end method
