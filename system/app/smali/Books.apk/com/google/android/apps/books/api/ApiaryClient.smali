.class public Lcom/google/android/apps/books/api/ApiaryClient;
.super Ljava/lang/Object;
.source "ApiaryClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/api/ApiaryClient$1;,
        Lcom/google/android/apps/books/api/ApiaryClient$EmptyContent;,
        Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;
    }
.end annotation


# static fields
.field public static final NO_POST_DATA:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "ApiaryClient"

.field public static final USE_APIARY:Z = true


# instance fields
.field private final mDeveloperKey:Ljava/lang/String;

.field private final mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

.field private final mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/apps/books/api/ApiaryClient$EmptyContent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/api/ApiaryClient$EmptyContent;-><init>(Lcom/google/android/apps/books/api/ApiaryClient$1;)V

    sput-object v0, Lcom/google/android/apps/books/api/ApiaryClient;->NO_POST_DATA:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/books/net/HttpHelper;Lcom/google/android/apps/books/util/SessionKeyFactory;Ljava/lang/String;)V
    .registers 5
    .parameter "httpHelper"
    .parameter "keyFactory"
    .parameter "developerKey"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/net/HttpHelper;

    iput-object v0, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    .line 81
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/util/SessionKeyFactory;

    iput-object v0, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    .line 82
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mDeveloperKey:Ljava/lang/String;

    .line 83
    return-void
.end method

.method private createTransport()Lcom/google/api/client/http/HttpTransport;
    .registers 3

    .prologue
    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_c

    .line 267
    new-instance v0, Lcom/google/api/client/http/apache/ApacheHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/apache/ApacheHttpTransport;-><init>()V

    .line 269
    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/google/api/client/http/javanet/NetHttpTransport;

    invoke-direct {v0}, Lcom/google/api/client/http/javanet/NetHttpTransport;-><init>()V

    goto :goto_b
.end method

.method private static getLogString(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;
    .registers 8
    .parameter "request"

    .prologue
    .line 301
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v5, "URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/client/http/GenericUrl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nHeaders:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v1

    .line 304
    .local v1, headers:Lcom/google/api/client/http/HttpHeaders;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpHeaders;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_28
    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    .local v0, header:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 306
    .local v3, name:Ljava/lang/String;
    const-string v5, "Authorization"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_28

    .line 307
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 310
    .end local v0           #header:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #name:Ljava/lang/String;
    :cond_5a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private setHeaders(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V
    .registers 5
    .parameter "httpRequest"
    .parameter "authToken"

    .prologue
    .line 277
    new-instance v0, Lcom/google/api/client/googleapis/GoogleHeaders;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/GoogleHeaders;-><init>()V

    .line 279
    .local v0, headers:Lcom/google/api/client/googleapis/GoogleHeaders;
    const-string v1, "BooksAndroid"

    invoke-virtual {v0, v1}, Lcom/google/api/client/googleapis/GoogleHeaders;->setApplicationName(Ljava/lang/String;)V

    .line 280
    const-string v1, "2"

    iput-object v1, v0, Lcom/google/api/client/googleapis/GoogleHeaders;->gdataVersion:Ljava/lang/String;

    .line 283
    if-eqz p2, :cond_13

    .line 284
    invoke-virtual {v0, p2}, Lcom/google/api/client/googleapis/GoogleHeaders;->setGoogleLogin(Ljava/lang/String;)V

    .line 286
    :cond_13
    invoke-virtual {p1, v0}, Lcom/google/api/client/http/HttpRequest;->setHeaders(Lcom/google/api/client/http/HttpHeaders;)Lcom/google/api/client/http/HttpRequest;

    .line 287
    return-void
.end method

.method private statusIsOneOf(I[I)Z
    .registers 8
    .parameter "statusCode"
    .parameter "okCodes"

    .prologue
    .line 290
    move-object v0, p2

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_e

    aget v3, v0, v1

    .line 291
    .local v3, okCode:I
    if-ne v3, p1, :cond_b

    const/4 v4, 0x1

    .line 293
    .end local v3           #okCode:I
    :goto_a
    return v4

    .line 290
    .restart local v3       #okCode:I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 293
    .end local v3           #okCode:I
    :cond_e
    const/4 v4, 0x0

    goto :goto_a
.end method

.method public static verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/books/api/VerifiableResponse;)V
    .registers 11
    .parameter "expectedNonce"
    .parameter "expectedSource"
    .parameter "sessionKey"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v3, "expectedNonce is null"

    invoke-static {v3, p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v3, "expectedSource is null"

    invoke-static {v3, p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v3, "sessionKey is null"

    invoke-static {v3, p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v3, p3, Lcom/google/android/apps/books/api/VerifiableResponse;->nonce:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 330
    new-instance v3, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad nonce value from server. Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Actual: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/google/android/apps/books/api/VerifiableResponse;->nonce:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    :cond_3c
    iget-object v3, p3, Lcom/google/android/apps/books/api/VerifiableResponse;->source:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 335
    new-instance v3, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad source value from server. Expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Actual: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lcom/google/android/apps/books/api/VerifiableResponse;->source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/apps/books/net/HttpHelper$ServerIoException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 338
    :cond_69
    invoke-virtual {p3}, Lcom/google/android/apps/books/api/VerifiableResponse;->getConcatenatedData()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, data:Ljava/lang/String;
    invoke-static {p2, v0}, Lcom/google/android/apps/books/util/EncryptionUtils;->createSignature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, expectedSignature:Ljava/lang/String;
    iget-object v3, p3, Lcom/google/android/apps/books/api/VerifiableResponse;->signature:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9e

    .line 346
    const-string v3, "Bad signature returned from server. Expected %s Actual %s Key %s data %s "

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v5, 0x1

    iget-object v6, p3, Lcom/google/android/apps/books/api/VerifiableResponse;->signature:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, errorMsg:Ljava/lang/String;
    const-string v3, "ApiaryClient"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 351
    const-string v3, "ApiaryClient"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .end local v1           #errorMsg:Ljava/lang/String;
    :cond_9e
    return-void
.end method


# virtual methods
.method public varargs execute(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;
    .registers 14
    .parameter "request"
    .parameter
    .parameter "account"
    .parameter "okCodes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpRequest;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/accounts/Account;",
            "[I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, resultDataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v8, 0x3

    .line 175
    const-string v5, "ApiaryClient"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 176
    const-string v5, "ApiaryClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Executing apiary request "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with content "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getContent()Lcom/google/api/client/http/HttpContent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_33
    const/4 v0, 0x0

    .line 183
    .local v0, errCount:I
    :cond_34
    :try_start_34
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/api/ApiaryClient;->executeOnce(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;

    move-result-object v3

    .line 184
    .local v3, result:Ljava/lang/Object;,"TT;"
    if-eqz v3, :cond_5f

    const-string v5, "ApiaryClient"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 185
    const-string v5, "ApiaryClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received apiary response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_5f} :catch_60

    .line 187
    :cond_5f
    return-object v3

    .line 188
    .end local v3           #result:Ljava/lang/Object;,"TT;"
    :catch_60
    move-exception v2

    .line 190
    .local v2, ioe:Ljava/io/IOException;
    add-int/lit8 v0, v0, 0x1

    .line 191
    move-object v1, v2

    .line 192
    .local v1, ioException:Ljava/io/IOException;
    const-string v5, "ApiaryClient"

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 193
    const-string v5, "ApiaryClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_97
    iget-object v5, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->getUrl()Lcom/google/api/client/http/GenericUrl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/api/client/http/GenericUrl;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/google/android/apps/books/net/HttpHelper;->shouldSkipRetry(Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    .line 197
    .local v4, wrapException:Ljava/io/IOException;
    if-eqz v4, :cond_a8

    .line 198
    throw v4

    .line 201
    :cond_a8
    iget-object v5, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    invoke-virtual {v5}, Lcom/google/android/apps/books/net/HttpHelper;->sleep()V

    .line 203
    if-lt v0, v8, :cond_34

    .line 205
    throw v1
.end method

.method protected executeOnce(Lcom/google/api/client/http/HttpRequest;Ljava/lang/Class;Landroid/accounts/Account;[I)Ljava/lang/Object;
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpRequest;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/accounts/Account;",
            "[I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x3

    .line 211
    invoke-virtual {p0, p3}, Lcom/google/android/apps/books/api/ApiaryClient;->getAuthTokenFor(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/books/api/ApiaryClient;->setHeaders(Lcom/google/api/client/http/HttpRequest;Ljava/lang/String;)V

    .line 215
    :try_start_9
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v1

    .line 216
    const-class v3, Lcom/google/android/apps/books/api/ApiaryClient$NoReturnValue;

    if-eq p2, v3, :cond_15

    .line 217
    invoke-virtual {v1, p2}, Lcom/google/api/client/http/HttpResponse;->parseAs(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_14
    .catch Lcom/google/api/client/http/HttpResponseException; {:try_start_9 .. :try_end_14} :catch_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_14} :catch_c3

    move-result-object v0

    .line 231
    :cond_15
    :goto_15
    return-object v0

    .line 221
    :catch_16
    move-exception v1

    .line 222
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpResponseException;->getResponse()Lcom/google/api/client/http/HttpResponse;

    move-result-object v3

    .line 223
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v4

    .line 224
    invoke-direct {p0, v4, p4}, Lcom/google/android/apps/books/api/ApiaryClient;->statusIsOneOf(I[I)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 228
    const-string v1, "ApiaryClient"

    invoke-static {v1, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 229
    const-string v1, "ApiaryClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Treating response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as success."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 233
    :cond_4c
    const-string v0, "ApiaryClient"

    const/4 v5, 0x5

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 234
    const-string v0, "ApiaryClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error response from books API: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_71
    const-string v0, "%d: %s\n%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->getStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->getStatusMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x2

    invoke-static {p1}, Lcom/google/android/apps/books/api/ApiaryClient;->getLogString(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v4, v0, v1}, Lcom/google/android/apps/books/net/HttpHelper;->wrapExceptionBasedOnStatus(ILjava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_aa

    .line 241
    instance-of v1, v0, Lcom/google/android/apps/books/net/HttpHelper$TokenExpiredException;

    if-eqz v1, :cond_a9

    if-eqz v2, :cond_a9

    .line 243
    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    invoke-virtual {v1}, Lcom/google/android/apps/books/net/HttpHelper;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v3, "com.google"

    invoke-virtual {v1, v3, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_a9
    throw v0

    .line 248
    :cond_aa
    new-instance v0, Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error code from apiary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/android/apps/books/net/HttpHelper$UncategorizedIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 251
    :catch_c3
    move-exception v0

    .line 252
    invoke-static {p1}, Lcom/google/android/apps/books/api/ApiaryClient;->getLogString(Lcom/google/api/client/http/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/HttpHelper;->wrapException(Ljava/io/IOException;Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method protected getAuthTokenFor(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 3
    .parameter "account"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/net/HttpHelper;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpHelper()Lcom/google/android/apps/books/net/HttpHelper;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mHttpHelper:Lcom/google/android/apps/books/net/HttpHelper;

    return-object v0
.end method

.method public getSessionKeyVersionFor(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter "account"
    .parameter "volumeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v1, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mKeyFactory:Lcom/google/android/apps/books/util/SessionKeyFactory;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/books/util/SessionKeyFactory;->findValidSessionKey(Landroid/accounts/Account;Ljava/lang/String;)Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;

    move-result-object v0

    .line 110
    .local v0, data:Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;
    iget-object v1, v0, Lcom/google/android/apps/books/util/SessionKeyFactory$K_sData;->K_sVersion:Ljava/lang/String;

    return-object v1
.end method

.method public makeGetRequest(Lcom/google/api/client/googleapis/GoogleUrl;)Lcom/google/api/client/http/HttpRequest;
    .registers 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    sget-object v2, Lcom/google/android/apps/books/api/OceanApiaryUrls;->DEVELOPER_KEY:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mDeveloperKey:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-direct {p0}, Lcom/google/android/apps/books/api/ApiaryClient;->createTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    .line 125
    .local v1, transport:Lcom/google/api/client/http/HttpTransport;
    invoke-virtual {v1}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v0

    .line 126
    .local v0, request:Lcom/google/api/client/http/HttpRequest;
    new-instance v2, Lcom/google/api/client/http/json/JsonHttpParser;

    new-instance v3, Lcom/google/api/client/json/jackson/JacksonFactory;

    invoke-direct {v3}, Lcom/google/api/client/json/jackson/JacksonFactory;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-virtual {v0, v2}, Lcom/google/api/client/http/HttpRequest;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 127
    return-object v0
.end method

.method public makePostRequest(Lcom/google/api/client/googleapis/GoogleUrl;Ljava/lang/Object;)Lcom/google/api/client/http/HttpRequest;
    .registers 10
    .parameter "url"
    .parameter "requestData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    sget-object v4, Lcom/google/android/apps/books/api/OceanApiaryUrls;->DEVELOPER_KEY:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/books/api/ApiaryClient;->mDeveloperKey:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Lcom/google/api/client/googleapis/GoogleUrl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-direct {p0}, Lcom/google/android/apps/books/api/ApiaryClient;->createTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v3

    .line 143
    .local v3, transport:Lcom/google/api/client/http/HttpTransport;
    new-instance v1, Lcom/google/api/client/json/jackson/JacksonFactory;

    invoke-direct {v1}, Lcom/google/api/client/json/jackson/JacksonFactory;-><init>()V

    .line 145
    .local v1, jsonFactory:Lcom/google/api/client/json/JsonFactory;
    const-string v4, "ApiaryClient"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 146
    const-string v4, "ApiaryClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Making post request with data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_31
    invoke-virtual {v3}, Lcom/google/api/client/http/HttpTransport;->createRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v4

    sget-object v5, Lcom/google/api/client/http/HttpMethod;->POST:Lcom/google/api/client/http/HttpMethod;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p1, v6}, Lcom/google/api/client/http/HttpRequestFactory;->buildRequest(Lcom/google/api/client/http/HttpMethod;Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    .line 152
    .local v2, request:Lcom/google/api/client/http/HttpRequest;
    new-instance v0, Lcom/google/api/client/http/UrlEncodedContent;

    invoke-direct {v0, p2}, Lcom/google/api/client/http/UrlEncodedContent;-><init>(Ljava/lang/Object;)V

    .line 153
    .local v0, content:Lcom/google/api/client/http/UrlEncodedContent;
    invoke-virtual {v2, v0}, Lcom/google/api/client/http/HttpRequest;->setContent(Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    .line 155
    new-instance v4, Lcom/google/api/client/http/json/JsonHttpParser;

    invoke-direct {v4, v1}, Lcom/google/api/client/http/json/JsonHttpParser;-><init>(Lcom/google/api/client/json/JsonFactory;)V

    invoke-virtual {v2, v4}, Lcom/google/api/client/http/HttpRequest;->addParser(Lcom/google/api/client/http/HttpParser;)V

    .line 156
    return-object v2
.end method
