.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "PublicShareMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public publicShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;
    .registers 39
    .parameter "publicShareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createPublicShareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;

    move-result-object v23

    .line 51
    .local v23, publicShareResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 54
    .local v17, message:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getTarget()Ljava/lang/String;

    move-result-object v29

    .line 55
    .local v29, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getTargetId()Ljava/lang/String;

    move-result-object v31

    .line 56
    .local v31, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getPassword()Ljava/lang/String;

    move-result-object v19

    .line 57
    .local v19, password:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareRequest;->getEmails()[Ljava/lang/String;

    move-result-object v14

    .line 59
    .local v14, emails:[Ljava/lang/String;
    const-string v34, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_159

    .line 61
    new-instance v8, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v8}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 62
    .local v8, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v34, "ISO-8859-1"

    move-object/from16 v0, v17

    move-object/from16 v1, v34

    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 64
    const-string v34, "public_share"

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    .line 65
    .local v33, urlBuff:Ljava/lang/StringBuffer;
    const-string v34, "&"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    const-string v34, "api_key"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v34, "&"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v34, "auth_token"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v34, "&"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v34, "target"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v34, "&"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v34, "target_id"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v34, "&"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v34, "password"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    const-string v34, "&"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v34, "message"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    move-object/from16 v0, v33

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    if-nez v14, :cond_121

    .line 90
    const-string v34, "&"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v34, "emails[]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_d8
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 104
    .local v9, doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v25

    .line 106
    .local v25, responseElm:Lorg/dom4j/Element;
    const-string v34, "status"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v28

    .line 107
    .local v28, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v28 .. v28}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v27

    .line 108
    .local v27, status:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->setStatus(Ljava/lang/String;)V

    .line 109
    const-string v34, "share_ok"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_120

    .line 111
    const-string v34, "public_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 112
    .local v22, publicNameElm:Lorg/dom4j/Element;
    invoke-interface/range {v22 .. v22}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v21

    .line 113
    .local v21, publicName:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->setPublicName(Ljava/lang/String;)V
    :try_end_120
    .catch Lorg/dom4j/DocumentException; {:try_start_d8 .. :try_end_120} :catch_145

    .line 196
    .end local v8           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v21           #publicName:Ljava/lang/String;
    .end local v22           #publicNameElm:Lorg/dom4j/Element;
    .end local v25           #responseElm:Lorg/dom4j/Element;
    .end local v27           #status:Ljava/lang/String;
    .end local v28           #statusElm:Lorg/dom4j/Element;
    .end local v33           #urlBuff:Ljava/lang/StringBuffer;
    :cond_120
    :goto_120
    return-object v23

    .line 94
    .restart local v8       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v33       #urlBuff:Ljava/lang/StringBuffer;
    :cond_121
    const/16 v16, 0x0

    .local v16, i:I
    :goto_123
    array-length v0, v14

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_d8

    .line 95
    aget-object v12, v14, v16

    .line 96
    .local v12, email:Ljava/lang/String;
    const-string v34, "&"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    const-string v34, "emails[]"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v34, "="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    add-int/lit8 v16, v16, 0x1

    goto :goto_123

    .line 115
    .end local v12           #email:Ljava/lang/String;
    .end local v16           #i:I
    :catch_145
    move-exception v11

    .line 116
    .local v11, e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 117
    const-string v34, "failed to parse to a document."

    .line 116
    move-object/from16 v0, v34

    invoke-direct {v7, v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .local v7, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface/range {v23 .. v23}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->getStatus()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 119
    throw v7

    .line 122
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v8           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v33           #urlBuff:Ljava/lang/StringBuffer;
    :cond_159
    const-string v34, "xml"

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_286

    .line 124
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v10

    .line 126
    .local v10, document:Lorg/dom4j/Document;
    const-string v34, "request"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v24

    .line 127
    .local v24, requestElm:Lorg/dom4j/Element;
    move-object/from16 v0, v24

    invoke-interface {v10, v0}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 130
    const-string v34, "action"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 132
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v34, "api_key"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 134
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v34, "auth_token"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 136
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v34, "target"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v30

    .line 138
    .local v30, targetElm:Lorg/dom4j/Element;
    const-string v34, "target_id"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v32

    .line 140
    .local v32, targetIdElm:Lorg/dom4j/Element;
    const-string v34, "password"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v20

    .line 142
    .local v20, passwordElm:Lorg/dom4j/Element;
    const-string v34, "message"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v18

    .line 144
    .local v18, messageElm:Lorg/dom4j/Element;
    const-string v34, "emails"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v15

    .line 145
    .local v15, emailsElm:Lorg/dom4j/Element;
    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 146
    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 147
    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 148
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 149
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 150
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 151
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 152
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 154
    const-string v34, "public_share"

    move-object/from16 v0, v34

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 155
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 156
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 160
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 161
    if-eqz v14, :cond_20c

    .line 162
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_203
    array-length v0, v14

    move/from16 v34, v0

    move/from16 v0, v16

    move/from16 v1, v34

    if-lt v0, v1, :cond_274

    .line 170
    .end local v16           #i:I
    :cond_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-interface {v10}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v34 .. v36}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 172
    .local v26, result:Ljava/lang/String;
    :try_start_220
    invoke-static/range {v26 .. v26}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v9

    .line 173
    .restart local v9       #doc:Lorg/dom4j/Document;
    invoke-interface {v9}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v25

    .line 175
    .restart local v25       #responseElm:Lorg/dom4j/Element;
    const-string v34, "status"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v28

    .line 176
    .restart local v28       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v28 .. v28}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v27

    .line 177
    .restart local v27       #status:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->setStatus(Ljava/lang/String;)V

    .line 178
    const-string v34, "share_ok"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_120

    .line 180
    const-string v34, "public_name"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 181
    .restart local v22       #publicNameElm:Lorg/dom4j/Element;
    invoke-interface/range {v22 .. v22}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v21

    .line 182
    .restart local v21       #publicName:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->setPublicName(Ljava/lang/String;)V
    :try_end_25e
    .catch Lorg/dom4j/DocumentException; {:try_start_220 .. :try_end_25e} :catch_260

    goto/16 :goto_120

    .line 184
    .end local v9           #doc:Lorg/dom4j/Document;
    .end local v21           #publicName:Ljava/lang/String;
    .end local v22           #publicNameElm:Lorg/dom4j/Element;
    .end local v25           #responseElm:Lorg/dom4j/Element;
    .end local v27           #status:Ljava/lang/String;
    .end local v28           #statusElm:Lorg/dom4j/Element;
    :catch_260
    move-exception v11

    .line 185
    .restart local v11       #e:Lorg/dom4j/DocumentException;
    new-instance v7, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 186
    const-string v34, "failed to parse to a document."

    .line 185
    move-object/from16 v0, v34

    invoke-direct {v7, v0, v11}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    .restart local v7       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface/range {v23 .. v23}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PublicShareResponse;->getStatus()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 188
    throw v7

    .line 163
    .end local v7           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v11           #e:Lorg/dom4j/DocumentException;
    .end local v26           #result:Ljava/lang/String;
    .restart local v16       #i:I
    :cond_274
    aget-object v12, v14, v16

    .line 165
    .restart local v12       #email:Ljava/lang/String;
    const-string v34, "item"

    invoke-static/range {v34 .. v34}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v13

    .line 166
    .local v13, emailElm:Lorg/dom4j/Element;
    invoke-interface {v13, v12}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 167
    invoke-interface {v15, v13}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 162
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_203

    .line 191
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v10           #document:Lorg/dom4j/Document;
    .end local v12           #email:Ljava/lang/String;
    .end local v13           #emailElm:Lorg/dom4j/Element;
    .end local v15           #emailsElm:Lorg/dom4j/Element;
    .end local v16           #i:I
    .end local v18           #messageElm:Lorg/dom4j/Element;
    .end local v20           #passwordElm:Lorg/dom4j/Element;
    .end local v24           #requestElm:Lorg/dom4j/Element;
    .end local v30           #targetElm:Lorg/dom4j/Element;
    .end local v32           #targetIdElm:Lorg/dom4j/Element;
    :cond_286
    const-string v34, "soap"

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PublicShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_120
.end method
