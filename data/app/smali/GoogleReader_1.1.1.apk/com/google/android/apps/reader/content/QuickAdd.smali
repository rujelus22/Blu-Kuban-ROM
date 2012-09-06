.class Lcom/google/android/apps/reader/content/QuickAdd;
.super Ljava/lang/Object;
.source "QuickAdd.java"


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mContentLoader:Lcom/google/android/apps/reader/content/ContentLoader;

.field private final mPostHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

.field private final mQuickAddHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

.field private final mTokenHandler:Ljava/net/ContentHandler;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/accounts/Account;Ljava/lang/String;Ljava/net/ContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;Lcom/google/android/apps/reader/net/HttpContentHandler;Lcom/google/android/apps/reader/content/ContentLoader;)V
    .registers 7
    .parameter "account"
    .parameter "url"
    .parameter "tokenHandler"
    .parameter "quickAddHandler"
    .parameter "postHandler"
    .parameter "contentLoader"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mAccount:Lcom/google/android/accounts/Account;

    .line 63
    iput-object p2, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mUrl:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mTokenHandler:Ljava/net/ContentHandler;

    .line 65
    iput-object p4, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mQuickAddHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    .line 66
    iput-object p5, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mPostHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    .line 67
    iput-object p6, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mContentLoader:Lcom/google/android/apps/reader/content/ContentLoader;

    .line 68
    return-void
.end method

.method private final downloadContent(Landroid/net/Uri;)V
    .registers 4
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mContentLoader:Lcom/google/android/apps/reader/content/ContentLoader;

    invoke-static {p1}, Lcom/google/android/apps/reader/provider/ReaderContract;->refresh(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/reader/content/ContentLoader;->loadContent(Landroid/net/Uri;)V

    .line 87
    return-void
.end method

.method private final downloadSubscriptions()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/QuickAdd;->downloadContent(Landroid/net/Uri;)V

    .line 91
    return-void
.end method

.method private final downloadUnreadCounts()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mAccount:Lcom/google/android/accounts/Account;

    invoke-static {v0}, Lcom/google/android/apps/reader/provider/ReaderContract$UnreadCounts;->contentUri(Lcom/google/android/accounts/Account;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/content/QuickAdd;->downloadContent(Landroid/net/Uri;)V

    .line 95
    return-void
.end method

.method private getQuickAddResponse()Lcom/google/android/apps/reader/content/QuickAddResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/QuickAdd;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "quickadd"

    iget-object v4, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "T"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mQuickAddHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 108
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->subscriptionQuickAdd()Landroid/net/Uri;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mQuickAddHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/reader/content/QuickAddResponse;

    return-object p0
.end method

.method private getToken()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->token()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mTokenHandler:Ljava/net/ContentHandler;

    invoke-static {v0, v1}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getContent(Landroid/net/Uri;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private post(Landroid/net/Uri;Lorg/apache/http/HttpEntity;)V
    .registers 8
    .parameter "uri"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    if-nez p1, :cond_8

    .line 72
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 74
    :cond_8
    if-nez p2, :cond_10

    .line 75
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 77
    :cond_10
    iget-object v0, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mPostHandler:Lcom/google/android/apps/reader/net/HttpContentHandler;

    .line 78
    .local v0, handler:Lcom/google/android/apps/reader/net/HttpContentHandler;
    invoke-virtual {v0, p2}, Lcom/google/android/apps/reader/net/HttpContentHandler;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 79
    invoke-static {p1, v0}, Lcom/google/android/apps/reader/net/HttpContentHandler;->getResponseCode(Landroid/net/Uri;Lcom/google/android/apps/reader/net/HttpContentHandler;)I

    move-result v1

    .line 80
    .local v1, responseCode:I
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_36

    .line 81
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 83
    :cond_36
    return-void
.end method

.method private sendWebfeedConfirmation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/QuickAdd;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "s"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "uri"

    invoke-direct {v2, v3, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "T"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/google/android/apps/reader/net/ReaderUri;->subscriptionWebfeedConfirmation()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/reader/content/QuickAdd;->post(Landroid/net/Uri;Lorg/apache/http/HttpEntity;)V

    .line 123
    return-void
.end method


# virtual methods
.method public run()Landroid/net/Uri;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/QuickAdd;->getQuickAddResponse()Lcom/google/android/apps/reader/content/QuickAddResponse;

    move-result-object v0

    .line 127
    .local v0, response:Lcom/google/android/apps/reader/content/QuickAddResponse;
    iget-object v1, v0, Lcom/google/android/apps/reader/content/QuickAddResponse;->streamId:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 128
    iget-boolean v1, v0, Lcom/google/android/apps/reader/content/QuickAddResponse;->webfeedConfirmation:Z

    if-eqz v1, :cond_13

    .line 131
    iget-object v1, v0, Lcom/google/android/apps/reader/content/QuickAddResponse;->streamId:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/apps/reader/content/QuickAddResponse;->query:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/reader/content/QuickAdd;->sendWebfeedConfirmation(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_13
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/QuickAdd;->downloadSubscriptions()V

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/reader/content/QuickAdd;->downloadUnreadCounts()V

    .line 136
    iget-object v1, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v0, Lcom/google/android/apps/reader/content/QuickAddResponse;->streamId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->itemUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    :goto_21
    return-object v1

    .line 137
    :cond_22
    iget v1, v0, Lcom/google/android/apps/reader/content/QuickAddResponse;->numResults:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_30

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/reader/content/QuickAdd;->mAccount:Lcom/google/android/accounts/Account;

    iget-object v2, v0, Lcom/google/android/apps/reader/content/QuickAddResponse;->query:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Subscriptions;->searchUri(Lcom/google/android/accounts/Account;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_21

    .line 143
    :cond_30
    const/4 v1, 0x0

    goto :goto_21
.end method
