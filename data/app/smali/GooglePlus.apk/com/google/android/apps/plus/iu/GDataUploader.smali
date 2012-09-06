.class Lcom/google/android/apps/plus/iu/GDataUploader;
.super Ljava/lang/Object;
.source "GDataUploader.java"

# interfaces
.implements Lcom/google/android/apps/plus/iu/Uploader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/GDataUploader$1;,
        Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;
    }
.end annotation


# static fields
.field private static final RE_RANGE_HEADER:Ljava/util/regex/Pattern;

.field private static sUserAgent:Ljava/lang/String;


# instance fields
.field private mAuthToken:Ljava/lang/String;

.field private mAuthorizer:Lcom/google/android/apps/plus/iu/Authorizer;

.field private mContext:Landroid/content/Context;

.field private mHttpClient:Lorg/apache/http/client/HttpClient;

.field private mListener:Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;

.field private mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/iu/GDataUploader;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {p1}, Lcom/google/android/apps/plus/iu/GDataUploader;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/iu/HttpUtils;->createHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 87
    return-void
.end method

.method private executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 11
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 403
    .local v2, startTime:J
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 404
    .local v1, response:Lorg/apache/http/HttpResponse;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/iu/MetricsUtils;->incrementNetworkOpDuration(J)V

    .line 405
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 408
    .local v4, statusCode:I
    const/16 v5, 0x191

    if-eq v4, v5, :cond_23

    const/16 v5, 0x193

    if-ne v4, v5, :cond_b6

    .line 411
    :cond_23
    :try_start_23
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthorizer:Lcom/google/android/apps/plus/iu/Authorizer;

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/iu/Authorizer;->getFreshAuthToken(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthToken:Ljava/lang/String;

    .line 412
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthToken:Ljava/lang/String;

    if-nez v5, :cond_7b

    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;

    const-string v6, "null auth token"

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_3f
    .catch Landroid/accounts/OperationCanceledException; {:try_start_23 .. :try_end_3f} :catch_3f
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_3f} :catch_55
    .catch Landroid/accounts/AuthenticatorException; {:try_start_23 .. :try_end_3f} :catch_66

    .line 413
    :catch_3f
    move-exception v0

    .line 415
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 416
    const-string v5, "iu.UploadsManager"

    const-string v6, "authentication canceled"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    :cond_4f
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 419
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_55
    move-exception v0

    .line 422
    .local v0, e:Ljava/io/IOException;
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 423
    const-string v5, "iu.UploadsManager"

    const-string v6, "authentication failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    :cond_65
    throw v0

    .line 426
    .end local v0           #e:Ljava/io/IOException;
    :catch_66
    move-exception v0

    .line 427
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v5, "iu.UploadsManager"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 428
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    :cond_75
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 433
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    :cond_7b
    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GoogleLogin auth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 435
    const-string v5, "iu.UploadsManager"

    const-string v6, "executeWithAuthRetry: attempt #2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_a4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 438
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v5, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/iu/MetricsUtils;->incrementNetworkOpDuration(J)V

    .line 441
    :cond_b6
    return-object v1
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
    .line 557
    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 558
    .local v0, entity:Lorg/apache/http/entity/BufferedHttpEntity;
    invoke-virtual {v0}, Lorg/apache/http/entity/BufferedHttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_17

    .line 559
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    .line 560
    const/4 v0, 0x0

    .line 562
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
    .line 460
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 462
    .local v7, request:Lorg/apache/http/client/methods/HttpPost;
    const/4 v3, 0x0

    .line 463
    .local v3, headersString:Ljava/lang/String;
    const/4 v6, 0x0

    .line 464
    .local v6, metadataString:Ljava/lang/String;
    const-string v9, "\r\n\r\n"

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 468
    .local v0, emptyLine:I
    if-lez v0, :cond_3e

    .line 469
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 470
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 476
    :goto_1c
    invoke-static {v3}, Lcom/google/android/apps/plus/iu/GDataUploader;->parseHeaders(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 477
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

    .line 478
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 479
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v7, v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 472
    .end local v2           #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3e
    move-object v3, p1

    goto :goto_1c

    .line 483
    .restart local v2       #headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_40
    if-eqz v6, :cond_50

    .line 484
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 485
    .local v1, entity:Lorg/apache/http/entity/StringEntity;
    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v7, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 489
    .end local v1           #entity:Lorg/apache/http/entity/StringEntity;
    :cond_50
    return-object v7
.end method

.method private static getResumeRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4
    .parameter "uploadUrl"

    .prologue
    .line 496
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 497
    .local v0, request:Lorg/apache/http/client/methods/HttpPut;
    const-string v1, "Content-Range"

    const-string v2, "bytes */*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
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
    .line 510
    new-instance v6, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v6, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 511
    .local v6, request:Lorg/apache/http/client/methods/HttpPut;
    int-to-long v7, p4

    add-long/2addr v7, p2

    const-wide/16 v9, 0x1

    sub-long v4, v7, v9

    .line 512
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

    .line 514
    const-string v7, "Content-Type"

    invoke-virtual {v6, v7, p1}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v7, 0x0

    move-object/from16 v0, p7

    invoke-direct {v2, v0, v7, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 517
    .local v2, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v7, p4

    invoke-direct {v3, v2, v7, v8}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 518
    .local v3, entity:Lorg/apache/http/entity/InputStreamEntity;
    const/4 v7, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v7}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v6, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 520
    return-object v6
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 707
    sget-object v2, Lcom/google/android/apps/plus/iu/GDataUploader;->sUserAgent:Ljava/lang/String;

    if-nez v2, :cond_53

    .line 710
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_12} :catch_56

    move-result-object v1

    .line 715
    .local v1, pi:Landroid/content/pm/PackageInfo;
    const-string v2, "%s/%s; %s/%s/%s/%s; %s/%s/%s/%d"

    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x8

    sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v5, v3, v4

    const/16 v4, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/iu/GDataUploader;->sUserAgent:Ljava/lang/String;

    .line 727
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_53
    sget-object v2, Lcom/google/android/apps/plus/iu/GDataUploader;->sUserAgent:Ljava/lang/String;

    return-object v2

    .line 712
    :catch_56
    move-exception v0

    .line 713
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "getPackageInfo failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isIncompeteStatusCode(I)Z
    .registers 2
    .parameter "code"

    .prologue
    .line 528
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
    .line 524
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

.method private newUploadedEntry(Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 12
    .parameter "response"

    .prologue
    .line 387
    new-instance v0, Lcom/google/android/apps/plus/iu/UploadedEntry;

    iget-object v1, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    iget-wide v2, p1, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;->photoId:J

    iget-wide v4, p1, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;->photoSize:J

    iget-wide v6, p1, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;->timestamp:J

    iget-object v8, p1, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;->photoUrl:Ljava/lang/String;

    iget-object v9, p1, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;->fingerprint:Lcom/android/gallery3d/common/Fingerprint;

    invoke-virtual {v9}, Lcom/android/gallery3d/common/Fingerprint;->getBytes()[B

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/apps/plus/iu/UploadedEntry;-><init>(Lcom/google/android/apps/plus/iu/UploadTaskEntry;JJJLjava/lang/String;[B)V

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
    .line 581
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 582
    .local v1, headers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "\r\n"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 583
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

    .line 584
    .local v4, line:Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, pair:[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_25

    .line 586
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 589
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #pair:[Ljava/lang/String;
    :cond_28
    return-object v1
.end method

.method private static parseRangeHeaderEndByte(Ljava/lang/String;)J
    .registers 6
    .parameter "header"

    .prologue
    .line 549
    if-eqz p0, :cond_1b

    .line 550
    sget-object v1, Lcom/google/android/apps/plus/iu/GDataUploader;->RE_RANGE_HEADER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 551
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

    .line 553
    .end local v0           #m:Ljava/util/regex/Matcher;
    :goto_1a
    return-wide v1

    :cond_1b
    const-wide/16 v1, -0x1

    goto :goto_1a
.end method

.method private parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;
    .registers 6
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/plus/iu/Uploader$UploadException;
        }
    .end annotation

    .prologue
    .line 446
    if-nez p1, :cond_a

    new-instance v2, Lcom/google/android/apps/plus/iu/Uploader$UploadException;

    const-string v3, "null HttpEntity in response"

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_a
    new-instance v0, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;-><init>(Lcom/google/android/apps/plus/iu/GDataUploader$1;)V

    .line 448
    .local v0, contentHandler:Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 450
    .local v1, is:Ljava/io/InputStream;
    :try_start_14
    sget-object v2, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v1, v2, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_20

    .line 452
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 454
    invoke-virtual {v0}, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;->validateResult()V

    .line 455
    return-object v0

    .line 452
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
    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, count:I
    :goto_1
    if-ge v0, p3, :cond_e

    .line 538
    add-int v2, p2, v0

    sub-int v3, p3, v0

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 539
    .local v1, n:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_f

    .line 542
    .end local v1           #n:I
    :cond_e
    return v0

    .line 540
    .restart local v1       #n:I
    :cond_f
    add-int/2addr v0, v1

    .line 541
    goto :goto_1
.end method

.method private resetUpload()V
    .registers 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesUploaded(J)V

    .line 398
    return-void
.end method

.method private resume(Ljava/io/InputStream;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 13
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/apps/plus/iu/Uploader$UploadException;,
            Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;,
            Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException;,
            Lcom/google/android/apps/plus/iu/Uploader$RestartException;,
            Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v8, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v8}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/plus/iu/GDataUploader;->getResumeRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v6

    .line 215
    .local v6, resumeRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/iu/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 216
    .local v7, resumeResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 217
    .local v0, code:I
    invoke-static {v7}, Lcom/google/android/apps/plus/iu/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 218
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_2c

    .line 219
    const-string v8, "iu.UploadsManager"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 220
    const-string v8, "iu.UploadsManager"

    const-string v9, "  Entity: content length was 0."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_2c
    :try_start_2c
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/GDataUploader;->isIncompeteStatusCode(I)Z

    move-result v8

    if-eqz v8, :cond_84

    const-string v8, "range"

    invoke-interface {v7, v8}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    .line 228
    const-string v8, "range"

    invoke-interface {v7, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 229
    .local v4, rangeHeader:Lorg/apache/http/Header;
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/apps/plus/iu/GDataUploader;->parseRangeHeaderEndByte(Ljava/lang/String;)J

    move-result-wide v2

    .line 230
    .local v2, offset:J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gez v8, :cond_6f

    .line 231
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/GDataUploader;->resetUpload()V

    .line 232
    new-instance v8, Lcom/google/android/apps/plus/iu/Uploader$RestartException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "negative range offset: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/apps/plus/iu/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6a
    .catchall {:try_start_2c .. :try_end_6a} :catchall_6a

    .line 255
    .end local v2           #offset:J
    .end local v4           #rangeHeader:Lorg/apache/http/Header;
    :catchall_6a
    move-exception v8

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v8

    .line 234
    .restart local v2       #offset:J
    .restart local v4       #rangeHeader:Lorg/apache/http/Header;
    :cond_6f
    :try_start_6f
    invoke-virtual {p1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    .line 235
    const/high16 v8, 0x4

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 236
    iget-object v8, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v8, v2, v3}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesUploaded(J)V

    .line 237
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/GDataUploader;->uploadChunks(Ljava/io/InputStream;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    :try_end_7f
    .catchall {:try_start_6f .. :try_end_7f} :catchall_6a

    move-result-object v8

    .line 255
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    .end local v2           #offset:J
    .end local v4           #rangeHeader:Lorg/apache/http/Header;
    :goto_83
    return-object v8

    .line 238
    :cond_84
    :try_start_84
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v8

    if-eqz v8, :cond_b4

    .line 239
    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;

    move-result-object v5

    .line 240
    .local v5, response:Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->throwIfQuotaError(Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;)V

    .line 241
    const-string v8, "iu.UploadsManager"

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 242
    const-string v8, "iu.UploadsManager"

    const-string v9, "nothing to resume, upload already completed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_a1
    iget-object v8, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    iget-object v9, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesUploaded(J)V

    .line 245
    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->newUploadedEntry(Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    :try_end_af
    .catchall {:try_start_84 .. :try_end_af} :catchall_6a

    move-result-object v8

    .line 255
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto :goto_83

    .line 246
    .end local v5           #response:Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;
    :cond_b4
    const/16 v8, 0x191

    if-ne v0, v8, :cond_c6

    .line 248
    :try_start_b8
    new-instance v8, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;

    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 250
    :cond_c6
    invoke-direct {p0}, Lcom/google/android/apps/plus/iu/GDataUploader;->resetUpload()V

    .line 251
    new-instance v8, Lcom/google/android/apps/plus/iu/Uploader$RestartException;

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

    invoke-direct {v8, v9}, Lcom/google/android/apps/plus/iu/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_e6
    .catchall {:try_start_b8 .. :try_end_e6} :catchall_6a
.end method

.method private static safeConsumeContent(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .parameter "entity"

    .prologue
    .line 572
    if-eqz p0, :cond_5

    .line 574
    :try_start_2
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 578
    :cond_5
    :goto_5
    return-void

    .line 575
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private start(Ljava/io/InputStream;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 12
    .parameter "is"
    .parameter "uri"
    .parameter "requestTemplate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/apps/plus/iu/Uploader$UploadException;,
            Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException;,
            Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;,
            Lcom/google/android/apps/plus/iu/Uploader$RestartException;,
            Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {p2, p3}, Lcom/google/android/apps/plus/iu/GDataUploader;->getInitialRequest(Landroid/net/Uri;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 173
    .local v2, initialRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/iu/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 174
    .local v3, initialResponse:Lorg/apache/http/HttpResponse;
    invoke-static {v3}, Lcom/google/android/apps/plus/iu/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 176
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 179
    .local v0, code:I
    :try_start_14
    invoke-static {v0}, Lcom/google/android/apps/plus/iu/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 180
    if-eqz v1, :cond_23

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/apps/plus/iu/GDataUploader;->throwIfQuotaError(Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;)V

    .line 181
    :cond_23
    const-string v5, "Location"

    invoke-interface {v3, v5}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 182
    .local v4, locationHeader:Lorg/apache/http/Header;
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesUploaded(J)V

    .line 184
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/iu/GDataUploader;->uploadChunks(Ljava/io/InputStream;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    :try_end_3c
    .catchall {:try_start_14 .. :try_end_3c} :catchall_62

    move-result-object v5

    .line 206
    invoke-static {v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    return-object v5

    .line 185
    .end local v4           #locationHeader:Lorg/apache/http/Header;
    :cond_41
    const/16 v5, 0x190

    if-ne v0, v5, :cond_67

    .line 188
    :try_start_45
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UploadException;

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

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/iu/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_62
    .catchall {:try_start_45 .. :try_end_62} :catchall_62

    .line 206
    :catchall_62
    move-exception v5

    invoke-static {v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v5

    .line 191
    :cond_67
    const/16 v5, 0x191

    if-ne v0, v5, :cond_79

    .line 193
    :try_start_6b
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    :cond_79
    const/16 v5, 0x1f4

    if-lt v0, v5, :cond_9e

    const/16 v5, 0x258

    if-ge v0, v5, :cond_9e

    .line 197
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$RestartException;

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

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/iu/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 202
    :cond_9e
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UploadException;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/iu/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_ac
    .catchall {:try_start_6b .. :try_end_ac} :catchall_62
.end method

.method private throwIfQuotaError(Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;)V
    .registers 4
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;
        }
    .end annotation

    .prologue
    .line 566
    if-eqz p1, :cond_14

    const-string v0, "LimitQuota"

    iget-object v1, p1, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 567
    new-instance v0, Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;

    iget-object v1, p1, Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;->errorCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_14
    return-void
.end method

.method private uploadChunks(Ljava/io/InputStream;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 27
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;,
            Lorg/xml/sax/SAXException;,
            Lcom/google/android/apps/plus/iu/Uploader$UploadException;,
            Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException;,
            Lcom/google/android/apps/plus/iu/Uploader$RestartException;,
            Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;,
            Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;
        }
    .end annotation

    .prologue
    .line 263
    const/high16 v2, 0x4

    new-array v9, v2, [B

    .line 265
    .local v9, buffer:[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesUploaded()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    cmp-long v2, v2, v7

    if-gez v2, :cond_270

    .line 266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mListener:Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;

    if-eqz v2, :cond_29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mListener:Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-interface {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;->onProgress(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V

    .line 267
    :cond_29
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->isUploading()Z

    move-result v2

    if-nez v2, :cond_35

    const/4 v2, 0x0

    .line 380
    :goto_34
    return-object v2

    .line 270
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesUploaded()J

    move-result-wide v4

    .line 271
    .local v4, offset:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v2

    sub-long/2addr v2, v4

    long-to-int v6, v2

    .line 272
    .local v6, length:I
    const/high16 v2, 0x4

    if-gt v6, v2, :cond_fe

    const/16 v18, 0x1

    .line 273
    .local v18, lastChunk:Z
    :goto_4d
    if-nez v18, :cond_51

    const/high16 v6, 0x4

    .line 276
    :cond_51
    const/high16 v2, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/io/InputStream;->mark(I)V

    .line 281
    const/4 v2, 0x0

    :try_start_59
    move-object/from16 v0, p1

    invoke-static {v0, v9, v2, v6}, Lcom/google/android/apps/plus/iu/GDataUploader;->readFullyOrToEof(Ljava/io/InputStream;[BII)I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_102

    move-result v20

    .line 286
    .local v20, read:I
    if-nez v18, :cond_65

    move/from16 v0, v20

    if-eq v0, v6, :cond_12e

    .line 288
    :cond_65
    const/4 v2, 0x1

    new-array v12, v2, [J

    .line 289
    .local v12, byteCount:[J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/gallery3d/common/Fingerprint;->fromInputStream(Ljava/io/InputStream;[J)Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v16

    .line 292
    .local v16, fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getFingerprint()Lcom/android/gallery3d/common/Fingerprint;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/common/Fingerprint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12e

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 297
    .local v14, contentUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setFingerprint(Lcom/android/gallery3d/common/Fingerprint;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v24

    .line 299
    .local v24, uploadUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setUploadUrl(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    const-wide/16 v7, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesUploaded(J)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    const/4 v3, 0x0

    aget-wide v7, v12, v3

    invoke-virtual {v2, v7, v8}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesTotal(J)V

    .line 304
    :try_start_c8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mListener:Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;

    if-eqz v2, :cond_d9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mListener:Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-interface {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;->onFileChanged(Lcom/google/android/apps/plus/iu/UploadTaskEntry;)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_d9} :catch_109

    .line 311
    :cond_d9
    :goto_d9
    new-instance v2, Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException;

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

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v12           #byteCount:[J
    .end local v14           #contentUri:Ljava/lang/String;
    .end local v16           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v18           #lastChunk:Z
    .end local v20           #read:I
    .end local v24           #uploadUrl:Ljava/lang/String;
    :cond_fe
    const/16 v18, 0x0

    goto/16 :goto_4d

    .line 282
    .restart local v18       #lastChunk:Z
    :catch_102
    move-exception v15

    .line 283
    .local v15, e:Ljava/io/IOException;
    new-instance v2, Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;

    invoke-direct {v2, v15}, Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 305
    .end local v15           #e:Ljava/io/IOException;
    .restart local v12       #byteCount:[J
    .restart local v14       #contentUri:Ljava/lang/String;
    .restart local v16       #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .restart local v20       #read:I
    .restart local v24       #uploadUrl:Ljava/lang/String;
    :catch_109
    move-exception v17

    .line 306
    .local v17, ignored:Ljava/lang/Throwable;
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 307
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error calling back on file change:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d9

    .line 317
    .end local v12           #byteCount:[J
    .end local v14           #contentUri:Ljava/lang/String;
    .end local v16           #fingerprint:Lcom/android/gallery3d/common/Fingerprint;
    .end local v17           #ignored:Ljava/lang/Throwable;
    .end local v24           #uploadUrl:Ljava/lang/String;
    :cond_12e
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_153

    .line 318
    const-string v2, "iu.UploadsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- UPLOAD task: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getMimeType()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    invoke-static/range {v2 .. v9}, Lcom/google/android/apps/plus/iu/GDataUploader;->getUploadRequest(Ljava/lang/String;Ljava/lang/String;JIJ[B)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v22

    .line 329
    .local v22, uploadRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->executeWithAuthRetry(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v23

    .line 333
    .local v23, uploadResponse:Lorg/apache/http/HttpResponse;
    :try_start_177
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 334
    .local v13, code:I
    invoke-static {v13}, Lcom/google/android/apps/plus/iu/GDataUploader;->isSuccessStatusCode(I)Z

    move-result v2

    if-eqz v2, :cond_1cb

    .line 335
    invoke-static/range {v23 .. v23}, Lcom/google/android/apps/plus/iu/GDataUploader;->getEntity(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/iu/GDataUploader;->parseResult(Lorg/apache/http/HttpEntity;)Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;

    move-result-object v21

    .line 336
    .local v21, response:Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->throwIfQuotaError(Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;)V

    .line 339
    const-string v2, "iu.UploadsManager"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a6

    .line 340
    const-string v2, "iu.UploadsManager"

    const-string v3, "UPLOAD_SUCCESS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesUploaded(J)V

    .line 343
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/iu/MetricsUtils;->incrementNetworkOpCount(J)V

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/iu/GDataUploader;->newUploadedEntry(Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    :try_end_1c1
    .catchall {:try_start_177 .. :try_end_1c1} :catchall_1f1

    move-result-object v2

    .line 380
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_34

    .line 345
    .end local v21           #response:Lcom/google/android/apps/plus/iu/GDataUploader$GDataResponse;
    :cond_1cb
    :try_start_1cb
    invoke-static {v13}, Lcom/google/android/apps/plus/iu/GDataUploader;->isIncompeteStatusCode(I)Z

    move-result v2

    if-eqz v2, :cond_21c

    .line 347
    const-string v2, "range"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v19

    .line 348
    .local v19, rangeHeader:Lorg/apache/http/Header;
    if-eqz v19, :cond_1fa

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/iu/GDataUploader;->parseRangeHeaderEndByte(Ljava/lang/String;)J

    move-result-wide v10

    .line 351
    .local v10, actualOffset:J
    :goto_1e3
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gez v2, :cond_1fd

    .line 352
    new-instance v2, Lcom/google/android/apps/plus/iu/Uploader$UploadException;

    const-string v3, "malformed or missing range header for subsequent upload"

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1f1
    .catchall {:try_start_1cb .. :try_end_1f1} :catchall_1f1

    .line 380
    .end local v10           #actualOffset:J
    .end local v13           #code:I
    .end local v19           #rangeHeader:Lorg/apache/http/Header;
    :catchall_1f1
    move-exception v2

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    throw v2

    .line 348
    .restart local v13       #code:I
    .restart local v19       #rangeHeader:Lorg/apache/http/Header;
    :cond_1fa
    const-wide/16 v10, -0x1

    goto :goto_1e3

    .line 356
    .restart local v10       #actualOffset:J
    :cond_1fd
    int-to-long v2, v6

    add-long/2addr v2, v4

    cmp-long v2, v10, v2

    if-gez v2, :cond_20b

    .line 358
    :try_start_203
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->reset()V

    .line 359
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/io/InputStream;->skip(J)J

    .line 361
    :cond_20b
    move-wide v4, v10

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v2, v4, v5}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->setBytesUploaded(J)V
    :try_end_213
    .catchall {:try_start_203 .. :try_end_213} :catchall_1f1

    .line 380
    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/plus/iu/GDataUploader;->safeConsumeContent(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_4

    .line 364
    .end local v10           #actualOffset:J
    .end local v19           #rangeHeader:Lorg/apache/http/Header;
    :cond_21c
    const/16 v2, 0x190

    if-ne v13, v2, :cond_23d

    .line 367
    :try_start_220
    new-instance v2, Lcom/google/android/apps/plus/iu/Uploader$UploadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload failed (bad payload, file too large) "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 370
    :cond_23d
    const/16 v2, 0x1f4

    if-lt v13, v2, :cond_262

    const/16 v2, 0x258

    if-ge v13, v2, :cond_262

    .line 373
    new-instance v2, Lcom/google/android/apps/plus/iu/Uploader$RestartException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upload transient error"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$RestartException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 376
    :cond_262
    new-instance v2, Lcom/google/android/apps/plus/iu/Uploader$UploadException;

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_270
    .catchall {:try_start_220 .. :try_end_270} :catchall_1f1

    .line 383
    .end local v4           #offset:J
    .end local v6           #length:I
    .end local v13           #code:I
    .end local v18           #lastChunk:Z
    .end local v20           #read:I
    .end local v22           #uploadRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v23           #uploadResponse:Lorg/apache/http/HttpResponse;
    :cond_270
    new-instance v2, Lcom/google/android/apps/plus/iu/Uploader$UploadException;

    const-string v3, "upload is done but no server confirmation"

    invoke-direct {v2, v3}, Lcom/google/android/apps/plus/iu/Uploader$UploadException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mHttpClient:Lorg/apache/http/client/HttpClient;

    .line 164
    return-void
.end method

.method public upload(Lcom/google/android/apps/plus/iu/UploadTaskEntry;Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    .registers 13
    .parameter "task"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/apps/plus/iu/Uploader$UploadException;,
            Lcom/google/android/apps/plus/iu/Uploader$RestartException;,
            Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;,
            Lcom/google/android/apps/plus/iu/Uploader$MediaFileChangedException;,
            Lcom/google/android/apps/plus/iu/Uploader$MediaFileUnavailableException;,
            Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;,
            Lcom/google/android/apps/plus/iu/Uploader$PicasaQuotaException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 95
    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getBytesTotal()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gtz v5, :cond_18

    .line 96
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$MediaFileUnavailableException;

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Zero length file can\'t be uploaded"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/google/android/apps/plus/iu/Uploader$MediaFileUnavailableException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 100
    :cond_18
    iput-object p1, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    .line 101
    iput-object p2, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mListener:Lcom/google/android/apps/plus/iu/Uploader$UploadProgressListener;

    .line 102
    new-instance v5, Lcom/google/android/apps/plus/iu/Authorizer;

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAuthTokenType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/android/apps/plus/iu/Authorizer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthorizer:Lcom/google/android/apps/plus/iu/Authorizer;

    .line 106
    :try_start_29
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthorizer:Lcom/google/android/apps/plus/iu/Authorizer;

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v6}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getAccount()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/apps/plus/iu/Authorizer;->getAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthToken:Ljava/lang/String;
    :try_end_37
    .catch Landroid/accounts/OperationCanceledException; {:try_start_29 .. :try_end_37} :catch_77
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_37} :catch_8d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_29 .. :try_end_37} :catch_9e

    .line 127
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getRequestTemplate()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, requestTemplate:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthToken:Ljava/lang/String;

    if-nez v5, :cond_b3

    .line 129
    const-string v5, "Authorization: GoogleLogin auth=%=_auth_token_=%\r\n"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    :goto_49
    const/4 v2, 0x0

    .line 138
    .local v2, is:Ljava/io/InputStream;
    :try_start_4a
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 140
    .local v1, in:Ljava/io/InputStream;
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5d
    .catchall {:try_start_4a .. :try_end_5d} :catchall_cf
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4a .. :try_end_5d} :catch_c4
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_5d} :catch_d4
    .catch Lorg/xml/sax/SAXException; {:try_start_4a .. :try_end_5d} :catch_db

    .line 141
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_5d
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUploadUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 142
    iget-object v5, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mUploadTask:Lcom/google/android/apps/plus/iu/UploadTaskEntry;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/iu/UploadTaskEntry;->getUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0, v3, v5, v4}, Lcom/google/android/apps/plus/iu/GDataUploader;->start(Ljava/io/InputStream;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    :try_end_72
    .catchall {:try_start_5d .. :try_end_72} :catchall_f4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5d .. :try_end_72} :catch_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_72} :catch_fa
    .catch Lorg/xml/sax/SAXException; {:try_start_5d .. :try_end_72} :catch_f7

    move-result-object v5

    .line 157
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :goto_76
    return-object v5

    .line 107
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #requestTemplate:Ljava/lang/String;
    :catch_77
    move-exception v0

    .line 109
    .local v0, e:Landroid/accounts/OperationCanceledException;
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 110
    const-string v5, "iu.UploadsManager"

    const-string v6, "authentication canceled"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_87
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 113
    .end local v0           #e:Landroid/accounts/OperationCanceledException;
    :catch_8d
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/IOException;
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v9}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9d

    .line 117
    const-string v5, "iu.UploadsManager"

    const-string v6, "authentication failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :cond_9d
    throw v0

    .line 120
    .end local v0           #e:Ljava/io/IOException;
    :catch_9e
    move-exception v0

    .line 121
    .local v0, e:Landroid/accounts/AuthenticatorException;
    const-string v5, "iu.UploadsManager"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 122
    const-string v5, "iu.UploadsManager"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 124
    :cond_ad
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/iu/Uploader$UnauthorizedException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 132
    .end local v0           #e:Landroid/accounts/AuthenticatorException;
    .restart local v4       #requestTemplate:Ljava/lang/String;
    :cond_b3
    const-string v5, "%=_auth_token_=%"

    iget-object v6, p0, Lcom/google/android/apps/plus/iu/GDataUploader;->mAuthToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_49

    .line 144
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :cond_bc
    :try_start_bc
    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/iu/GDataUploader;->resume(Ljava/io/InputStream;)Lcom/google/android/apps/plus/iu/UploadedEntry;
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_f4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_bc .. :try_end_bf} :catch_fd
    .catch Ljava/io/FileNotFoundException; {:try_start_bc .. :try_end_bf} :catch_fa
    .catch Lorg/xml/sax/SAXException; {:try_start_bc .. :try_end_bf} :catch_f7

    move-result-object v5

    .line 157
    invoke-static {v3}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_76

    .line 146
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :catch_c4
    move-exception v0

    .line 147
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_c5
    :try_start_c5
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_cf
    .catchall {:try_start_c5 .. :try_end_cf} :catchall_cf

    .line 157
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catchall_cf
    move-exception v5

    :goto_d0
    invoke-static {v2}, Lcom/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .line 148
    :catch_d4
    move-exception v0

    .line 149
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_d5
    :try_start_d5
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;

    invoke-direct {v5, v0}, Lcom/google/android/apps/plus/iu/Uploader$LocalIoException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 150
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_db
    move-exception v0

    .line 152
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_dc
    const-string v5, "iu.UploadsManager"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 153
    const-string v5, "iu.UploadsManager"

    const-string v6, "error in parsing response"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    :cond_ec
    new-instance v5, Lcom/google/android/apps/plus/iu/Uploader$UploadException;

    const-string v6, "error in parsing response"

    invoke-direct {v5, v6, v0}, Lcom/google/android/apps/plus/iu/Uploader$UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_f4
    .catchall {:try_start_d5 .. :try_end_f4} :catchall_cf

    .line 157
    .end local v0           #e:Lorg/xml/sax/SAXException;
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_f4
    move-exception v5

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_d0

    .line 150
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_f7
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_dc

    .line 148
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_fa
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_d5

    .line 146
    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_fd
    move-exception v0

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_c5
.end method
