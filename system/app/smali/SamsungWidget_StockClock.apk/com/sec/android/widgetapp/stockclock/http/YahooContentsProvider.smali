.class public Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;
.super Ljava/lang/Object;
.source "YahooContentsProvider.java"

# interfaces
.implements Lcom/sec/android/widgetapp/stockclock/http/ContentsProvider;


# instance fields
.field YQLkey:Ljava/lang/String;

.field consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field consumerKey:Ljava/lang/String;

.field consumerSecret:Ljava/lang/String;

.field footer:Ljava/lang/String;

.field private gurl:Ljava/lang/String;

.field header:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

.field private mRequestCanceled:Z

.field private mTempResposeBody:Ljava/lang/String;

.field requestChart:Ljava/lang/String;

.field requestIndices:Ljava/lang/String;

.field requestQuotes:Ljava/lang/String;

.field requestSelect:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    .line 41
    const-string v0, "dj0yJmk9cjFaMkdHYmdUamdyJmQ9WVdrOVJsZG1aRWR6TldNbWNHbzlOall6T0RNMk5EWXkmcz1jb25zdW1lcnNlY3JldCZ4PTRm"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumerKey:Ljava/lang/String;

    .line 42
    const-string v0, "e8c9257bd5a24dfe2d38910e7dbe35895fa23918"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumerSecret:Ljava/lang/String;

    .line 45
    const-string v0, "/v1/yql?q=select%20*%20from%20partner.finance.symbols%20where%20query="

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestSelect:Ljava/lang/String;

    .line 46
    const-string v0, "/v1/yql?q=select%20*%20from%20partner.finance.quotes%20where%20symbol%20in%20"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestQuotes:Ljava/lang/String;

    .line 47
    const-string v0, "/v1/yql?q=select%20*%20from%20partner.finance.charts%20where%20symbol="

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestChart:Ljava/lang/String;

    .line 49
    const-string v0, "/v1/yql?q=select%20*%20from%20partner.finance.quotes%20where%20symbol%3D"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestIndices:Ljava/lang/String;

    .line 51
    const-string v0, "samsung-mobile.query.yahooapis.com"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->header:Ljava/lang/String;

    .line 52
    const-string v0, "&diagnostics=true&env="

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->footer:Ljava/lang/String;

    .line 53
    const-string v0, "store://J49nP6jxci2whJztnhcApP"

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->YQLkey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mRequestCanceled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mTempResposeBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mTempResposeBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private makeDefaultHeader()Lorg/apache/http/message/HeaderGroup;
    .registers 5

    .prologue
    .line 73
    new-instance v0, Lorg/apache/http/message/HeaderGroup;

    invoke-direct {v0}, Lorg/apache/http/message/HeaderGroup;-><init>()V

    .line 74
    .local v0, headerGroup:Lorg/apache/http/message/HeaderGroup;
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "User-Agent"

    const-string v3, "SAMSUNG-Android"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 75
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Accept"

    const-string v3, "*,*/*"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 76
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    const-string v3, "text/xml"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/HeaderGroup;->addHeader(Lorg/apache/http/Header;)V

    .line 78
    return-object v0
.end method


# virtual methods
.method public initService(Landroid/content/Context;Lcom/sec/android/widgetapp/stockclock/db/DBHelper;Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;)V
    .registers 7
    .parameter "context"
    .parameter "dbHelper"
    .parameter "httpClient"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;

    .line 59
    iput-object p3, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mRequestCanceled:Z

    .line 61
    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumerKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumerSecret:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    .line 62
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    new-instance v1, Loauth/signpost/signature/HmacSha1MessageSigner;

    invoke-direct {v1}, Loauth/signpost/signature/HmacSha1MessageSigner;-><init>()V

    invoke-virtual {v0, v1}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->setMessageSigner(Loauth/signpost/signature/OAuthMessageSigner;)V

    .line 64
    return-void
.end method

.method public requestCurrency([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 16
    .parameter "symbolArray"
    .parameter "defaultsymbol"
    .parameter "owner"

    .prologue
    .line 529
    sget-boolean v9, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v9, :cond_b

    .line 530
    const-string v9, ""

    const-string v10, "HttpDataManager:Refresh Stock Basic Info"

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_b
    if-nez p1, :cond_15

    .line 534
    const/16 v9, 0x64

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {p3, v9, v10, p1, v11}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 673
    :goto_14
    return-void

    .line 538
    :cond_15
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->makeDefaultHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v3

    .line 540
    .local v3, headerGroup:Lorg/apache/http/message/HeaderGroup;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v6, sb:Ljava/lang/StringBuilder;
    const-string v0, "=x"

    .line 542
    .local v0, addString:Ljava/lang/String;
    const-string v1, ","

    .line 543
    .local v1, devide:Ljava/lang/String;
    const-string v9, "("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const/4 v4, 0x0

    .local v4, i:I
    :goto_28
    array-length v9, p1

    if-ge v4, v9, :cond_81

    .line 546
    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, p1, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v9, "\'"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    array-length v9, p1

    add-int/lit8 v9, v9, -0x1

    if-eq v9, v4, :cond_7e

    .line 555
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 558
    :cond_81
    const-string v9, ")"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->header:Ljava/lang/String;

    iput-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    .line 561
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestQuotes:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->footer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->YQLkey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    .local v5, requestBody:Ljava/lang/String;
    const/4 v7, 0x0

    .line 566
    .local v7, url:Ljava/net/URL;
    :try_start_b2
    new-instance v8, Ljava/net/URL;

    const-string v9, "http"

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bb
    .catch Ljava/net/MalformedURLException; {:try_start_b2 .. :try_end_bb} :catch_129

    .line 567
    .end local v7           #url:Ljava/net/URL;
    .local v8, url:Ljava/net/URL;
    :try_start_bb
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "request currency "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/net/MalformedURLException; {:try_start_bb .. :try_end_d7} :catch_101

    .line 570
    :try_start_d7
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_e6
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_d7 .. :try_end_e6} :catch_f4
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_d7 .. :try_end_e6} :catch_10f
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_d7 .. :try_end_e6} :catch_11c
    .catch Ljava/net/MalformedURLException; {:try_start_d7 .. :try_end_e6} :catch_101

    .line 598
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$4;

    invoke-direct {v11, p0, p3, p1}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$4;-><init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;[Ljava/lang/String;)V

    invoke-virtual {v9, v10, v7, v3, v11}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    goto/16 :goto_14

    .line 572
    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catch_f4
    move-exception v2

    .line 574
    .local v2, e:Loauth/signpost/exception/OAuthMessageSignerException;
    :try_start_f5
    invoke-virtual {v2}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    .line 575
    const/16 v9, 0x64

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {p3, v9, v10, p1, v11}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_ff
    .catch Ljava/net/MalformedURLException; {:try_start_f5 .. :try_end_ff} :catch_101

    goto/16 :goto_14

    .line 592
    .end local v2           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_101
    move-exception v2

    move-object v7, v8

    .line 594
    .end local v8           #url:Ljava/net/URL;
    .local v2, e:Ljava/net/MalformedURLException;
    .restart local v7       #url:Ljava/net/URL;
    :goto_103
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 595
    const/16 v9, 0x64

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {p3, v9, v10, p1, v11}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 578
    .end local v2           #e:Ljava/net/MalformedURLException;
    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catch_10f
    move-exception v2

    .line 580
    .local v2, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :try_start_110
    invoke-virtual {v2}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    .line 581
    const/16 v9, 0x64

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {p3, v9, v10, p1, v11}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 584
    .end local v2           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_11c
    move-exception v2

    .line 586
    .local v2, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v2}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    .line 587
    const/16 v9, 0x64

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {p3, v9, v10, p1, v11}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_127
    .catch Ljava/net/MalformedURLException; {:try_start_110 .. :try_end_127} :catch_101

    goto/16 :goto_14

    .line 592
    .end local v2           #e:Loauth/signpost/exception/OAuthCommunicationException;
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_129
    move-exception v2

    goto :goto_103
.end method

.method public requestGraph(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 14
    .parameter "symbol"
    .parameter "range"
    .parameter "owner"

    .prologue
    .line 409
    const/4 v7, 0x2

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v2, v7

    const/4 v7, 0x1

    aput-object p2, v2, v7

    .line 411
    .local v2, param:[Ljava/lang/Object;
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->makeDefaultHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v1

    .line 413
    .local v1, headerGroup:Lorg/apache/http/message/HeaderGroup;
    const/4 v3, 0x0

    .line 414
    .local v3, requestBody:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<?xml version=\'1.0\' encoding=\'utf-8\'?><request devtype=\'unknown\' deployver=\'unknown\' app=\'SamsungFinanceWidget\' appver=\'unknown\' api=\'finance\' apiver=\'1.0.0\' acknotification=\'0000\'><query id=\'0\' timestamp=\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' type=\'getchart\'>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "<symbol>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</symbol><range>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</range>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</query></request>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, requestBodyGL:Ljava/lang/String;
    const/4 v5, 0x0

    .line 421
    .local v5, url:Ljava/net/URL;
    const-string v7, "samsung-finance.api.mobile.yahoo.com"

    iput-object v7, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    .line 422
    move-object v3, v4

    .line 424
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->header:Ljava/lang/String;

    iput-object v7, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    .line 425
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestChart:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%27"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%27%20and%20range=%27"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%27"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "&diagnostics=true&env="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->YQLkey:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 430
    :try_start_9a
    new-instance v6, Ljava/net/URL;

    const-string v7, "http"

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/net/MalformedURLException; {:try_start_9a .. :try_end_a3} :catch_d1

    .line 433
    .end local v5           #url:Ljava/net/URL;
    .local v6, url:Ljava/net/URL;
    :try_start_a3
    new-instance v5, Ljava/net/URL;

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_b2
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_a3 .. :try_end_b2} :catch_bf
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_a3 .. :try_end_b2} :catch_c5
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_a3 .. :try_end_b2} :catch_cb
    .catch Ljava/net/MalformedURLException; {:try_start_a3 .. :try_end_b2} :catch_d6

    .line 453
    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    :goto_b2
    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;

    invoke-direct {v9, p0, p3, v2}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$3;-><init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;[Ljava/lang/Object;)V

    invoke-virtual {v7, v8, v5, v1, v9}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    .line 524
    return-void

    .line 435
    .end local v5           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_bf
    move-exception v0

    .line 437
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    :try_start_c0
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    move-object v5, v6

    .line 446
    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto :goto_b2

    .line 439
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    .end local v5           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_c5
    move-exception v0

    .line 441
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    move-object v5, v6

    .line 446
    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto :goto_b2

    .line 443
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    .end local v5           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_cb
    move-exception v0

    .line 445
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V
    :try_end_cf
    .catch Ljava/net/MalformedURLException; {:try_start_c0 .. :try_end_cf} :catch_d6

    move-object v5, v6

    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto :goto_b2

    .line 448
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    :catch_d1
    move-exception v0

    .line 450
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_d2
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_b2

    .line 448
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v5           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_d6
    move-exception v0

    move-object v5, v6

    .end local v6           #url:Ljava/net/URL;
    .restart local v5       #url:Ljava/net/URL;
    goto :goto_d2
.end method

.method public requestIndices([Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 15
    .parameter "symbol"
    .parameter "defaultsymbol"
    .parameter "owner"

    .prologue
    .line 677
    sget-boolean v8, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v8, :cond_b

    .line 678
    const-string v8, ""

    const-string v9, "HttpDataManager:SearchIndices"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_b
    if-nez p1, :cond_15

    .line 682
    const/16 v8, 0x69

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p3, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 810
    :goto_14
    return-void

    .line 686
    :cond_15
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->makeDefaultHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v1

    .line 688
    .local v1, headerGroup:Lorg/apache/http/message/HeaderGroup;
    const-string v4, ""

    .line 689
    .local v4, queryString:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 690
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_21
    array-length v8, p1

    if-ge v2, v8, :cond_3d

    .line 692
    if-lez v2, :cond_2b

    .line 694
    const-string v8, "or symbol="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    :cond_2b
    const-string v8, "\""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    aget-object v8, p1, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 698
    const-string v8, "\" "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 700
    :cond_3d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 701
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestIndices:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->footer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->YQLkey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, query:Ljava/lang/String;
    const/4 v6, 0x0

    .line 706
    .local v6, url:Ljava/net/URL;
    :try_start_78
    new-instance v7, Ljava/net/URL;

    const-string v8, "http"

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->header:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/net/MalformedURLException; {:try_start_78 .. :try_end_81} :catch_d3

    .line 709
    .end local v6           #url:Ljava/net/URL;
    .local v7, url:Ljava/net/URL;
    :try_start_81
    new-instance v6, Ljava/net/URL;

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_90
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_81 .. :try_end_90} :catch_9e
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_81 .. :try_end_90} :catch_b9
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_81 .. :try_end_90} :catch_c6
    .catch Ljava/net/MalformedURLException; {:try_start_81 .. :try_end_90} :catch_ab

    .line 737
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;

    invoke-direct {v10, p0, p3, p1}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$5;-><init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;[Ljava/lang/String;)V

    invoke-virtual {v8, v9, v6, v1, v10}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    goto/16 :goto_14

    .line 711
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_9e
    move-exception v0

    .line 713
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    :try_start_9f
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    .line 714
    const/16 v8, 0x69

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p3, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_a9
    .catch Ljava/net/MalformedURLException; {:try_start_9f .. :try_end_a9} :catch_ab

    goto/16 :goto_14

    .line 730
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_ab
    move-exception v0

    move-object v6, v7

    .line 732
    .end local v7           #url:Ljava/net/URL;
    .local v0, e:Ljava/net/MalformedURLException;
    .restart local v6       #url:Ljava/net/URL;
    :goto_ad
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 733
    const/16 v8, 0x69

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p3, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 717
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_b9
    move-exception v0

    .line 719
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :try_start_ba
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    .line 720
    const/16 v8, 0x69

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p3, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 723
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_c6
    move-exception v0

    .line 725
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    .line 726
    const/16 v8, 0x69

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p3, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_d1
    .catch Ljava/net/MalformedURLException; {:try_start_ba .. :try_end_d1} :catch_ab

    goto/16 :goto_14

    .line 730
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_d3
    move-exception v0

    goto :goto_ad
.end method

.method public requestQuote([Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 14
    .parameter "symbolArray"
    .parameter "owner"

    .prologue
    .line 83
    sget-boolean v8, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v8, :cond_b

    .line 84
    const-string v8, ""

    const-string v9, "HttpDataManager:Refresh Stock Basic Info"

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_b
    if-nez p1, :cond_15

    .line 88
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 227
    :goto_14
    return-void

    .line 92
    :cond_15
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->makeDefaultHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v1

    .line 94
    .local v1, headerGroup:Lorg/apache/http/message/HeaderGroup;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 96
    .local v3, k:I
    const-string v8, "("

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    :goto_25
    array-length v8, p1

    if-ge v2, v8, :cond_48

    .line 100
    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    aget-object v8, p1, v2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v8, "\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 v3, v3, 0x1

    .line 105
    array-length v8, p1

    const/4 v9, 0x1

    if-le v8, v9, :cond_45

    array-length v8, p1

    if-ge v3, v8, :cond_45

    .line 107
    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 110
    :cond_48
    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const/4 v4, 0x0

    .line 115
    .local v4, requestBody:Ljava/lang/String;
    const/4 v6, 0x0

    .line 118
    .local v6, url:Ljava/net/URL;
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->header:Ljava/lang/String;

    iput-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestQuotes:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->footer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->YQLkey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    :try_start_7a
    new-instance v7, Ljava/net/URL;

    const-string v8, "http"

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/net/MalformedURLException; {:try_start_7a .. :try_end_83} :catch_de

    .line 124
    .end local v6           #url:Ljava/net/URL;
    .local v7, url:Ljava/net/URL;
    :try_start_83
    const-string v8, ""

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/net/MalformedURLException; {:try_start_83 .. :try_end_8c} :catch_b6

    .line 127
    :try_start_8c
    new-instance v6, Ljava/net/URL;

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9b
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_8c .. :try_end_9b} :catch_a9
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_8c .. :try_end_9b} :catch_c4
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_8c .. :try_end_9b} :catch_d1
    .catch Ljava/net/MalformedURLException; {:try_start_8c .. :try_end_9b} :catch_b6

    .line 155
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;

    invoke-direct {v10, p0, p2, p1}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$1;-><init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;[Ljava/lang/String;)V

    invoke-virtual {v8, v9, v6, v1, v10}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    goto/16 :goto_14

    .line 129
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_a9
    move-exception v0

    .line 131
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    :try_start_aa
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    .line 132
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_b4
    .catch Ljava/net/MalformedURLException; {:try_start_aa .. :try_end_b4} :catch_b6

    goto/16 :goto_14

    .line 148
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    :catch_b6
    move-exception v0

    move-object v6, v7

    .line 150
    .end local v7           #url:Ljava/net/URL;
    .local v0, e:Ljava/net/MalformedURLException;
    .restart local v6       #url:Ljava/net/URL;
    :goto_b8
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 151
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 135
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_c4
    move-exception v0

    .line 137
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :try_start_c5
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    .line 138
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_14

    .line 141
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    :catch_d1
    move-exception v0

    .line 143
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    .line 144
    const/16 v8, 0x64

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {p2, v8, v9, p1, v10}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_dc
    .catch Ljava/net/MalformedURLException; {:try_start_c5 .. :try_end_dc} :catch_b6

    goto/16 :goto_14

    .line 148
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    :catch_de
    move-exception v0

    goto :goto_b8
.end method

.method public requestSearch(Ljava/lang/String;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;)V
    .registers 16
    .parameter "stockName"
    .parameter "owner"

    .prologue
    const/16 v12, 0x65

    const/4 v11, 0x1

    .line 266
    sget-boolean v9, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v9, :cond_e

    .line 267
    const-string v9, ""

    const-string v10, "HttpDataManager:SearchStock"

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v5, stockItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/stockclock/data/StockItem;>;"
    invoke-direct {p0}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->makeDefaultHeader()Lorg/apache/http/message/HeaderGroup;

    move-result-object v1

    .line 274
    .local v1, headerGroup:Lorg/apache/http/message/HeaderGroup;
    const-string v9, "\'"

    const-string v10, ""

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, tmpStockName:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<![CDATA["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]]>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 278
    .local v3, requestBody:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<?xml version=\'1.0\' encoding=\'utf-8\'?><request devtype=\'unknown\' deployver=\'unknown\' app=\'SamsungFinanceWidget\' appver=\'unknown\' api=\'finance\' apiver=\'1.0.0\' acknotification=\'0000\'><query id=\'0\' timestamp=\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/sec/android/widgetapp/stockclock/common/Util;->getTimestamp()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' type=\'getsymbol\'>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<phrase>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</phrase>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<count></count><offset>0</offset></query></request>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, requestBodyGL:Ljava/lang/String;
    const/4 v7, 0x0

    .line 285
    .local v7, url:Ljava/net/URL;
    const-string v9, "samsung-finance.api.mobile.yahoo.com"

    iput-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    .line 286
    move-object v3, v4

    .line 289
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->header:Ljava/lang/String;

    iput-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    .line 290
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->requestSelect:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->footer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->YQLkey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 294
    :try_start_a9
    new-instance v8, Ljava/net/URL;

    const-string v9, "http"

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->gurl:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b2
    .catch Ljava/net/MalformedURLException; {:try_start_a9 .. :try_end_b2} :catch_10e

    .line 297
    .end local v7           #url:Ljava/net/URL;
    .local v8, url:Ljava/net/URL;
    :try_start_b2
    new-instance v7, Ljava/net/URL;

    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->consumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;->sign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_c1
    .catch Loauth/signpost/exception/OAuthMessageSignerException; {:try_start_b2 .. :try_end_c1} :catch_ea
    .catch Loauth/signpost/exception/OAuthExpectationFailedException; {:try_start_b2 .. :try_end_c1} :catch_f6
    .catch Loauth/signpost/exception/OAuthCommunicationException; {:try_start_b2 .. :try_end_c1} :catch_102
    .catch Ljava/net/MalformedURLException; {:try_start_b2 .. :try_end_c1} :catch_116

    .line 325
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    const-string v9, ""

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "search url "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v9, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mHttpClient:Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;

    iget-object v10, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mContext:Landroid/content/Context;

    new-instance v11, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;

    invoke-direct {v11, p0, p2, p1}, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider$2;-><init>(Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v7, v1, v11}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    .line 405
    :goto_e9
    return-void

    .line 299
    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catch_ea
    move-exception v0

    .line 301
    .local v0, e:Loauth/signpost/exception/OAuthMessageSignerException;
    :try_start_eb
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthMessageSignerException;->printStackTrace()V

    .line 302
    const/16 v9, 0x65

    const/4 v10, 0x1

    invoke-interface {p2, v9, v10, p1, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v8

    .line 303
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_e9

    .line 305
    .end local v0           #e:Loauth/signpost/exception/OAuthMessageSignerException;
    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catch_f6
    move-exception v0

    .line 307
    .local v0, e:Loauth/signpost/exception/OAuthExpectationFailedException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthExpectationFailedException;->printStackTrace()V

    .line 308
    const/16 v9, 0x65

    const/4 v10, 0x1

    invoke-interface {p2, v9, v10, p1, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v8

    .line 309
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_e9

    .line 311
    .end local v0           #e:Loauth/signpost/exception/OAuthExpectationFailedException;
    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catch_102
    move-exception v0

    .line 313
    .local v0, e:Loauth/signpost/exception/OAuthCommunicationException;
    invoke-virtual {v0}, Loauth/signpost/exception/OAuthCommunicationException;->printStackTrace()V

    .line 314
    const/16 v9, 0x65

    const/4 v10, 0x1

    invoke-interface {p2, v9, v10, p1, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V
    :try_end_10c
    .catch Ljava/net/MalformedURLException; {:try_start_eb .. :try_end_10c} :catch_116

    move-object v7, v8

    .line 315
    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_e9

    .line 319
    .end local v0           #e:Loauth/signpost/exception/OAuthCommunicationException;
    :catch_10e
    move-exception v0

    .line 321
    .local v0, e:Ljava/net/MalformedURLException;
    :goto_10f
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 322
    invoke-interface {p2, v12, v11, p1, v5}, Lcom/sec/android/widgetapp/stockclock/http/HttpResultReceiver;->onHttpResult(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e9

    .line 319
    .end local v0           #e:Ljava/net/MalformedURLException;
    .end local v7           #url:Ljava/net/URL;
    .restart local v8       #url:Ljava/net/URL;
    :catch_116
    move-exception v0

    move-object v7, v8

    .end local v8           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    goto :goto_10f
.end method

.method public setCancelState(Z)V
    .registers 2
    .parameter "canceled"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/sec/android/widgetapp/stockclock/http/YahooContentsProvider;->mRequestCanceled:Z

    .line 69
    return-void
.end method
