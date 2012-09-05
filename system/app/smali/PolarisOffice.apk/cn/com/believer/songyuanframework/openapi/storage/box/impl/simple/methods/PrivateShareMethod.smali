.class public Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;
.super Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;
.source "PrivateShareMethod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;-><init>()V

    return-void
.end method


# virtual methods
.method public privateShare(Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;)Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;
    .registers 37
    .parameter "privateShareRequest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcn/com/believer/songyuanframework/openapi/storage/box/factories/BoxResponseFactory;->createPrivateShareResponse()Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;

    move-result-object v7

    .line 55
    .local v7, baseBoxResponse:Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getApiKey()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, apiKey:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, authToken:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getMessage()Ljava/lang/String;

    move-result-object v18

    .line 58
    .local v18, message:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getTarget()Ljava/lang/String;

    move-result-object v27

    .line 59
    .local v27, target:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getTargetId()Ljava/lang/String;

    move-result-object v29

    .line 60
    .local v29, targetId:Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->getEmails()[Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, emails:[Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareRequest;->isNofity()Z

    move-result v20

    .line 63
    .local v20, notify:Z
    const-string v32, "rest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_136

    .line 65
    new-instance v9, Lorg/apache/commons/codec/net/URLCodec;

    invoke-direct {v9}, Lorg/apache/commons/codec/net/URLCodec;-><init>()V

    .line 66
    .local v9, codec:Lorg/apache/commons/codec/net/URLCodec;
    const-string v32, "ISO-8859-1"

    move-object/from16 v0, v18

    move-object/from16 v1, v32

    invoke-virtual {v9, v0, v1}, Lorg/apache/commons/codec/net/URLCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 68
    const-string v32, "private_share"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-super {v0, v1}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/BaseBoxMethod;->getRestUrl(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v31

    .line 69
    .local v31, urlBuff:Ljava/lang/StringBuffer;
    const-string v32, "&"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v32, "api_key"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v32, "&"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v32, "auth_token"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v32, "&"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v32, "target"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    const-string v32, "&"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v32, "target_id"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    if-nez v15, :cond_fe

    .line 86
    const-string v32, "&"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v32, "emails[]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    :cond_ac
    const-string v32, "&"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v32, "message"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v32, "&"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v32, "notify"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    :try_start_d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doGet(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 108
    .local v10, doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v23

    .line 110
    .local v23, responseElm:Lorg/dom4j/Element;
    const-string v32, "status"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v26

    .line 111
    .local v26, statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v26 .. v26}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v25

    .line 112
    .local v25, status:Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;->setStatus(Ljava/lang/String;)V
    :try_end_fd
    .catch Lorg/dom4j/DocumentException; {:try_start_d8 .. :try_end_fd} :catch_122

    .line 192
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v23           #responseElm:Lorg/dom4j/Element;
    .end local v25           #status:Ljava/lang/String;
    .end local v26           #statusElm:Lorg/dom4j/Element;
    .end local v31           #urlBuff:Ljava/lang/StringBuffer;
    :goto_fd
    return-object v7

    .line 90
    .restart local v9       #codec:Lorg/apache/commons/codec/net/URLCodec;
    .restart local v31       #urlBuff:Ljava/lang/StringBuffer;
    :cond_fe
    const/16 v17, 0x0

    .local v17, i:I
    :goto_100
    array-length v0, v15

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_ac

    .line 91
    aget-object v13, v15, v17

    .line 92
    .local v13, email:Ljava/lang/String;
    const-string v32, "&"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v32, "emails[]"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v32, "="

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    move-object/from16 v0, v31

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    add-int/lit8 v17, v17, 0x1

    goto :goto_100

    .line 115
    .end local v13           #email:Ljava/lang/String;
    .end local v17           #i:I
    :catch_122
    move-exception v12

    .line 116
    .local v12, e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 117
    const-string v32, "failed to parse to a document."

    .line 116
    move-object/from16 v0, v32

    invoke-direct {v8, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .local v8, be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;->getStatus()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 119
    throw v8

    .line 122
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v9           #codec:Lorg/apache/commons/codec/net/URLCodec;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v31           #urlBuff:Ljava/lang/StringBuffer;
    :cond_136
    const-string v32, "xml"

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_247

    .line 124
    invoke-static {}, Lorg/dom4j/DocumentHelper;->createDocument()Lorg/dom4j/Document;

    move-result-object v11

    .line 126
    .local v11, document:Lorg/dom4j/Document;
    const-string v32, "request"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v22

    .line 127
    .local v22, requestElm:Lorg/dom4j/Element;
    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/dom4j/Document;->add(Lorg/dom4j/Element;)V

    .line 130
    const-string v32, "action"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v2

    .line 132
    .local v2, actionElm:Lorg/dom4j/Element;
    const-string v32, "api_key"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v4

    .line 134
    .local v4, apiKeyElm:Lorg/dom4j/Element;
    const-string v32, "auth_token"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v6

    .line 136
    .local v6, authTokenElm:Lorg/dom4j/Element;
    const-string v32, "target"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v28

    .line 138
    .local v28, targetElm:Lorg/dom4j/Element;
    const-string v32, "target_id"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v30

    .line 140
    .local v30, targetIdElm:Lorg/dom4j/Element;
    const-string v32, "emails"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v16

    .line 142
    .local v16, emailsElm:Lorg/dom4j/Element;
    const-string v32, "message"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v19

    .line 144
    .local v19, messageElm:Lorg/dom4j/Element;
    const-string v32, "notify"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v21

    .line 145
    .local v21, notifyElm:Lorg/dom4j/Element;
    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 146
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 147
    move-object/from16 v0, v22

    invoke-interface {v0, v6}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 148
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 149
    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 150
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 151
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 152
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 154
    const-string v32, "private_share"

    move-object/from16 v0, v32

    invoke-interface {v2, v0}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 155
    invoke-interface {v4, v3}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 156
    invoke-interface {v6, v5}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 159
    if-eqz v15, :cond_1dd

    .line 160
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1d4
    array-length v0, v15

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-lt v0, v1, :cond_234

    .line 168
    .end local v17           #i:I
    :cond_1dd
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 169
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->httpManager:Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->xmlApiUrl:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-interface {v11}, Lorg/dom4j/Document;->asXML()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/core/BoxHTTPManager;->doPostXML(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 172
    .local v24, result:Ljava/lang/String;
    :try_start_203
    invoke-static/range {v24 .. v24}, Lorg/dom4j/DocumentHelper;->parseText(Ljava/lang/String;)Lorg/dom4j/Document;

    move-result-object v10

    .line 173
    .restart local v10       #doc:Lorg/dom4j/Document;
    invoke-interface {v10}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v23

    .line 175
    .restart local v23       #responseElm:Lorg/dom4j/Element;
    const-string v32, "status"

    move-object/from16 v0, v23

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->element(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v26

    .line 176
    .restart local v26       #statusElm:Lorg/dom4j/Element;
    invoke-interface/range {v26 .. v26}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v25

    .line 177
    .restart local v25       #status:Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-interface {v7, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;->setStatus(Ljava/lang/String;)V
    :try_end_21e
    .catch Lorg/dom4j/DocumentException; {:try_start_203 .. :try_end_21e} :catch_220

    goto/16 :goto_fd

    .line 180
    .end local v10           #doc:Lorg/dom4j/Document;
    .end local v23           #responseElm:Lorg/dom4j/Element;
    .end local v25           #status:Ljava/lang/String;
    .end local v26           #statusElm:Lorg/dom4j/Element;
    :catch_220
    move-exception v12

    .line 181
    .restart local v12       #e:Lorg/dom4j/DocumentException;
    new-instance v8, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;

    .line 182
    const-string v32, "failed to parse to a document."

    .line 181
    move-object/from16 v0, v32

    invoke-direct {v8, v0, v12}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    .restart local v8       #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    invoke-interface {v7}, Lcn/com/believer/songyuanframework/openapi/storage/box/functions/PrivateShareResponse;->getStatus()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;->setStatus(Ljava/lang/String;)V

    .line 184
    throw v8

    .line 161
    .end local v8           #be:Lcn/com/believer/songyuanframework/openapi/storage/box/objects/BoxException;
    .end local v12           #e:Lorg/dom4j/DocumentException;
    .end local v24           #result:Ljava/lang/String;
    .restart local v17       #i:I
    :cond_234
    aget-object v13, v15, v17

    .line 163
    .restart local v13       #email:Ljava/lang/String;
    const-string v32, "email"

    invoke-static/range {v32 .. v32}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v14

    .line 164
    .local v14, emailElm:Lorg/dom4j/Element;
    invoke-interface {v14, v13}, Lorg/dom4j/Element;->setText(Ljava/lang/String;)V

    .line 165
    move-object/from16 v0, v16

    invoke-interface {v0, v14}, Lorg/dom4j/Element;->add(Lorg/dom4j/Element;)V

    .line 160
    add-int/lit8 v17, v17, 0x1

    goto :goto_1d4

    .line 187
    .end local v2           #actionElm:Lorg/dom4j/Element;
    .end local v4           #apiKeyElm:Lorg/dom4j/Element;
    .end local v6           #authTokenElm:Lorg/dom4j/Element;
    .end local v11           #document:Lorg/dom4j/Document;
    .end local v13           #email:Ljava/lang/String;
    .end local v14           #emailElm:Lorg/dom4j/Element;
    .end local v16           #emailsElm:Lorg/dom4j/Element;
    .end local v17           #i:I
    .end local v19           #messageElm:Lorg/dom4j/Element;
    .end local v21           #notifyElm:Lorg/dom4j/Element;
    .end local v22           #requestElm:Lorg/dom4j/Element;
    .end local v28           #targetElm:Lorg/dom4j/Element;
    .end local v30           #targetIdElm:Lorg/dom4j/Element;
    :cond_247
    const-string v32, "soap"

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/com/believer/songyuanframework/openapi/storage/box/impl/simple/methods/PrivateShareMethod;->apiRequestFormat:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto/16 :goto_fd
.end method
