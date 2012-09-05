.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "RequestFriendsMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;
    .registers 34
    .parameter "requestFriendsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createRequestFriendsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;

    move-result-object v7

    .line 50
    .local v7, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 52
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 53
    .local v17, message:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getEmails()[Ljava/lang/String;

    move-result-object v14

    .line 54
    .local v14, emails:[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsRequest;->getParams()[Ljava/lang/String;

    move-result-object v21

    .line 56
    .local v21, params:[Ljava/lang/String;
    const-string v29, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_122

    .line 58
    invoke-static/range {v17 .. v17}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/URLUtils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 59
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2c
    array-length v0, v14

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_c1

    .line 64
    const-string v29, "request_friends"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v28

    .line 65
    .local v28, urlBuff:Ljava/lang/StringBuffer;
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v29, "api_key"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v29, "auth_token"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    if-nez v14, :cond_69

    .line 78
    :cond_69
    const/16 v16, 0x0

    :goto_6b
    array-length v0, v14

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_cd

    .line 86
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v29, "message"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    if-nez v21, :cond_e6

    .line 91
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v29, "params[]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    :cond_9b
    :try_start_9b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 105
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v24

    .line 107
    .local v24, responseElm:Lorg/dom4j/Element;
    const-string v29, "status"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v27

    .line 108
    .local v27, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v27 .. v27}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v26

    .line 109
    .local v26, status:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;->setStatus(Ljava/lang/String;)V
    :try_end_c0
    .catch Lorg/dom4j/DocumentException; {:try_start_9b .. :try_end_c0} :catch_10e

    .line 189
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v16           #i:I
    .end local v24           #responseElm:Lorg/dom4j/Element;
    .end local v26           #status:Ljava/lang/String;
    .end local v27           #statusElm:Lorg/dom4j/Element;
    .end local v28           #urlBuff:Ljava/lang/StringBuffer;
    :goto_c0
    return-object v7

    .line 60
    .restart local v16       #i:I
    :cond_c1
    aget-object v29, v14, v16

    invoke-static/range {v29 .. v29}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/URLUtils;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aput-object v29, v14, v16

    .line 59
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2c

    .line 79
    .restart local v28       #urlBuff:Ljava/lang/StringBuffer;
    :cond_cd
    aget-object v12, v14, v16

    .line 80
    .local v12, email:Ljava/lang/String;
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v29, "emails[]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v16, v16, 0x1

    goto :goto_6b

    .line 95
    .end local v12           #email:Ljava/lang/String;
    :cond_e6
    const/16 v16, 0x0

    :goto_e8
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_9b

    .line 96
    aget-object v19, v21, v16

    .line 97
    .local v19, param:Ljava/lang/String;
    const-string v29, "&"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v29, "params[]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v29, "="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    add-int/lit8 v16, v16, 0x1

    goto :goto_e8

    .line 112
    .end local v19           #param:Ljava/lang/String;
    :catch_10e
    move-exception v11

    .line 113
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 114
    const-string v29, "failed to parse to a document."

    .line 113
    move-object/from16 v0, v29

    invoke-direct {v8, v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;->getStatus()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 116
    throw v8

    .line 119
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v16           #i:I
    .end local v28           #urlBuff:Ljava/lang/StringBuffer;
    :cond_122
    const-string v29, "xml"

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_224

    .line 121
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 123
    .local v10, document:Lorg/dom4j/Document;
    const-string v29, "request"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 124
    .local v23, requestElm:Lorg/dom4j/Element;
    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 127
    const-string v29, "action"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 129
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v29, "api_key"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 131
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v29, "auth_token"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 133
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v29, "emails"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 135
    .local v15, emailsElm:Lorg/dom4j/Element;
    const-string v29, "message"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 137
    .local v18, messageElm:Lorg/dom4j/Element;
    const-string v29, "params"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 138
    .local v22, paramsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 139
    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 140
    move-object/from16 v0, v23

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 141
    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 142
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 143
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 145
    const-string v29, "request_friends"

    move-object/from16 v0, v29

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 146
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 147
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 148
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 149
    if-eqz v14, :cond_1a6

    .line 150
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_19d
    array-length v0, v14

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_1fa

    .line 158
    .end local v16           #i:I
    :cond_1a6
    if-eqz v21, :cond_1b5

    .line 159
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_1aa
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-lt v0, v1, :cond_20b

    .line 167
    .end local v16           #i:I
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 169
    .local v25, result:Ljava/lang/String;
    :try_start_1c9
    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 170
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v24

    .line 172
    .restart local v24       #responseElm:Lorg/dom4j/Element;
    const-string v29, "status"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v27

    .line 173
    .restart local v27       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v27 .. v27}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v26

    .line 174
    .restart local v26       #status:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;->setStatus(Ljava/lang/String;)V
    :try_end_1e4
    .catch Lorg/dom4j/DocumentException; {:try_start_1c9 .. :try_end_1e4} :catch_1e6

    goto/16 :goto_c0

    .line 177
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v24           #responseElm:Lorg/dom4j/Element;
    .end local v26           #status:Ljava/lang/String;
    .end local v27           #statusElm:Lorg/dom4j/Element;
    :catch_1e6
    move-exception v11

    .line 178
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 179
    const-string v29, "failed to parse to a document."

    .line 178
    move-object/from16 v0, v29

    invoke-direct {v8, v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/RequestFriendsResponse;->getStatus()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 181
    throw v8

    .line 151
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v25           #result:Ljava/lang/String;
    .restart local v16       #i:I
    :cond_1fa
    aget-object v12, v14, v16

    .line 153
    .restart local v12       #email:Ljava/lang/String;
    const-string v29, "item"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 154
    .local v13, emailElm:Lorg/dom4j/Element;
    invoke-interface {v13, v12}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 155
    invoke-interface {v15, v13}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 150
    add-int/lit8 v16, v16, 0x1

    goto :goto_19d

    .line 160
    .end local v12           #email:Ljava/lang/String;
    .end local v13           #emailElm:Lorg/dom4j/Element;
    :cond_20b
    aget-object v19, v21, v16

    .line 162
    .restart local v19       #param:Ljava/lang/String;
    const-string v29, "item"

    invoke-static/range {v29 .. v29}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 163
    .local v20, paramElm:Lorg/dom4j/Element;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 164
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 159
    add-int/lit8 v16, v16, 0x1

    goto :goto_1aa

    .line 184
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v15           #emailsElm:Lorg/dom4j/Element;
    .end local v16           #i:I
    .end local v18           #messageElm:Lorg/dom4j/Element;
    .end local v19           #param:Ljava/lang/String;
    .end local v20           #paramElm:Lorg/dom4j/Element;
    .end local v22           #paramsElm:Lorg/dom4j/Element;
    .end local v23           #requestElm:Lorg/dom4j/Element;
    :cond_224
    const-string v29, "soap"

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/RequestFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_c0
.end method
