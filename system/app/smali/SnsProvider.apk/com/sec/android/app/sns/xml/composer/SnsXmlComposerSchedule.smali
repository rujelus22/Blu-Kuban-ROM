.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerSchedule.java"


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
    .registers 12
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0xfa1

    .line 41
    if-nez p1, :cond_d

    .line 42
    const-string v4, "SNS_COMPOSER"

    const-string v5, "SnsRequest Should not be null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_c
    return v3

    .line 46
    :cond_d
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v4

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1d

    .line 47
    const-string v4, "SNS_COMPOSER"

    const-string v5, "This request uses for SnsSpType.MULTIPLE_SP."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 51
    :cond_1d
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v1

    .line 53
    .local v1, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->prepareCompose()V

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getSpType()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/schedule"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 58
    const/16 v4, 0x24

    if-ne v1, v4, :cond_c8

    move-object v0, p1

    .line 59
    check-cast v0, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;

    .line 62
    .local v0, reqScheduleRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;
    const-string v3, "Request"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->composeStartTag(Ljava/lang/String;)V

    .line 63
    const-string v3, "Method"

    const-string v4, "retrieve"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v3, "Timeout"

    const-string v4, "3000"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v3, "SessionKey"

    invoke-virtual {p0, v3, p2}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz p3, :cond_77

    .line 67
    const-string v3, "CryptKey"

    iget-object v4, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    const-string v5, "retrieve"

    invoke-virtual {p0, v4, v5, p2, p3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->getCryptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_77
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->composeCloseTag()V

    .line 74
    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getInternalSp()I

    move-result v2

    .line 75
    .local v2, spType:I
    const-string v3, "Schedule"

    const-string v4, "SP"

    sget-object v5, Lcom/sec/android/app/sns/type/SnsSpType;->NAME:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->composeCompleteTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v3, "Response"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->composeStartTag(Ljava/lang/String;)V

    .line 80
    const-string v3, "StartOffset"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getStartOffset()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;I)V

    .line 82
    const-string v3, "StartContext"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getStartContext()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v3, "MaxCount"

    invoke-virtual {v0}, Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;->getMaxCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;Ljava/lang/Integer;Z)V

    .line 88
    const-string v3, "TimeInterval"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->composeStartTag(Ljava/lang/String;)V

    .line 89
    const-string v3, "StartDay"

    const-string v4, "-30"

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v3, "EndDay"

    const-string v4, "365"

    invoke-virtual {p0, v3, v4, v7}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->addAttribute(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    const-string v3, "Request"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerSchedule;->composeEndTag(Ljava/lang/String;)V

    .line 101
    const/4 v3, 0x0

    goto/16 :goto_c

    .line 98
    .end local v0           #reqScheduleRetrieve:Lcom/sec/android/app/sns/request/data/SnsRequestScheduleRetrieve;
    .end local v2           #spType:I
    :cond_c8
    const-string v4, "SNS_COMPOSER"

    const-string v5, "RequestType is NOT SUPPORTED!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method
