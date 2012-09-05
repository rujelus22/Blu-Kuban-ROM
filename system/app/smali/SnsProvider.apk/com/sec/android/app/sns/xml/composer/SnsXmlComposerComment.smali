.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerComment.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/16 v5, 0xfa1

    const/16 v10, 0xd

    const/4 v9, 0x1

    .line 44
    if-nez p1, :cond_f

    .line 45
    const-string v6, "SNS_COMPOSER"

    const-string v7, "SnsRequest Should not be null!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_e
    return v5

    .line 49
    :cond_f
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v4

    .line 51
    .local v4, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->prepareCompose()V

    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/comment"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 55
    const/16 v6, 0x9

    if-ne v4, v6, :cond_b7

    move-object v2, p1

    .line 56
    check-cast v2, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;

    .line 59
    .local v2, reqCommentPost:Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 60
    const-string v5, "Method"

    const-string v6, "post"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v5, "Timeout"

    const-string v6, "3000"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v5, "SessionKey"

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz p3, :cond_69

    .line 64
    const-string v5, "CryptKey"

    iget-object v6, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v7, "post"

    invoke-virtual {p0, v6, v7, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_69
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeCloseTag()V

    .line 71
    const-string v5, "Target"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 72
    const-string v5, "ID"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getTargetID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v5, "AuthorID"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getTargetAuthorID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v5, "Type"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getTargetType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    if-ne v5, v10, :cond_ad

    .line 77
    const-string v5, "SubID"

    const-string v6, "@default"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_99
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeEndTag()V

    .line 83
    const-string v5, "Content"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeEndTag(Ljava/lang/String;)V

    .line 198
    .end local v2           #reqCommentPost:Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;
    :goto_aa
    const/4 v5, 0x0

    goto/16 :goto_e

    .line 79
    .restart local v2       #reqCommentPost:Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;
    :cond_ad
    const-string v5, "SubID"

    invoke-virtual {v2}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;->getTargetSubID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_99

    .line 87
    .end local v2           #reqCommentPost:Lcom/sec/android/app/sns/request/data/SnsRequestCommentPost;
    :cond_b7
    const/16 v6, 0xa

    if-ne v4, v6, :cond_14d

    move-object v3, p1

    .line 88
    check-cast v3, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;

    .line 91
    .local v3, reqCommentRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 92
    const-string v5, "Method"

    const-string v6, "retrieve"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v5, "Timeout"

    const-string v6, "3000"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v5, "SessionKey"

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-eqz p3, :cond_e5

    .line 96
    const-string v5, "CryptKey"

    iget-object v6, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v7, "retrieve"

    invoke-virtual {p0, v6, v7, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_e5
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeCloseTag()V

    .line 103
    const-string v5, "Target"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 104
    const-string v5, "ID"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetAuthorID()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_145

    .line 106
    const-string v5, "AuthorID"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetAuthorID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :goto_105
    const-string v5, "Type"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v5, "SubID"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getTargetSubID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeEndTag()V

    .line 116
    const-string v5, "Response"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 117
    const-string v5, "StartOffset"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getStartOffset()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;I)V

    .line 119
    const-string v5, "StartContext"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "MaxCount"

    invoke-virtual {v3}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;->getMaxCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 125
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_aa

    .line 109
    :cond_145
    const-string v5, "AuthorID"

    const-string v6, "owner"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_105

    .line 126
    .end local v3           #reqCommentRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestCommentRetrieve;
    :cond_14d
    const/4 v6, 0x7

    if-ne v4, v6, :cond_1fc

    .line 127
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/comment/favorite"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v1, p1

    .line 129
    check-cast v1, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;

    .line 132
    .local v1, reqCommentFavoritePost:Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 133
    const-string v5, "Method"

    const-string v6, "post"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v5, "Timeout"

    const-string v6, "3000"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v5, "SessionKey"

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz p3, :cond_19f

    .line 137
    const-string v5, "CryptKey"

    iget-object v6, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v7, "post"

    invoke-virtual {p0, v6, v7, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_19f
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeCloseTag()V

    .line 144
    const-string v5, "Favorite"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 145
    const-string v5, "TargetID"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->getTargetID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    if-ne v5, v10, :cond_1eb

    .line 148
    const-string v5, "TargetSubID"

    const-string v6, "@default"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v5, "TargetAuthorID"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->getTargetAuthorID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1c6
    :goto_1c6
    const-string v5, "TargetType"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->getTargetType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v5, "Type"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->getFavoriteType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v5, "Mask"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->getMask()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeEndTag()V

    .line 161
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_aa

    .line 150
    :cond_1eb
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1c6

    .line 151
    const-string v5, "TargetAuthorID"

    invoke-virtual {v1}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;->getTargetAuthorID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c6

    .line 162
    .end local v1           #reqCommentFavoritePost:Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoritePost;
    :cond_1fc
    const/16 v6, 0x8

    if-ne v4, v6, :cond_28e

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/comment/favorite"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    move-object v0, p1

    .line 165
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;

    .line 168
    .local v0, reqCommentFavoriteGetUSer:Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 169
    const-string v5, "Method"

    const-string v6, "getuser"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v5, "Timeout"

    const-string v6, "3000"

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v5, "SessionKey"

    invoke-virtual {p0, v5, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz p3, :cond_24f

    .line 173
    const-string v5, "CryptKey"

    iget-object v6, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v7, "getuser"

    invoke-virtual {p0, v6, v7, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_24f
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeCloseTag()V

    .line 180
    const-string v5, "Target"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 181
    const-string v5, "ID"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->getTargetID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeEndTag()V

    .line 185
    const-string v5, "Response"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeStartTag(Ljava/lang/String;)V

    .line 186
    const-string v5, "StartOffset"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->getStartOffset()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;I)V

    .line 188
    const-string v5, "StartContext"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->getStartContext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v5, "MaxCount"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;->getMaxCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v5, v6, v9}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 193
    const-string v5, "Request"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerComment;->composeEndTag(Ljava/lang/String;)V

    goto/16 :goto_aa

    .line 195
    .end local v0           #reqCommentFavoriteGetUSer:Lcom/sec/android/app/sns/request/data/SnsRequestCommentFavoriteGetUser;
    :cond_28e
    const-string v6, "SNS_COMPOSER"

    const-string v7, "RequestType is NOT SUPPORTED!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e
.end method
