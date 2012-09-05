.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerPhoto.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 27
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    .line 47
    if-nez p1, :cond_c

    .line 48
    const-string v20, "SNS_COMPOSER"

    const-string v21, "SnsRequest Should not be null!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/16 v20, 0xfa1

    .line 248
    .end local p1
    :goto_b
    return v20

    .line 52
    .restart local p1
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v18

    .line 54
    .local v18, reqType:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->prepareCompose()V

    .line 57
    const/16 v20, 0x21

    move/from16 v0, v20

    move/from16 v1, v18

    if-eq v0, v1, :cond_44

    .line 58
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v22

    aget-object v21, v21, v22

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/photo"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 60
    :cond_44
    packed-switch v18, :pswitch_data_450

    .line 245
    const-string v20, "SNS_COMPOSER"

    const-string v21, "RequestType is NOT SUPPORTED!"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/16 v20, 0xfa1

    goto :goto_b

    .line 63
    :pswitch_51
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/album"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v13, p1

    .line 65
    check-cast v13, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;

    .line 67
    .local v13, reqPhotoAlbumGet:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;
    invoke-virtual {v13}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getPeopleListKeySetToArray()[Ljava/lang/Object;

    move-result-object v11

    .line 70
    .local v11, peopleKeySetArray:[Ljava/lang/Object;
    const-string v20, "Request"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 71
    const-string v20, "Method"

    const-string v21, "get"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v20, "Timeout"

    const-string v21, "3000"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v20, "SessionKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    if-eqz p3, :cond_c9

    .line 76
    const-string v20, "CryptKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "get"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_c9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCloseTag()V

    .line 83
    const/4 v6, 0x0

    .local v6, i:I
    :goto_cd
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v6, v0, :cond_140

    .line 84
    aget-object v20, v11, v6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 85
    .local v9, key:I
    invoke-virtual {v13, v9}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getPeopleList(I)Ljava/util/List;

    move-result-object v12

    .line 87
    .local v12, peopleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .local v8, j:I
    :goto_e3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v8, v0, :cond_13d

    .line 88
    const-string v20, "People"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v13}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getSpType()I

    move-result v20

    const/16 v21, 0x10

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_118

    .line 90
    const-string v21, "ID"

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 87
    :goto_115
    add-int/lit8 v8, v8, 0x1

    goto :goto_e3

    .line 92
    :cond_118
    const-string v21, "ID"

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v20, "SP"

    sget-object v21, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v21, v21, v9

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_115

    .line 83
    :cond_13d
    add-int/lit8 v6, v6, 0x1

    goto :goto_cd

    .line 99
    .end local v8           #j:I
    .end local v9           #key:I
    .end local v12           #peopleList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_140
    const-string v20, "Response"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 100
    const-string v20, "StartOffset"

    invoke-virtual {v13}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getStartOffset()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;I)V

    .line 102
    const-string v20, "StartContext"

    invoke-virtual {v13}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getStartContext()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v20, "MaxCount"

    invoke-virtual {v13}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;->getMaxCount()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 108
    const-string v20, "Request"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeEndTag(Ljava/lang/String;)V

    .line 248
    .end local v6           #i:I
    .end local v11           #peopleKeySetArray:[Ljava/lang/Object;
    .end local v13           #reqPhotoAlbumGet:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumGet;
    .end local p1
    :goto_187
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 114
    .restart local p1
    :pswitch_18b
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/album"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v14, p1

    .line 116
    check-cast v14, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;

    .line 119
    .local v14, reqPhotoAlbumRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;
    const-string v20, "Request"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 120
    const-string v20, "Method"

    const-string v21, "retrieve"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v20, "Timeout"

    const-string v21, "3000"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v20, "SessionKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    if-eqz p3, :cond_1ff

    .line 126
    const-string v20, "CryptKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "retrieve"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCloseTag()V

    .line 133
    const-string v20, "People"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 134
    const-string v20, "ID"

    invoke-virtual {v14}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getPeopleID()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    const-string v20, "Album"

    const-string v21, "ID"

    invoke-virtual {v14}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getAlbumID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v20, "Response"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 143
    const-string v20, "StartOffset"

    invoke-virtual {v14}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getStartOffset()I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;I)V

    .line 145
    const-string v20, "StartContext"

    invoke-virtual {v14}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v20, "MaxCount"

    invoke-virtual {v14}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;->getMaxCount()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 153
    const-string v20, "Request"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_187

    .end local v14           #reqPhotoAlbumRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoAlbumRetrieve;
    :pswitch_27a
    move-object/from16 v15, p1

    .line 158
    check-cast v15, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoGet;

    .line 161
    .local v15, reqPhotoGet:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoGet;
    const-string v20, "Request"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 162
    const-string v20, "Method"

    const-string v21, "get"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v20, "Timeout"

    const-string v21, "3000"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v20, "SessionKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-eqz p3, :cond_2cf

    .line 167
    const-string v20, "CryptKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "get"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_2cf
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCloseTag()V

    .line 174
    const-string v20, "Photo"

    const-string v21, "ID"

    invoke-virtual {v15}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoGet;->getPhotoID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v20, "Author"

    const-string v21, "ID"

    invoke-virtual {v15}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoGet;->getAuthorID()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v20, "Request"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_187

    .end local v15           #reqPhotoGet:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoGet;
    :pswitch_303
    move-object/from16 v16, p1

    .line 187
    check-cast v16, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;

    .line 190
    .local v16, reqPhotoUpload:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;
    const-string v20, "Request"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 191
    const-string v20, "Method"

    const-string v21, "upload"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v20, "Timeout"

    const-string v21, "3000"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v20, "SessionKey"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz p3, :cond_358

    .line 197
    const-string v20, "CryptKey"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "upload"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_358
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCloseTag()V

    .line 204
    const-string v20, "Photo"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 205
    const-string v20, "Title"

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->getTitle()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v20, "Tag"

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->getTag()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v20, "IsProfilePhoto"

    const-string v21, "false"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCloseTag()V

    .line 211
    check-cast p1, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->getSpTypeList()[I

    move-result-object v5

    .local v5, arr$:[I
    array-length v10, v5

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_39a
    if-ge v7, v10, :cond_3de

    aget v19, v5, v7

    .line 212
    .local v19, spType:I
    const-string v20, "Album"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeStartTag(Ljava/lang/String;)V

    .line 213
    const-string v20, "SP"

    sget-object v21, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v21, v21, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v20, "OwnerID"

    const-string v21, "owner"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const/16 v20, 0xd

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3d8

    .line 217
    const-string v20, "ID"

    const-string v21, "@default"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_3d8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeEndTag()V

    .line 211
    add-int/lit8 v7, v7, 0x1

    goto :goto_39a

    .line 222
    .end local v19           #spType:I
    :cond_3de
    const-string v20, "Content"

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->getContent()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v20, "File"

    const-string v21, "Name"

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;->getFileName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string v20, "Photo"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeEndTag(Ljava/lang/String;)V

    .line 232
    const-string v20, "Request"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerPhoto;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_187

    .end local v5           #arr$:[I
    .end local v7           #i$:I
    .end local v10           #len$:I
    .end local v16           #reqPhotoUpload:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUpload;
    .restart local p1
    :pswitch_414
    move-object/from16 v17, p1

    .line 237
    check-cast v17, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;

    .line 239
    .local v17, reqPhotoUploadBody:Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "http://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getResourceID()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 240
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/app/sns/request/data/SnsRequestPhotoUploadBody;->getParcelFileDesc()Landroid/os/ParcelFileDescriptor;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mBody:Ljava/lang/Object;

    goto/16 :goto_187

    .line 60
    nop

    :pswitch_data_450
    .packed-switch 0x1d
        :pswitch_51
        :pswitch_18b
        :pswitch_27a
        :pswitch_303
        :pswitch_414
    .end packed-switch
.end method
