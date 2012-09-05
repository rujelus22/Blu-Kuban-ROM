.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerNote.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/16 v2, 0xfa1

    .line 41
    if-nez p1, :cond_c

    .line 42
    const-string v3, "SNS_COMPOSER"

    const-string v4, "SnsRequest Should not be null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_b
    return v2

    .line 46
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    .line 48
    .local v1, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->prepareCompose()V

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/note"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 53
    const/16 v3, 0x17

    if-ne v1, v3, :cond_92

    move-object v0, p1

    .line 54
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;

    .line 57
    .local v0, reqNotePost:Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->composeStartTag(Ljava/lang/String;)V

    .line 58
    const-string v2, "Method"

    const-string v3, "post"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "Timeout"

    const-string v3, "3000"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "SessionKey"

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz p3, :cond_66

    .line 62
    const-string v2, "CryptKey"

    iget-object v3, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v4, "post"

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_66
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->composeCloseTag()V

    .line 69
    const-string v2, "Category"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->composeStartTag(Ljava/lang/String;)V

    .line 70
    const-string v2, "ID"

    const-string v3, "wall"

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v2, "OwnerID"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;->getCategoryOwnerID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->composeEndTag()V

    .line 75
    const-string v2, "Content"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v2, "Request"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerNote;->composeEndTag(Ljava/lang/String;)V

    .line 83
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 80
    .end local v0           #reqNotePost:Lcom/sec/android/app/sns/request/data/SnsRequestNotePost;
    :cond_92
    const-string v3, "SNS_COMPOSER"

    const-string v4, "RequestType is NOT SUPPORTED!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b
.end method
