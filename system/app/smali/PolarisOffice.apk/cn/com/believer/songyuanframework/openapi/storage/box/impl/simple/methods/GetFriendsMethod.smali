.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "GetFriendsMethod.java"


# static fields
.field public static final PARAMS_KEY_NOZIP:Ljava/lang/String; = "nozip"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public getFriends(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;
    .registers 30
    .parameter "getFriendsRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createGetFriendsResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;

    move-result-object v13

    .line 57
    .local v13, getFriendsResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsRequest;->getParams()[Ljava/lang/String;

    move-result-object v17

    .line 61
    .local v17, params:[Ljava/lang/String;
    const-string v25, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f3

    .line 63
    const-string v25, "get_friends"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    .line 64
    .local v24, urlBuff:Ljava/lang/StringBuffer;
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    const-string v25, "api_key"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v25, "auth_token"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    if-nez v17, :cond_b2

    .line 73
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v25, "params[]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_61
    :try_start_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 88
    .local v8, doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v20

    .line 90
    .local v20, responseElm:Lorg/dom4j/Element;
    const-string v25, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 91
    .local v23, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v23 .. v23}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v22

    .line 92
    .local v22, status:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setStatus(Ljava/lang/String;)V

    .line 93
    const-string v25, "s_get_friends"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b1

    .line 95
    const-string v25, "friends"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    .line 97
    .local v11, friendsElm:Lorg/dom4j/Element;
    if-eqz v17, :cond_d5

    .line 98
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    const-string v26, "nozip"

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d5

    .line 100
    invoke-static {v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toFriendsList(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v12

    .line 101
    .local v12, friendsList:Ljava/util/List;
    invoke-interface {v13, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setFriendList(Ljava/util/List;)V
    :try_end_b1
    .catch Lorg/dom4j/DocumentException; {:try_start_61 .. :try_end_b1} :catch_df

    .line 180
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v11           #friendsElm:Lorg/dom4j/Element;
    .end local v12           #friendsList:Ljava/util/List;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #statusElm:Lorg/dom4j/Element;
    .end local v24           #urlBuff:Ljava/lang/StringBuffer;
    :cond_b1
    :goto_b1
    return-object v13

    .line 78
    .restart local v24       #urlBuff:Ljava/lang/StringBuffer;
    :cond_b2
    const/4 v14, 0x0

    .local v14, i:I
    :goto_b3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_61

    .line 79
    aget-object v15, v17, v14

    .line 80
    .local v15, param:Ljava/lang/String;
    const-string v25, "&"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v25, "params[]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v25, "="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    add-int/lit8 v14, v14, 0x1

    goto :goto_b3

    .line 104
    .end local v14           #i:I
    .end local v15           #param:Ljava/lang/String;
    .restart local v8       #doc:Lorg/dom4j/Document;
    .restart local v11       #friendsElm:Lorg/dom4j/Element;
    .restart local v20       #responseElm:Lorg/dom4j/Element;
    .restart local v22       #status:Ljava/lang/String;
    .restart local v23       #statusElm:Lorg/dom4j/Element;
    :cond_d5
    :try_start_d5
    invoke-interface {v11}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v25

    .line 103
    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setEncodedFriends(Ljava/lang/String;)V
    :try_end_de
    .catch Lorg/dom4j/DocumentException; {:try_start_d5 .. :try_end_de} :catch_df

    goto :goto_b1

    .line 107
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v11           #friendsElm:Lorg/dom4j/Element;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #statusElm:Lorg/dom4j/Element;
    :catch_df
    move-exception v10

    .line 108
    .local v10, e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 109
    const-string v25, "failed to parse to a document."

    .line 108
    move-object/from16 v0, v25

    invoke-direct {v7, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    .local v7, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->getStatus()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 111
    throw v7

    .line 114
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v24           #urlBuff:Ljava/lang/StringBuffer;
    :cond_f3
    const-string v25, "xml"

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1ea

    .line 116
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v9

    .line 118
    .local v9, document:Lorg/dom4j/Document;
    const-string v25, "request"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 119
    .local v19, requestElm:Lorg/dom4j/Element;
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 122
    const-string v25, "action"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 124
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v25, "api_key"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 126
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v25, "auth_token"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 128
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v25, "params"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 129
    .local v18, paramsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 130
    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 131
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 132
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 134
    const-string v25, "get_friends"

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 135
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 136
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 137
    if-eqz v17, :cond_157

    .line 138
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_14e
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v14, v0, :cond_1c7

    .line 146
    .end local v14           #i:I
    :cond_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-interface {v9}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 148
    .local v21, result:Ljava/lang/String;
    :try_start_16b
    invoke-static/range {v21 .. v21}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v8

    .line 149
    .restart local v8       #doc:Lorg/dom4j/Document;
    invoke-interface {v8}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v20

    .line 151
    .restart local v20       #responseElm:Lorg/dom4j/Element;
    const-string v25, "status"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v23

    .line 152
    .restart local v23       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v23 .. v23}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v22

    .line 153
    .restart local v22       #status:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setStatus(Ljava/lang/String;)V

    .line 154
    const-string v25, "s_get_friends"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b1

    .line 156
    const-string v25, "friends"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v11

    .line 158
    .restart local v11       #friendsElm:Lorg/dom4j/Element;
    if-eqz v17, :cond_1df

    .line 159
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v25

    const-string v26, "nozip"

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1df

    .line 161
    invoke-static {v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/utils/ConverterUtils;->toFriendsList(Lorg/dom4j/Element;)Ljava/util/List;

    move-result-object v12

    .line 162
    .restart local v12       #friendsList:Ljava/util/List;
    invoke-interface {v13, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setFriendList(Ljava/util/List;)V
    :try_end_1b1
    .catch Lorg/dom4j/DocumentException; {:try_start_16b .. :try_end_1b1} :catch_1b3

    goto/16 :goto_b1

    .line 168
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v11           #friendsElm:Lorg/dom4j/Element;
    .end local v12           #friendsList:Ljava/util/List;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #statusElm:Lorg/dom4j/Element;
    :catch_1b3
    move-exception v10

    .line 169
    .restart local v10       #e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 170
    const-string v25, "failed to parse to a document."

    .line 169
    move-object/from16 v0, v25

    invoke-direct {v7, v0, v10}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    .restart local v7       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v13}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->getStatus()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 172
    throw v7

    .line 139
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v10           #e:Lorg/dom4j/DocumentException;
    .end local v21           #result:Ljava/lang/String;
    .restart local v14       #i:I
    :cond_1c7
    aget-object v15, v17, v14

    .line 141
    .restart local v15       #param:Ljava/lang/String;
    const-string v25, "item"

    invoke-static/range {v25 .. v25}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 142
    .local v16, paramElm:Lorg/dom4j/Element;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 138
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_14e

    .line 165
    .end local v14           #i:I
    .end local v15           #param:Ljava/lang/String;
    .end local v16           #paramElm:Lorg/dom4j/Element;
    .restart local v8       #doc:Lorg/dom4j/Document;
    .restart local v11       #friendsElm:Lorg/dom4j/Element;
    .restart local v20       #responseElm:Lorg/dom4j/Element;
    .restart local v21       #result:Ljava/lang/String;
    .restart local v22       #status:Ljava/lang/String;
    .restart local v23       #statusElm:Lorg/dom4j/Element;
    :cond_1df
    :try_start_1df
    invoke-interface {v11}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v25

    .line 164
    move-object/from16 v0, v25

    invoke-interface {v13, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/GetFriendsResponse;->setEncodedFriends(Ljava/lang/String;)V
    :try_end_1e8
    .catch Lorg/dom4j/DocumentException; {:try_start_1df .. :try_end_1e8} :catch_1b3

    goto/16 :goto_b1

    .line 175
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v8           #doc:Lorg/dom4j/Document;
    .end local v9           #document:Lorg/dom4j/Document;
    .end local v11           #friendsElm:Lorg/dom4j/Element;
    .end local v18           #paramsElm:Lorg/dom4j/Element;
    .end local v19           #requestElm:Lorg/dom4j/Element;
    .end local v20           #responseElm:Lorg/dom4j/Element;
    .end local v21           #result:Ljava/lang/String;
    .end local v22           #status:Ljava/lang/String;
    .end local v23           #statusElm:Lorg/dom4j/Element;
    :cond_1ea
    const-string v25, "soap"

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/GetFriendsMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_b1
.end method
