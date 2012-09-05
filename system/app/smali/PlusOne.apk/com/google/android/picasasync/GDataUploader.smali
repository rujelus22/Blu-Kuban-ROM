.class Lcom/google/android/picasasync/GDataUploader;
.super Ljava/lang/Object;
.source "GDataUploader.java"

# interfaces
.implements Lcom/google/android/picasasync/Uploader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/picasasync/GDataUploader$1;,
        Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    }
.end annotation


# static fields
.field private static final RE_RANGE_HEADER:Ljava/util/regex/Pattern;


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mAuthorizer:Lcom/google/android/picasasync/Authorizer;

.field private mContext:Landroid/content/Context;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

.field private mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/picasasync/GDataUploader;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/google/android/picasasync/GDataUploader;->mContext:Landroid/content/Context;

    .line 91
    invoke-static {p1}, Lcom/android/gallery3d/common/HttpClientFactory;->newHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/picasasync/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 92
    return-void
.end method

.method private executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 7
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v2, p0, Lcom/google/android/picasasync/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 370
    .local v0, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 373
    .local v1, statusCode:I
    const/16 v2, 0x191

    if-eq v1, v2, :cond_16

    const/16 v2, 0x193

    if-ne v1, v2, :cond_4d

    .line 375
    :cond_16
    iget-object v2, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthorizer:Lcom/google/android/picasasync/Authorizer;

    iget-object v3, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/picasasync/Authorizer;->getFreshAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    .line 376
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GoogleLogin auth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "UploadsManager"

    const-string v3, "executeWithAuthRetry: attempt #2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v2, p0, Lcom/google/android/picasasync/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v2, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 380
    :cond_4d
    return-object v0
.end method

.method private static getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;
    .registers 6
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 497
    .local v0, entity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    .line 498
    invoke-static {v0}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    .line 499
    const/4 v0, 0x0

    .line 501
    :cond_17
    return-object v0
.end method

.method private static getInitialRequest(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 12
    .parameter "uri"
    .parameter "requestTemplate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 399
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 401
    .local v7, request:Lorg/apache/http/client/methods/HttpPost;
    const/4 v3, 0x0

    .line 402
    .local v3, headersString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 403
    .local v6, metadataString:Ljava/lang/String;
    const-string v9, "\r\n\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 407
    .local v0, emptyLine:I
    if-lez v0, :cond_3e

    .line 408
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 415
    :goto_1c
    invoke-static {v3}, Lcom/google/android/picasasync/GDataUploader;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 416
    .local v2, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 417
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 418
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v7, v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 411
    .end local v2           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3e
    move-object v3, p1

    goto :goto_1c

    .line 422
    .restart local v2       #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_40
    if-eqz v6, :cond_50

    .line 423
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 424
    .local v1, entity:Lorg/apache/http/entity/StringEntity;
    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 428
    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    :cond_50
    return-object v7
.end method

.method private static getResumeRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4
    .parameter "uploadUrl"

    .prologue
    .line 435
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 436
    .local v0, request:Lorg/apache/http/client/methods/HttpPut;
    const-string v1, "Content-Range"

    const-string v2, "bytes */*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-object v0
.end method

.method private static getUploadRequest(Ljava/lang/String;Ljava/lang/String;JIJ[B)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 19
    .parameter "uploadUrl"
    .parameter "contentType"
    .parameter "offset"
    .parameter "length"
    .parameter "totalBytes"
    .parameter "data"

    .prologue
    .line 449
    new-instance v6, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 450
    .local v6, request:Lorg/apache/http/client/methods/HttpPut;
    int-to-long v7, p4

    add-long/2addr v7, p2

    const-wide/16 v9, 0x1

    sub-long v4, v7, v9

    .line 451
    .local v4, lastByte:J
    const-string v7, "Content-Range"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bytes "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p5

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v7, "Content-Type"

    invoke-virtual {v6, v7, p1}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x0

    move-object/from16 v0, p7

    invoke-direct {v2, v0, v7, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 456
    .local v2, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v7, p4

    invoke-direct {v3, v2, v7, v8}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 457
    .local v3, entity:Lorg/apache/http/entity/InputStreamEntity;
    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 459
    return-object v6
.end method

.method private static isIncompeteStatusCode(I)Z
    .registers 2
    .parameter "code"

    .prologue
    .line 467
    const/16 v0, 0x134

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static isSuccessStatusCode(I)Z
    .registers 2
    .parameter "code"

    .prologue
    .line 463
    const/16 v0, 0xc8

    if-eq p0, v0, :cond_8

    const/16 v0, 0xc9

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private newUploadedEntry(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)Lcom/google/android/picasasync/UploadedEntry;
    .registers 12
    .parameter "response"

    .prologue
    .line 354
    new-instance v0, Lcom/google/android/picasasync/UploadedEntry;

    iget-object v1, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    iget-wide v2, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoId:J

    iget-wide v4, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoSize:J

    iget-wide v6, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->timestamp:J

    iget-object v8, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->fingerprint:Lcom/android/gallery3d/common/Fingerprint;

    invoke-virtual {v9}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/picasasync/UploadedEntry;-><init>(Lcom/google/android/picasasync/UploadTaskEntry;JJJLjava/lang/String;[B)V

    return-object v0
.end method

.method private static parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 10
    .parameter "headersString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 521
    .local v1, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "\r\n"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 522
    .local v5, lines:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_e
    if-ge v2, v3, :cond_28

    aget-object v4, v0, v2

    .line 523
    .local v4, line:Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 524
    .local v6, pair:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_25

    .line 525
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 528
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #pair:[Ljava/lang/String;
    :cond_28
    return-object v1
.end method

.method private static parseRangeHeaderEndByte(Ljava/lang/String;)J
    .registers 6
    .parameter "header"

    .prologue
    .line 488
    if-eqz p0, :cond_1b

    .line 489
    sget-object v1, Lcom/google/android/picasasync/GDataUploader;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 490
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 492
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_1a
    return-wide v1

    :cond_1b
    const-wide/16 v1, -0x1

    goto :goto_1a
.end method

.method private parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    .registers 6
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$UploadException;
        }
    .end annotation

    .prologue
    .line 385
    if-nez p1, :cond_a

    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v3, "null HttpEntity in response"

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 386
    :cond_a
    new-instance v0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/picasasync/GDataUploader$GDataResponse;-><init>(Lcom/google/android/picasasync/GDataUploader$1;)V

    .line 387
    .local v0, contentHandler:Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 389
    .local v1, is:Ljava/io/InputStream;
    :try_start_14
    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v1, v2, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_20

    .line 391
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 393
    invoke-virtual {v0}, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->validateResult()V

    .line 394
    return-object v0

    .line 391
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method private static readFullyOrToEof(Ljava/io/InputStream;[BII)I
    .registers 8
    .parameter "in"
    .parameter "array"
    .parameter "pos"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, count:I
    :goto_1
    if-ge v0, p3, :cond_e

    .line 477
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 478
    .local v1, n:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 481
    .end local v1           #n:I
    :cond_e
    return v0

    .line 479
    .restart local v1       #n:I
    :cond_f
    add-int/2addr v0, v1

    .line 480
    goto :goto_1
.end method

.method private resetUpload()V
    .registers 4

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 365
    return-void
.end method

.method private resume(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    .registers 13
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/picasasync/Uploader$UploadException;,
            Lcom/google/android/picasasync/Uploader$LocalIoException;,
            Lcom/google/android/picasasync/Uploader$MediaFileChangedException;,
            Lcom/google/android/picasasync/Uploader$RestartException;,
            Lcom/google/android/picasasync/Uploader$UnauthorizedException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v8, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v8}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/picasasync/GDataUploader;->getResumeRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    .line 194
    .local v6, resumeRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, v6}, Lcom/google/android/picasasync/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 195
    .local v7, resumeResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 196
    .local v0, code:I
    invoke-static {v7}, Lcom/google/android/picasasync/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 197
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_23

    .line 198
    const-string v8, "UploadsManager"

    const-string v9, "  Entity: content length was 0."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_23
    :try_start_23
    invoke-static {v0}, Lcom/google/android/picasasync/GDataUploader;->isIncompeteStatusCode(I)Z

    move-result v8

    if-eqz v8, :cond_7b

    const-string v8, "range"

    invoke-interface {v7, v8}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 205
    const-string v8, "range"

    invoke-interface {v7, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 206
    .local v4, rangeHeader:Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/picasasync/GDataUploader;->parseRangeHeaderEndByte(Ljava/lang/String;)J

    move-result-wide v2

    .line 207
    .local v2, offset:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_66

    .line 208
    invoke-direct {p0}, Lcom/google/android/picasasync/GDataUploader;->resetUpload()V

    .line 209
    new-instance v8, Lcom/google/android/picasasync/Uploader$RestartException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "negative range offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/picasasync/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_61
    .catchall {:try_start_23 .. :try_end_61} :catchall_61

    .line 230
    .end local v2           #offset:J
    .end local v4           #rangeHeader:Lorg/apache/http/Header;
    :catchall_61
    move-exception v8

    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v8

    .line 211
    .restart local v2       #offset:J
    .restart local v4       #rangeHeader:Lorg/apache/http/Header;
    :cond_66
    :try_start_66
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 212
    const/high16 v8, 0x4

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 213
    iget-object v8, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v8, v2, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/GDataUploader;->uploadChunks(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_76
    .catchall {:try_start_66 .. :try_end_76} :catchall_61

    move-result-object v8

    .line 230
    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    .end local v2           #offset:J
    .end local v4           #rangeHeader:Lorg/apache/http/Header;
    :goto_7a
    return-object v8

    .line 215
    :cond_7b
    :try_start_7b
    invoke-static {v0}, Lcom/google/android/picasasync/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 216
    invoke-direct {p0, v1}, Lcom/google/android/picasasync/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    move-result-object v5

    .line 217
    .local v5, response:Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/GDataUploader;->throwIfQuotaError(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)V

    .line 218
    const-string v8, "UploadsManager"

    const-string v9, "nothing to resume, upload already completed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v8, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    iget-object v9, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v9}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 220
    invoke-direct {p0, v5}, Lcom/google/android/picasasync/GDataUploader;->newUploadedEntry(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_9d
    .catchall {:try_start_7b .. :try_end_9d} :catchall_61

    move-result-object v8

    .line 230
    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto :goto_7a

    .line 221
    .end local v5           #response:Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    :cond_a2
    const/16 v8, 0x191

    if-ne v0, v8, :cond_b4

    .line 223
    :try_start_a6
    new-instance v8, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 225
    :cond_b4
    invoke-direct {p0}, Lcom/google/android/picasasync/GDataUploader;->resetUpload()V

    .line 226
    new-instance v8, Lcom/google/android/picasasync/Uploader$RestartException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected resume response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/picasasync/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_d4
    .catchall {:try_start_a6 .. :try_end_d4} :catchall_61
.end method

.method private static safeConsumeContent(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .parameter "entity"

    .prologue
    .line 511
    if-eqz p0, :cond_5

    .line 513
    :try_start_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 517
    :cond_5
    :goto_5
    return-void

    .line 514
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private start(Ljava/io/InputStream;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/picasasync/UploadedEntry;
    .registers 12
    .parameter "is"
    .parameter "uri"
    .parameter "requestTemplate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/picasasync/Uploader$UploadException;,
            Lcom/google/android/picasasync/Uploader$MediaFileChangedException;,
            Lcom/google/android/picasasync/Uploader$UnauthorizedException;,
            Lcom/google/android/picasasync/Uploader$RestartException;,
            Lcom/google/android/picasasync/Uploader$LocalIoException;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p2, p3}, Lcom/google/android/picasasync/GDataUploader;->getInitialRequest(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 152
    .local v2, initialRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, v2}, Lcom/google/android/picasasync/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 153
    .local v3, initialResponse:Lorg/apache/http/HttpResponse;
    invoke-static {v3}, Lcom/google/android/picasasync/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 155
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 158
    .local v0, code:I
    :try_start_14
    invoke-static {v0}, Lcom/google/android/picasasync/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 159
    if-eqz v1, :cond_23

    invoke-direct {p0, v1}, Lcom/google/android/picasasync/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/picasasync/GDataUploader;->throwIfQuotaError(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)V

    .line 160
    :cond_23
    const-string v5, "Location"

    invoke-interface {v3, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 161
    .local v4, locationHeader:Lorg/apache/http/Header;
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 162
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/picasasync/GDataUploader;->uploadChunks(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_62

    move-result-object v5

    .line 185
    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    return-object v5

    .line 164
    .end local v4           #locationHeader:Lorg/apache/http/Header;
    :cond_41
    const/16 v5, 0x190

    if-ne v0, v5, :cond_67

    .line 167
    :try_start_45
    new-instance v5, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload failed (bad payload, file too large) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_62

    .line 185
    :catchall_62
    move-exception v5

    invoke-static {v1}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v5

    .line 170
    :cond_67
    const/16 v5, 0x191

    if-ne v0, v5, :cond_79

    .line 172
    :try_start_6b
    new-instance v5, Lcom/google/android/picasasync/Uploader$UnauthorizedException;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 173
    :cond_79
    const/16 v5, 0x1f4

    if-lt v0, v5, :cond_9e

    const/16 v5, 0x258

    if-ge v0, v5, :cond_9e

    .line 176
    new-instance v5, Lcom/google/android/picasasync/Uploader$RestartException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload transient error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    :cond_9e
    new-instance v5, Lcom/google/android/picasasync/Uploader$UploadException;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_ac
    .catchall {:try_start_6b .. :try_end_ac} :catchall_62
.end method

.method private throwIfQuotaError(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)V
    .registers 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;
        }
    .end annotation

    .prologue
    .line 505
    if-eqz p1, :cond_14

    const-string v0, "LimitQuota"

    iget-object v1, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 506
    new-instance v0, Lcom/google/android/picasasync/Uploader$PicasaQuotaException;

    iget-object v1, p1, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->errorCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/Uploader$PicasaQuotaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_14
    return-void
.end method

.method private uploadChunks(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    .registers 29
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/picasasync/Uploader$UploadException;,
            Lcom/google/android/picasasync/Uploader$MediaFileChangedException;,
            Lcom/google/android/picasasync/Uploader$RestartException;,
            Lcom/google/android/picasasync/Uploader$LocalIoException;
        }
    .end annotation

    .prologue
    .line 238
    const/high16 v2, 0x4

    new-array v9, v2, [B

    .line 240
    .local v9, buffer:[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesUploaded()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-gez v2, :cond_23a

    .line 241
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-interface {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadProgressListener;->onProgress(Lcom/google/android/picasasync/UploadTaskEntry;)V

    .line 242
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->isUploading()Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v2, 0x0

    .line 347
    :goto_34
    return-object v2

    .line 245
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesUploaded()J

    move-result-wide v4

    .line 246
    .local v4, offset:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v2

    sub-long/2addr v2, v4

    long-to-int v6, v2

    .line 247
    .local v6, length:I
    const/high16 v2, 0x4

    if-gt v6, v2, :cond_fe

    const/16 v20, 0x1

    .line 248
    .local v20, lastChunk:Z
    :goto_4d
    if-nez v20, :cond_51

    const/high16 v6, 0x4

    .line 251
    :cond_51
    const/high16 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 256
    const/4 v2, 0x0

    :try_start_59
    move-object/from16 v0, p1

    invoke-static {v0, v9, v2, v6}, Lcom/google/android/picasasync/GDataUploader;->readFullyOrToEof(Ljava/io/InputStream;[BII)I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_102

    move-result v22

    .line 261
    .local v22, read:I
    if-nez v20, :cond_65

    move/from16 v0, v22

    if-eq v0, v6, :cond_125

    .line 263
    :cond_65
    const/4 v2, 0x1

    new-array v12, v2, [J

    .line 264
    .local v12, byteCount:[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/gallery3d/common/Fingerprint;->fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v16

    .line 267
    .local v16, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/common/Fingerprint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_125

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 272
    .local v14, contentUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/picasasync/UploadTaskEntry;->setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v26

    .line 274
    .local v26, uploadUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/picasasync/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    const/4 v3, 0x0

    aget-wide v7, v12, v3

    invoke-virtual {v2, v7, v8}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesTotal(J)V

    .line 279
    :try_start_c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

    if-eqz v2, :cond_d9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-interface {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadProgressListener;->onFileChanged(Lcom/google/android/picasasync/UploadTaskEntry;)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_d9} :catch_109

    .line 284
    :cond_d9
    :goto_d9
    new-instance v2, Lcom/google/android/picasasync/Uploader$MediaFileChangedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPLOAD_SIZE_DATA_MISMATCH: fingerprint changed; uri="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",uploadUrl="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$MediaFileChangedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    .end local v12           #byteCount:[J
    .end local v14           #contentUri:Ljava/lang/String;
    .end local v16           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v20           #lastChunk:Z
    .end local v22           #read:I
    .end local v26           #uploadUrl:Ljava/lang/String;
    :cond_fe
    const/16 v20, 0x0

    goto/16 :goto_4d

    .line 257
    .restart local v20       #lastChunk:Z
    :catch_102
    move-exception v15

    .line 258
    .local v15, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/android/picasasync/Uploader$LocalIoException;

    invoke-direct {v2, v15}, Lcom/google/android/picasasync/Uploader$LocalIoException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 280
    .end local v15           #e:Ljava/io/IOException;
    .restart local v12       #byteCount:[J
    .restart local v14       #contentUri:Ljava/lang/String;
    .restart local v16       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v22       #read:I
    .restart local v26       #uploadUrl:Ljava/lang/String;
    :catch_109
    move-exception v19

    .line 281
    .local v19, ignored:Ljava/lang/Throwable;
    const-string v2, "UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error calling back on file change:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 291
    .end local v12           #byteCount:[J
    .end local v14           #contentUri:Ljava/lang/String;
    .end local v16           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v19           #ignored:Ljava/lang/Throwable;
    .end local v26           #uploadUrl:Ljava/lang/String;
    :cond_125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v7}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    invoke-static/range {v2 .. v9}, Lcom/google/android/picasasync/GDataUploader;->getUploadRequest(Ljava/lang/String;Ljava/lang/String;JIJ[B)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v24

    .line 298
    .local v24, uploadRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v25

    .line 302
    .local v25, uploadResponse:Lorg/apache/http/HttpResponse;
    :try_start_149
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 303
    .local v13, code:I
    invoke-static {v13}, Lcom/google/android/picasasync/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 304
    invoke-static/range {v25 .. v25}, Lcom/google/android/picasasync/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/picasasync/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/picasasync/GDataUploader$GDataResponse;

    move-result-object v23

    .line 305
    .local v23, response:Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/GDataUploader;->throwIfQuotaError(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)V

    .line 306
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/picasasync/GDataUploader$GDataResponse;->photoSize:J

    move-wide/from16 v17, v0

    .line 309
    .local v17, gDataSize:J
    const-string v2, "UploadsManager"

    const-string v3, "UPLOAD_SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V

    .line 311
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/picasasync/GDataUploader;->newUploadedEntry(Lcom/google/android/picasasync/GDataUploader$GDataResponse;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_18b
    .catchall {:try_start_149 .. :try_end_18b} :catchall_1bb

    move-result-object v2

    .line 347
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_34

    .line 312
    .end local v17           #gDataSize:J
    .end local v23           #response:Lcom/google/android/picasasync/GDataUploader$GDataResponse;
    :cond_195
    :try_start_195
    invoke-static {v13}, Lcom/google/android/picasasync/GDataUploader;->isIncompeteStatusCode(I)Z

    move-result v2

    if-eqz v2, :cond_1e6

    .line 314
    const-string v2, "range"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v21

    .line 315
    .local v21, rangeHeader:Lorg/apache/http/Header;
    if-eqz v21, :cond_1c4

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/GDataUploader;->parseRangeHeaderEndByte(Ljava/lang/String;)J

    move-result-wide v10

    .line 318
    .local v10, actualOffset:J
    :goto_1ad
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gez v2, :cond_1c7

    .line 319
    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v3, "malformed or missing range header for subsequent upload"

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1bb
    .catchall {:try_start_195 .. :try_end_1bb} :catchall_1bb

    .line 347
    .end local v10           #actualOffset:J
    .end local v13           #code:I
    .end local v21           #rangeHeader:Lorg/apache/http/Header;
    :catchall_1bb
    move-exception v2

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v2

    .line 315
    .restart local v13       #code:I
    .restart local v21       #rangeHeader:Lorg/apache/http/Header;
    :cond_1c4
    const-wide/16 v10, -0x1

    goto :goto_1ad

    .line 323
    .restart local v10       #actualOffset:J
    :cond_1c7
    int-to-long v2, v6

    add-long/2addr v2, v4

    cmp-long v2, v10, v2

    if-gez v2, :cond_1d5

    .line 325
    :try_start_1cd
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    .line 326
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/InputStream;->skip(J)J

    .line 328
    :cond_1d5
    move-wide v4, v10

    .line 330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/picasasync/UploadTaskEntry;->setBytesUploaded(J)V
    :try_end_1dd
    .catchall {:try_start_1cd .. :try_end_1dd} :catchall_1bb

    .line 347
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/picasasync/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_4

    .line 331
    .end local v10           #actualOffset:J
    .end local v21           #rangeHeader:Lorg/apache/http/Header;
    :cond_1e6
    const/16 v2, 0x190

    if-ne v13, v2, :cond_207

    .line 334
    :try_start_1ea
    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload failed (bad payload, file too large) "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 337
    :cond_207
    const/16 v2, 0x1f4

    if-lt v13, v2, :cond_22c

    const/16 v2, 0x258

    if-ge v13, v2, :cond_22c

    .line 340
    new-instance v2, Lcom/google/android/picasasync/Uploader$RestartException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload transient error"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_22c
    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    invoke-interface/range {v25 .. v25}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_23a
    .catchall {:try_start_1ea .. :try_end_23a} :catchall_1bb

    .line 350
    .end local v4           #offset:J
    .end local v6           #length:I
    .end local v13           #code:I
    .end local v20           #lastChunk:Z
    .end local v22           #read:I
    .end local v24           #uploadRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v25           #uploadResponse:Lorg/apache/http/HttpResponse;
    :cond_23a
    new-instance v2, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v3, "upload is done but no server confirmation"

    invoke-direct {v2, v3}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/picasasync/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-static {v0}, Lcom/android/gallery3d/common/HttpClientFactory;->close(Lorg/apache/http/client/HttpClient;)V

    .line 143
    return-void
.end method

.method public upload(Lcom/google/android/picasasync/UploadTaskEntry;Lcom/google/android/picasasync/Uploader$UploadProgressListener;)Lcom/google/android/picasasync/UploadedEntry;
    .registers 12
    .parameter "task"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/picasasync/Uploader$UploadException;,
            Ljava/io/IOException;,
            Lcom/google/android/picasasync/Uploader$RestartException;,
            Lcom/google/android/picasasync/Uploader$MediaFileChangedException;,
            Lcom/google/android/picasasync/Uploader$UnauthorizedException;,
            Lcom/google/android/picasasync/Uploader$PicasaQuotaException;,
            Lcom/google/android/picasasync/Uploader$LocalIoException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_12

    .line 100
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Zero length file can\'t be uploaded"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 104
    :cond_12
    iput-object p1, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    .line 105
    iput-object p2, p0, Lcom/google/android/picasasync/GDataUploader;->mListener:Lcom/google/android/picasasync/Uploader$UploadProgressListener;

    .line 106
    new-instance v5, Lcom/google/android/picasasync/Authorizer;

    iget-object v6, p0, Lcom/google/android/picasasync/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getAuthTokenType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/picasasync/Authorizer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthorizer:Lcom/google/android/picasasync/Authorizer;

    .line 107
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthorizer:Lcom/google/android/picasasync/Authorizer;

    iget-object v6, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v6}, Lcom/google/android/picasasync/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/picasasync/Authorizer;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    .line 108
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/picasasync/UploadTaskEntry;->getRequestTemplate()Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, requestTemplate:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    if-nez v5, :cond_71

    .line 110
    const-string v5, "Authorization: GoogleLogin auth=%=_auth_token_=%\r\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    :goto_43
    const/4 v2, 0x0

    .line 119
    .local v2, is:Ljava/io/InputStream;
    :try_start_44
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/picasasync/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 121
    .local v1, in:Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_8d
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_44 .. :try_end_57} :catch_82
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_57} :catch_92
    .catch Lorg/xml/sax/SAXException; {:try_start_44 .. :try_end_57} :catch_99

    .line 122
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_57
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/picasasync/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 123
    iget-object v5, p0, Lcom/google/android/picasasync/GDataUploader;->mUploadTask:Lcom/google/android/picasasync/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/picasasync/UploadTaskEntry;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v3, v5, v4}, Lcom/google/android/picasasync/GDataUploader;->start(Ljava/io/InputStream;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_6c
    .catchall {:try_start_57 .. :try_end_6c} :catchall_a9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_57 .. :try_end_6c} :catch_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_6c} :catch_af
    .catch Lorg/xml/sax/SAXException; {:try_start_57 .. :try_end_6c} :catch_ac

    move-result-object v5

    .line 136
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_70
    return-object v5

    .line 113
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #is:Ljava/io/InputStream;
    :cond_71
    const-string v5, "%=_auth_token_=%"

    iget-object v6, p0, Lcom/google/android/picasasync/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_43

    .line 125
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_7a
    :try_start_7a
    invoke-direct {p0, v3}, Lcom/google/android/picasasync/GDataUploader;->resume(Ljava/io/InputStream;)Lcom/google/android/picasasync/UploadedEntry;
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_a9
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7a .. :try_end_7d} :catch_b2
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7d} :catch_af
    .catch Lorg/xml/sax/SAXException; {:try_start_7a .. :try_end_7d} :catch_ac

    move-result-object v5

    .line 136
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_70

    .line 127
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_82
    move-exception v0

    .line 128
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_83
    :try_start_83
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_8d

    .line 136
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catchall_8d
    move-exception v5

    :goto_8e
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .line 129
    :catch_92
    move-exception v0

    .line 130
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_93
    :try_start_93
    new-instance v5, Lcom/google/android/picasasync/Uploader$LocalIoException;

    invoke-direct {v5, v0}, Lcom/google/android/picasasync/Uploader$LocalIoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 131
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_99
    move-exception v0

    .line 133
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_9a
    const-string v5, "UploadsManager"

    const-string v6, "error in parsing response"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    new-instance v5, Lcom/google/android/picasasync/Uploader$UploadException;

    const-string v6, "error in parsing response"

    invoke-direct {v5, v6, v0}, Lcom/google/android/picasasync/Uploader$UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_a9
    .catchall {:try_start_93 .. :try_end_a9} :catchall_8d

    .line 136
    .end local v0           #e:Lorg/xml/sax/SAXException;
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_a9
    move-exception v5

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_8e

    .line 131
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_ac
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_9a

    .line 129
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_af
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_93

    .line 127
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_b2
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_83
.end method
