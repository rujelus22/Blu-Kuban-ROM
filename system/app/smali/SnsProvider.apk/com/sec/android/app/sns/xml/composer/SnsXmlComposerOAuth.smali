.class public Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerOAuth;
.super Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;
.source "SnsXmlComposerOAuth.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method public compose(Lcom/sec/android/app/sns/request/data/SnsRequest;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "request"
    .parameter "sessionKey"
    .parameter "cryptoSessionCredential"

    .prologue
    const/16 v1, 0xfa1

    .line 36
    if-nez p1, :cond_c

    .line 37
    const-string v2, "SNS_COMPOSER"

    const-string v3, "SnsRequest Should not be null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_b
    return v1

    .line 41
    :cond_c
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getReqType()I

    move-result v0

    .line 43
    .local v0, reqType:I
    invoke-virtual {p0}, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposerOAuth;->prepareCompose()V

    .line 45
    packed-switch v0, :pswitch_data_2a

    .line 55
    const-string v2, "SNS_COMPOSER"

    const-string v3, "RequestType is NOT SUPPORTED!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 49
    :pswitch_1e
    invoke-virtual {p1}, Lcom/sec/android/app/sns/request/data/SnsRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mReqURI:Ljava/lang/String;

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sns/xml/composer/SnsXmlComposer;->mBody:Ljava/lang/Object;

    .line 58
    const/4 v1, 0x0

    goto :goto_b

    .line 45
    nop

    :pswitch_data_2a
    .packed-switch 0x29
        :pswitch_1e
    .end packed-switch
.end method
