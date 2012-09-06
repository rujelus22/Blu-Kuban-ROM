.class public LRM;
.super Ljava/lang/Object;
.source "Api7AndroidGDataClient.java"

# interfaces
.implements LarO;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final a:LJF;

.field private final a:Landroid/content/ContentResolver;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const-string v0, "2.0"

    sput-object v0, LRM;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, LJF;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, LJF;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, LRM;->a:LJF;

    .line 178
    iget-object v0, p0, LRM;->a:LJF;

    const-string v1, "GDataClient"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, LJF;->a(Ljava/lang/String;I)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, LRM;->a:Landroid/content/ContentResolver;

    .line 180
    iput-object p3, p0, LRM;->b:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private a(LRO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    const/4 v6, 0x0

    .line 223
    const/16 v5, 0x1f4

    .line 224
    const/16 v4, 0xa

    .line 228
    :try_start_5
    new-instance v3, Ljava/net/URI;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_c} :catch_ad

    .line 236
    const-wide/16 v1, 0x0

    move-object v13, v3

    move v3, v5

    move-object v5, v13

    move v14, v4

    move-object v4, v6

    move v6, v14

    .line 243
    :goto_14
    if-lez v6, :cond_202

    .line 245
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, LRO;->a(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    .line 247
    invoke-static {v4}, LJl;->a(Lorg/apache/http/HttpRequest;)V

    .line 252
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 253
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

    .line 259
    :cond_3f
    iget-object v3, p0, LRM;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4e

    .line 260
    const-string v3, "GData-Version"

    iget-object v5, p0, LRM;->b:Ljava/lang/String;

    invoke-interface {v4, v3, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_4e
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 265
    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 266
    const-string v5, "X-HTTP-Method-Override"

    invoke-interface {v4, v5}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 267
    if-eqz v5, :cond_64

    .line 268
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 270
    :cond_64
    const-string v5, "GET"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 273
    const-string v3, "If-None-Match"

    move-object/from16 v0, p4

    invoke-interface {v4, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_73
    :goto_73
    const-string v3, "GDataClient"

    const/4 v5, 0x2

    invoke-static {v3, v5}, LZA;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 285
    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    array-length v7, v5

    const/4 v3, 0x0

    :goto_82
    if-ge v3, v7, :cond_11a

    aget-object v8, v5, v3

    .line 286
    const-string v9, "GDataClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v8}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    .line 229
    :catch_ad
    move-exception v1

    .line 230
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

    invoke-static {v2, v3, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
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

    .line 274
    :cond_f7
    const-string v5, "DELETE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_107

    const-string v5, "PUT"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 278
    :cond_107
    const-string v3, "W/"

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_73

    .line 279
    const-string v3, "If-Match"

    move-object/from16 v0, p4

    invoke-interface {v4, v3, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_73

    .line 290
    :cond_11a
    const-string v3, "GDataClient"

    const/4 v5, 0x3

    invoke-static {v3, v5}, LZA;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_143

    .line 291
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

    invoke-static {v3, v5}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_143
    :try_start_143
    iget-object v3, p0, LRM;->a:LJF;

    invoke-virtual {v3, v4}, LJF;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_148} :catch_15e

    move-result-object v4

    .line 303
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 304
    if-nez v5, :cond_178

    .line 305
    const-string v1, "GDataClient"

    const-string v2, "StatusLine is null."

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "StatusLine is null -- should not happen."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 298
    :catch_15e
    move-exception v1

    .line 299
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

    invoke-static {v2, v3}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    throw v1

    .line 309
    :cond_178
    const-string v3, "GDataClient"

    const/4 v7, 0x3

    invoke-static {v3, v7}, LZA;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1bf

    .line 310
    const-string v3, "GDataClient"

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    array-length v8, v7

    const/4 v3, 0x0

    :goto_194
    if-ge v3, v8, :cond_1bf

    aget-object v9, v7, v3

    .line 312
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

    invoke-static {v10, v9}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_194

    .line 315
    :cond_1bf
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    .line 317
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 319
    const/16 v7, 0xc8

    if-lt v3, v7, :cond_1e3

    const/16 v7, 0x12c

    if-ge v3, v7, :cond_1e3

    if-eqz v5, :cond_1e3

    .line 320
    invoke-static {v5}, LJl;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    .line 321
    const-string v2, "GDataClient"

    const/4 v3, 0x3

    invoke-static {v2, v3}, LZA;->a(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1e2

    .line 322
    invoke-direct {p0, v1}, LRM;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    .line 324
    :cond_1e2
    return-object v1

    .line 331
    :cond_1e3
    const/16 v7, 0x12e

    if-ne v3, v7, :cond_2d3

    .line 333
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 334
    const-string v5, "Location"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v7

    .line 335
    if-nez v7, :cond_252

    .line 336
    const-string v5, "GDataClient"

    const/4 v6, 0x3

    invoke-static {v5, v6}, LZA;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_202

    .line 337
    const-string v5, "GDataClient"

    const-string v6, "Redirect requested but no Location specified."

    invoke-static {v5, v6}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_202
    :goto_202
    const-string v5, "GDataClient"

    const/4 v6, 0x2

    invoke-static {v5, v6}, LZA;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_229

    .line 384
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

    invoke-static {v5, v6}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_229
    const/4 v5, 0x0

    .line 387
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 389
    if-eqz v4, :cond_338

    if-eqz v6, :cond_338

    .line 390
    :try_start_232
    invoke-static {v6}, LJl;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v4

    .line 391
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 392
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 394
    :goto_23f
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_320

    .line 395
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_24a
    .catchall {:try_start_232 .. :try_end_24a} :catchall_24b

    goto :goto_23f

    .line 404
    :catchall_24b
    move-exception v1

    if-eqz v6, :cond_251

    .line 405
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_251
    throw v1

    .line 341
    :cond_252
    const-string v5, "GDataClient"

    const/4 v8, 0x3

    invoke-static {v5, v8}, LZA;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_277

    .line 342
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

    invoke-static {v5, v8}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_277
    :try_start_277
    new-instance v5, Ljava/net/URI;

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_280
    .catch Ljava/net/URISyntaxException; {:try_start_277 .. :try_end_280} :catch_284

    .line 353
    add-int/lit8 v6, v6, -0x1

    .line 354
    goto/16 :goto_14

    .line 346
    :catch_284
    move-exception v5

    .line 347
    const-string v6, "GDataClient"

    const/4 v8, 0x3

    invoke-static {v6, v8}, LZA;->a(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_202

    .line 348
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

    invoke-static {v1, v2, v5}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
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

    .line 354
    :cond_2d3
    const/16 v5, 0x1f7

    if-ne v3, v5, :cond_202

    .line 355
    const-string v5, "Retry-After"

    invoke-interface {v4, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 356
    if-eqz v5, :cond_202

    .line 361
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 365
    :try_start_2e3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2ed
    .catch Ljava/lang/NumberFormatException; {:try_start_2e3 .. :try_end_2ed} :catch_2f1

    move-result-wide v1

    add-long/2addr v1, v7

    goto/16 :goto_202

    .line 366
    :catch_2f1
    move-exception v5

    .line 369
    :try_start_2f2
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 370
    invoke-virtual {v5, v6}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    .line 371
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v1, v7, v9
    :try_end_303
    .catch Landroid/util/TimeFormatException; {:try_start_2f2 .. :try_end_303} :catch_305

    goto/16 :goto_202

    .line 372
    :catch_305
    move-exception v5

    .line 373
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

    invoke-static {v7, v6, v5}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_202

    .line 398
    :cond_320
    :try_start_320
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 399
    const-string v5, "GDataClient"

    const/4 v7, 0x2

    invoke-static {v5, v7}, LZA;->a(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_337

    .line 400
    const-string v5, "GDataClient"

    invoke-static {v5, v4}, LZA;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_337
    .catchall {:try_start_320 .. :try_end_337} :catchall_24b

    :cond_337
    move-object v5, v4

    .line 404
    :cond_338
    if-eqz v6, :cond_33d

    .line 405
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 408
    :cond_33d
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

    .line 409
    if-eqz v5, :cond_36f

    .line 410
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

    .line 412
    :cond_36f
    new-instance v5, LarZ;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v3, v6}, LarZ;-><init>(Ljava/lang/String;ILjava/io/InputStream;)V

    .line 414
    const/16 v4, 0x1f7

    if-ne v3, v4, :cond_37c

    .line 415
    invoke-virtual {v5, v1, v2}, LarZ;->a(J)V

    .line 417
    :cond_37c
    throw v5
.end method

.method private a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x4000

    .line 446
    if-nez p1, :cond_6

    .line 471
    :goto_5
    return-object p1

    .line 458
    :cond_6
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 459
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 462
    new-array v4, v1, [B

    move v3, v1

    move v1, v2

    .line 463
    :goto_12
    if-lez v3, :cond_1a

    .line 464
    invoke-virtual {v0, v4, v1, v3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    .line 465
    if-gtz v5, :cond_2b

    .line 469
    :cond_1a
    const-string v3, "GDataClient"

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v4, v2, v1, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v3, v5}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    move-object p1, v0

    .line 471
    goto :goto_5

    .line 466
    :cond_2b
    sub-int/2addr v3, v5

    .line 467
    add-int/2addr v1, v5

    .line 468
    goto :goto_12
.end method

.method private a(Lasv;I)Lorg/apache/http/HttpEntity;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 564
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 566
    :try_start_5
    invoke-interface {p1, v0, p2}, Lasv;->a(Ljava/io/OutputStream;I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_44
    .catch Lasn; {:try_start_5 .. :try_end_8} :catch_4d

    .line 575
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 577
    if-eqz v0, :cond_36

    const-string v1, "GDataClient"

    const/4 v2, 0x3

    invoke-static {v1, v2}, LZA;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 579
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

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_36} :catch_72

    .line 587
    :cond_36
    iget-object v1, p0, LRM;->a:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, LJl;->a([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v0

    .line 588
    invoke-interface {p1}, Lasv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 589
    return-object v0

    .line 567
    :catch_44
    move-exception v0

    .line 568
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    throw v0

    .line 570
    :catch_4d
    move-exception v0

    .line 571
    const-string v1, "GDataClient"

    const-string v2, "Unable to serialize entry."

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
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

    .line 580
    :catch_72
    move-exception v0

    .line 582
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

    .line 497
    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, LRM;->a(Lasv;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 498
    new-instance v1, LRP;

    invoke-direct {v1, v4, v0}, LRP;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LRM;->a(LRO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_16

    .line 502
    return-object v0

    .line 504
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
    .line 429
    new-instance v1, LRN;

    invoke-direct {v1}, LRN;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LRM;->a(LRO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_11

    .line 432
    return-object v0

    .line 434
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
    .line 515
    const/4 v0, 0x2

    invoke-direct {p0, p5, v0}, LRM;->a(Lasv;I)Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 516
    invoke-interface {p5}, Lasv;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "PATCH"

    .line 517
    :goto_d
    new-instance v1, LRP;

    invoke-direct {v1, v0, v2}, LRP;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LRM;->a(LRO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_21

    .line 521
    return-object v0

    .line 516
    :cond_1e
    const-string v0, "PUT"

    goto :goto_d

    .line 523
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

    .line 534
    invoke-static {p1}, Lasg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you must specify an non-empty edit url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_f
    new-instance v1, LRP;

    const-string v0, "DELETE"

    invoke-direct {v1, v0, v5}, LRP;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LRM;->a(LRO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 540
    if-nez v0, :cond_28

    .line 541
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to delete entry."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 548
    :goto_2b
    return-void

    .line 545
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
    .line 611
    const/4 v0, 0x3

    invoke-direct {p0, p4, v0}, LRM;->a(Lasv;I)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 612
    new-instance v1, LRP;

    const-string v2, "POST"

    invoke-direct {v1, v2, v0}, LRP;-><init>(Ljava/lang/String;Lorg/apache/http/HttpEntity;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LRM;->a(LRO;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 615
    if-eqz v0, :cond_18

    .line 616
    return-object v0

    .line 618
    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unable to process batch request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
