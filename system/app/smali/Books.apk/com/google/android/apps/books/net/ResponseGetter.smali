.class public Lcom/google/android/apps/books/net/ResponseGetter;
.super Ljava/lang/Object;
.source "ResponseGetter.java"


# static fields
.field public static final AUTHORIZATION_HEADER_KEY:Ljava/lang/String; = "Authorization"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final sDefaultCodes:[I


# instance fields
.field private final mHttpClient:Lorg/apache/http/client/HttpClient;

.field private final mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc8

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/apps/books/net/ResponseGetter;->sDefaultCodes:[I

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/client/HttpClient;Lcom/google/android/apps/books/net/HttpHelper;)V
    .registers 4
    .parameter "httpClient"
    .parameter "httpHelper"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "missing httpHelper"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/HttpHelper;

    iput-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    .line 74
    const-string v0, "missing httpClient"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 75
    return-void
.end method

.method private getAuthToken(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7
    .parameter "request"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 208
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, uri:Ljava/lang/String;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, scheme:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/apps/books/net/HttpUtils;->isDebugServer(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    if-eqz v0, :cond_2b

    const-string v2, "https"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_24
    iget-object v2, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/books/net/HttpHelper;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    :goto_2a
    return-object v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method private static getHeaders(Lorg/apache/http/HttpMessage;)Ljava/lang/String;
    .registers 10
    .parameter "request"

    .prologue
    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    .local v6, sb:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/HttpMessage;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 229
    .local v2, headers:[Lorg/apache/http/Header;
    move-object v0, v2

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v4, :cond_36

    aget-object v1, v0, v3

    .line 230
    .local v1, header:Lorg/apache/http/Header;
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, name:Ljava/lang/String;
    const-string v7, "Authorization"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_33

    .line 232
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 235
    .end local v1           #header:Lorg/apache/http/Header;
    .end local v5           #name:Ljava/lang/String;
    :cond_36
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private static maybeGetPostBody(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .registers 5
    .parameter "request"

    .prologue
    .line 242
    instance-of v3, p0, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v3, :cond_1c

    move-object v2, p0

    .line 243
    check-cast v2, Lorg/apache/http/client/methods/HttpPost;

    .line 244
    .local v2, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 245
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 247
    :try_start_13
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_18

    move-result-object v3

    .line 253
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_17
    return-object v3

    .line 248
    .restart local v1       #entity:Lorg/apache/http/HttpEntity;
    .restart local v2       #post:Lorg/apache/http/client/methods/HttpPost;
    :catch_18
    move-exception v0

    .line 249
    .local v0, e:Ljava/io/IOException;
    const-string v3, ""

    goto :goto_17

    .line 253
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    .end local v2           #post:Lorg/apache/http/client/methods/HttpPost;
    :cond_1c
    const-string v3, ""

    goto :goto_17
.end method

.method private static toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;
    .registers 3
    .parameter "request"

    .prologue
    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->getHeaders(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->maybeGetPostBody(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toVerboseString(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nResponse\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toVerboseString(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 3
    .parameter "response"

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/books/net/ResponseGetter;->getHeaders(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public varargs execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;
    .registers 11
    .parameter "request"
    .parameter "account"
    .parameter "okCodes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p3, :cond_5

    array-length v4, p3

    if-nez v4, :cond_7

    .line 111
    :cond_5
    sget-object p3, Lcom/google/android/apps/books/net/ResponseGetter;->sDefaultCodes:[I

    .line 115
    :cond_7
    const/4 v0, 0x0

    .line 118
    .local v0, errCount:I
    :cond_8
    :try_start_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/books/net/ResponseGetter;->executeOnce(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-object v4

    return-object v4

    .line 119
    :catch_d
    move-exception v2

    .line 121
    .local v2, ioe:Ljava/io/IOException;
    add-int/lit8 v0, v0, 0x1

    .line 122
    move-object v1, v2

    .line 123
    .local v1, ioException:Ljava/io/IOException;
    const-string v4, "ResponseGetter"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 124
    const-string v4, "ResponseGetter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "errCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3c
    iget-object v4, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/books/net/HttpHelper;->shouldSkipRetry(Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v3

    .line 129
    .local v3, wrapException:Ljava/io/IOException;
    if-eqz v3, :cond_4d

    .line 130
    throw v3

    .line 133
    :cond_4d
    iget-object v4, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    invoke-virtual {v4}, Lcom/google/android/apps/books/net/HttpHelper;->sleep()V

    .line 135
    const/4 v4, 0x3

    if-lt v0, v4, :cond_8

    .line 137
    throw v1
.end method

.method protected executeOnce(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;
    .registers 25
    .parameter "request"
    .parameter "account"
    .parameter "okCodes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-direct/range {p0 .. p2}, Lcom/google/android/apps/books/net/ResponseGetter;->getAuthToken(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, authToken:Ljava/lang/String;
    const-string v18, "Authorization"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 153
    if-eqz v4, :cond_2f

    .line 154
    const-string v18, "Authorization"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "GoogleLogin auth="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_2f
    const-string v18, "ForwardedForIp"

    const/16 v19, 0x0

    const-string v20, "ResponseGetter"

    invoke-static/range {v18 .. v20}, Lcom/google/android/apps/books/util/LogUtil;->getLogTagProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 158
    .local v9, forwardIp:Ljava/lang/String;
    const-string v18, "X-Forwarded-For"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeaders(Ljava/lang/String;)V

    .line 159
    invoke-static {v9}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_51

    .line 160
    const-string v18, "X-Forwarded-For"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_51
    :try_start_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpClient:Lorg/apache/http/client/HttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5e} :catch_74

    move-result-object v15

    .line 170
    .local v15, resp:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    .line 171
    .local v17, statusLine:Lorg/apache/http/StatusLine;
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    .line 175
    .local v16, status:I
    move-object/from16 v3, p3

    .local v3, arr$:[I
    array-length v12, v3

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_6b
    if-ge v10, v12, :cond_89

    aget v14, v3, v10

    .line 176
    .local v14, okCode:I
    move/from16 v0, v16

    if-ne v0, v14, :cond_86

    .line 198
    .end local v14           #okCode:I
    :cond_73
    return-object v15

    .line 166
    .end local v3           #arr$:[I
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v15           #resp:Lorg/apache/http/HttpResponse;
    .end local v16           #status:I
    .end local v17           #statusLine:Lorg/apache/http/StatusLine;
    :catch_74
    move-exception v7

    .line 167
    .local v7, e:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    move-object/from16 v18, v0

    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Lcom/google/android/apps/books/net/HttpHelper;->wrapException(Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v18

    throw v18

    .line 175
    .end local v7           #e:Ljava/io/IOException;
    .restart local v3       #arr$:[I
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v14       #okCode:I
    .restart local v15       #resp:Lorg/apache/http/HttpResponse;
    .restart local v16       #status:I
    .restart local v17       #statusLine:Lorg/apache/http/StatusLine;
    :cond_86
    add-int/lit8 v10, v10, 0x1

    goto :goto_6b

    .line 183
    .end local v14           #okCode:I
    :cond_89
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, codePlusReason:Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/HttpResponseException;

    move/from16 v0, v16

    invoke-direct {v5, v0, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 185
    .local v5, cause:Lorg/apache/http/client/HttpResponseException;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 187
    .local v8, entity:Lorg/apache/http/HttpEntity;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/apps/books/net/ResponseGetter;->toVerboseString(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, msg:Ljava/lang/String;
    move/from16 v0, v16

    invoke-static {v0, v13, v5}, Lcom/google/android/apps/books/net/HttpHelper;->wrapExceptionBasedOnStatus(ILjava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v11

    .line 189
    .local v11, ioException:Ljava/io/IOException;
    if-eqz v11, :cond_73

    .line 190
    if-eqz v8, :cond_df

    .line 191
    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 193
    :cond_df
    instance-of v0, v11, Lcom/google/android/apps/books/net/HttpHelper$AuthIoException;

    move/from16 v18, v0

    if-eqz v18, :cond_ea

    .line 194
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/apps/books/net/ResponseGetter;->invalidateAuthToken(Ljava/lang/String;)V

    .line 196
    :cond_ea
    throw v11
.end method

.method public varargs get(Ljava/lang/String;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;
    .registers 6
    .parameter "uri"
    .end parameter
    .parameter "account"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "okCodes"
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/apps/books/net/ResponseGetter;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Landroid/accounts/Account;[I)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method protected invalidateAuthToken(Ljava/lang/String;)V
    .registers 4
    .parameter "authToken"

    .prologue
    .line 216
    if-eqz p1, :cond_d

    .line 217
    iget-object v0, p0, Lcom/google/android/apps/books/net/ResponseGetter;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    invoke-virtual {v0}, Lcom/google/android/apps/books/net/HttpHelper;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_d
    return-void
.end method
