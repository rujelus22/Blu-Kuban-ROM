.class public Lacf;
.super Ljava/lang/Object;
.source "AndroidGDataClient.java"

# interfaces
.implements LarO;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final a:Laco;

.field private a:Landroid/content/ContentResolver;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-string v0, "2.0"

    sput-object v0, Lacf;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Laco;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Laco;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lacf;->a:Laco;

    .line 168
    iget-object v0, p0, Lacf;->a:Laco;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Laco;->a(Ljava/lang/String;I)V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lacf;->a:Landroid/content/ContentResolver;

    .line 170
    iput-object p3, p0, Lacf;->b:Ljava/lang/String;

    .line 171
    return-void
.end method

.method private a(Lach;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    const/4 v6, 0x0

    .line 213
    const/16 v5, 0x1f4

    .line 214
    const/16 v4, 0xa

    .line 218
    :try_start_5
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_c} :catch_b7

    .line 226
    const-wide/16 v1, 0x0

    move-object v13, v3

    move v3, v5

    move-object v5, v13

    move v14, v4

    move-object v4, v6

    move v6, v14

    .line 231
    :goto_14
    if-lez v6, :cond_1c8

    .line 233
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lach;->a(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    .line 234
    invoke-static {v4}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 238
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 239
    const-string v3, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GoogleLogin auth="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_3f
    iget-object v3, p0, Lacf;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 245
    const-string v3, "GData-Version"

    iget-object v5, p0, Lacf;->b:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_4e
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 250
    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 251
    const-string v5, "X-HTTP-Method-Override"

    invoke-interface {v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 252
    if-eqz v5, :cond_64

    .line 253
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 255
    :cond_64
    const-string v5, "GET"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_101

    .line 258
    const-string v3, "If-None-Match"

    move-object/from16 v0, p4

    invoke-interface {v4, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_73
    :goto_73
    const-string v3, "GDataClient"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 276
    const-string v3, "GDataClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executing "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_9c
    :try_start_9c
    iget-object v3, p0, Lacf;->a:Laco;

    invoke-virtual {v3, v4}, Laco;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_a1} :catch_124

    move-result-object v4

    .line 288
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 289
    if-nez v5, :cond_13e

    .line 290
    const-string v1, "GDataClient"

    const-string v2, "StatusLine is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "StatusLine is null -- should not happen."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :catch_b7
    move-exception v1

    .line 220
    const-string v2, "GDataClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as URI."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_101
    const-string v5, "DELETE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_111

    const-string v5, "PUT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 263
    :cond_111
    const-string v3, "W/"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 264
    const-string v3, "If-Match"

    move-object/from16 v0, p4

    invoke-interface {v4, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 283
    :catch_124
    move-exception v1

    .line 284
    const-string v2, "GDataClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to execute HTTP request."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    throw v1

    .line 294
    :cond_13e
    const-string v3, "GDataClient"

    const/4 v7, 0x3

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_185

    .line 295
    const-string v3, "GDataClient"

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    array-length v8, v7

    const/4 v3, 0x0

    :goto_15a
    if-ge v3, v8, :cond_185

    aget-object v9, v7, v3

    .line 297
    const-string v10, "GDataClient"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_15a

    .line 300
    :cond_185
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 302
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 304
    const/16 v7, 0xc8

    if-lt v3, v7, :cond_1a9

    const/16 v7, 0x12c

    if-ge v3, v7, :cond_1a9

    if-eqz v5, :cond_1a9

    .line 305
    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    .line 306
    const-string v2, "GDataClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 307
    invoke-direct {p0, v1}, Lacf;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 309
    :cond_1a8
    return-object v1

    .line 315
    :cond_1a9
    const/16 v7, 0x12e

    if-ne v3, v7, :cond_299

    .line 317
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 318
    const-string v5, "Location"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 319
    if-nez v7, :cond_218

    .line 320
    const-string v5, "GDataClient"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1c8

    .line 321
    const-string v5, "GDataClient"

    const-string v6, "Redirect requested but no Location specified."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_1c8
    :goto_1c8
    const-string v5, "GDataClient"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1ef

    .line 370
    const-string v5, "GDataClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status code."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_1ef
    const/4 v5, 0x0

    .line 373
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 375
    if-eqz v4, :cond_2fe

    if-eqz v6, :cond_2fe

    .line 376
    :try_start_1f8
    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v4

    .line 377
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 378
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 380
    :goto_205
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2e6

    .line 381
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_210
    .catchall {:try_start_1f8 .. :try_end_210} :catchall_211

    goto :goto_205

    .line 390
    :catchall_211
    move-exception v1

    if-eqz v6, :cond_217

    .line 391
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_217
    throw v1

    .line 326
    :cond_218
    const-string v5, "GDataClient"

    const/4 v8, 0x3

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_23d

    .line 327
    const-string v5, "GDataClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Following redirect to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_23d
    :try_start_23d
    new-instance v5, Ljava/net/URI;

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_246
    .catch Ljava/net/URISyntaxException; {:try_start_23d .. :try_end_246} :catch_24a

    .line 339
    add-int/lit8 v6, v6, -0x1

    .line 340
    goto/16 :goto_14

    .line 331
    :catch_24a
    move-exception v5

    .line 332
    const-string v6, "GDataClient"

    const/4 v8, 0x3

    invoke-static {v6, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1c8

    .line 333
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as URI."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as URI."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 340
    :cond_299
    const/16 v5, 0x1f7

    if-ne v3, v5, :cond_1c8

    .line 341
    const-string v5, "Retry-After"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 342
    if-eqz v5, :cond_1c8

    .line 346
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 350
    :try_start_2a9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2b3
    .catch Ljava/lang/NumberFormatException; {:try_start_2a9 .. :try_end_2b3} :catch_2b7

    move-result-wide v1

    add-long/2addr v1, v7

    goto/16 :goto_1c8

    .line 352
    :catch_2b7
    move-exception v5

    .line 355
    :try_start_2b8
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 356
    invoke-virtual {v5, v6}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 357
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v1, v7, v9
    :try_end_2c9
    .catch Landroid/util/TimeFormatException; {:try_start_2b8 .. :try_end_2c9} :catch_2cb

    goto/16 :goto_1c8

    .line 358
    :catch_2cb
    move-exception v5

    .line 359
    const-string v7, "GDataClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to parse "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c8

    .line 384
    :cond_2e6
    :try_start_2e6
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 385
    const-string v5, "GDataClient"

    const/4 v7, 0x2

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2fd

    .line 386
    const-string v5, "GDataClient"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2fd
    .catchall {:try_start_2e6 .. :try_end_2fd} :catchall_211

    :cond_2fd
    move-object v5, v4

    .line 390
    :cond_2fe
    if-eqz v6, :cond_303

    .line 391
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 394
    :cond_303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " status code"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 395
    if-eqz v5, :cond_335

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    :cond_335
    new-instance v5, LarZ;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v3, v6}, LarZ;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    .line 400
    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_342

    .line 401
    invoke-virtual {v5, v1, v2}, LarZ;->a(J)V

    .line 403
    :cond_342
    throw v5
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x4000

    .line 433
    if-nez p1, :cond_6

    .line 458
    :goto_5
    return-object p1

    .line 445
    :cond_6
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 446
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 449
    new-array v4, v1, [B

    move v3, v1

    move v1, v2

    .line 450
    :goto_12
    if-lez v3, :cond_1a

    .line 451
    invoke-virtual {v0, v4, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 452
    if-gtz v5, :cond_2b

    .line 456
    :cond_1a
    const-string v3, "GDataClient"

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v2, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object p1, v0

    .line 458
    goto :goto_5

    .line 453
    :cond_2b
    sub-int/2addr v3, v5

    .line 454
    add-int/2addr v1, v5

    .line 455
    goto :goto_12
.end method

.method private a(Lasv;I)Lorg/apache/http/HttpEntity;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 559
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 561
    :try_start_5
    invoke-interface {p1, v0, p2}, Lasv;->a(Ljava/io/OutputStream;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_44
    .catch Lasn; {:try_start_5 .. :try_end_8} :catch_4d

    .line 570
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 572
    if-eqz v0, :cond_36

    const-string v1, "GDataClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 574
    :try_start_17
    const-string v1, "GDataClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Serialized entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_36} :catch_72

    .line 583
    :cond_36
    iget-object v1, p0, Lacf;->a:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 584
    invoke-interface {p1}, Lasv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 585
    return-object v0

    .line 562
    :catch_44
    move-exception v0

    .line 563
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 564
    throw v0

    .line 565
    :catch_4d
    move-exception v0

    .line 566
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to serialize entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :catch_72
    move-exception v0

    .line 577
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UTF-8 should be supported!"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lasv;)Ljava/io/InputStream;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 481
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Lacf;->a(Lasv;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 482
    new-instance v1, Laci;

    invoke-direct {v1, v4, v0}, Laci;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lacf;->a(Lach;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 488
    if-eqz v0, :cond_16

    .line 489
    return-object v0

    .line 491
    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to create entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    new-instance v1, Lacg;

    invoke-direct {v1}, Lacg;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lacf;->a(Lach;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 418
    if-eqz v0, :cond_11

    .line 419
    return-object v0

    .line 421
    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to access feed."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lasv;)Ljava/io/InputStream;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 503
    const/4 v0, 0x2

    invoke-direct {p0, p5, v0}, Lacf;->a(Lasv;I)Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 504
    invoke-interface {p5}, Lasv;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "PATCH"

    .line 505
    :goto_d
    new-instance v1, Laci;

    invoke-direct {v1, v0, v2}, Laci;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lacf;->a(Lach;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_21

    .line 512
    return-object v0

    .line 504
    :cond_1e
    const-string v0, "PUT"

    goto :goto_d

    .line 514
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to update entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 522
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 523
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify an non-empty edit url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 526
    :cond_f
    new-instance v1, Laci;

    const-string v0, "DELETE"

    invoke-direct {v1, v0, v5}, Laci;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lacf;->a(Lach;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 533
    if-nez v0, :cond_28

    .line 534
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to delete entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 541
    :goto_2b
    return-void

    .line 538
    :catch_2c
    move-exception v0

    goto :goto_2b
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lasv;)Ljava/io/InputStream;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 610
    const/4 v0, 0x3

    invoke-direct {p0, p4, v0}, Lacf;->a(Lasv;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 611
    new-instance v1, Laci;

    const-string v2, "POST"

    invoke-direct {v1, v2, v0}, Laci;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lacf;->a(Lach;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 617
    if-eqz v0, :cond_18

    .line 618
    return-object v0

    .line 620
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to process batch request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
