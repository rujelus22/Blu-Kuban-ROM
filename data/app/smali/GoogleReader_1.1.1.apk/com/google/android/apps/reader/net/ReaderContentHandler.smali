.class public Lcom/google/android/apps/reader/net/ReaderContentHandler;
.super Lcom/google/android/apps/reader/net/HttpContentHandler;
.source "ReaderContentHandler.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ReaderContentHandler"

.field private static final TIMEOUT:I = 0x7530

.field private static sSolutions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Throwable;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Lcom/google/android/accounts/Account;

.field private final mAccountManager:Lcom/google/android/accounts/AccountManager;

.field private final mAuthTokenType:Ljava/lang/String;

.field private final mConfig:Lcom/google/android/apps/reader/util/Config;

.field private final mHandler:Ljava/net/ContentHandler;

.field private final mNotifyAuthFailure:Z

.field private mOutputStream:Ljava/io/Closeable;

.field private final mPackageName:Ljava/lang/String;

.field private mPostData:Lorg/apache/http/HttpEntity;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->sSolutions:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/net/ContentHandler;Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/google/android/apps/reader/net/HttpContentHandler;-><init>()V

    .line 198
    if-nez p2, :cond_d

    .line 202
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_d
    if-nez p3, :cond_17

    .line 205
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_17
    iput-object p1, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mHandler:Ljava/net/ContentHandler;

    .line 208
    invoke-static {p2}, Lcom/google/android/apps/reader/util/Config;->get(Landroid/content/Context;)Lcom/google/android/apps/reader/util/Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mConfig:Lcom/google/android/apps/reader/util/Config;

    .line 209
    invoke-static {p2}, Lcom/google/android/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/google/android/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mAccountManager:Lcom/google/android/accounts/AccountManager;

    .line 210
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mPackageName:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    .line 212
    iput-object p4, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mAuthTokenType:Ljava/lang/String;

    .line 213
    iput-boolean p5, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mNotifyAuthFailure:Z

    .line 214
    invoke-static {p2}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mUserAgent:Ljava/lang/String;

    .line 215
    return-void
.end method

.method private blockingGetAuthTokenBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/4 v4, 0x0

    .line 220
    const/4 v5, 0x0

    .line 221
    :try_start_2
    iget-object v0, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mAccountManager:Lcom/google/android/accounts/AccountManager;

    iget-object v1, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mAccount:Lcom/google/android/accounts/Account;

    iget-boolean v3, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mNotifyAuthFailure:Z

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/accounts/AccountManager;->getAuthToken(Lcom/google/android/accounts/Account;Ljava/lang/String;ZLcom/google/android/accounts/AccountManagerCallback;Landroid/os/Handler;)Lcom/google/android/accounts/AccountManagerFuture;

    move-result-object v0

    .line 223
    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/accounts/AccountManagerFuture;->getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_17
    .catch Lcom/google/android/accounts/OperationCanceledException; {:try_start_2 .. :try_end_17} :catch_18
    .catch Lcom/google/android/accounts/AuthenticatorException; {:try_start_2 .. :try_end_17} :catch_22

    return-object p0

    .line 224
    :catch_18
    move-exception v0

    .line 225
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 226
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 227
    throw v1

    .line 228
    :catch_22
    move-exception v0

    .line 229
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    .line 230
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 231
    throw v1
.end method

.method private static clearNewTaskFlag(Landroid/content/Intent;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 105
    const v1, -0x10000001

    and-int/2addr v0, v1

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 111
    .local v0, buffer:[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, n:I
    :goto_8
    const/4 v2, -0x1

    if-eq v1, v2, :cond_14

    .line 112
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_8

    .line 114
    :cond_14
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 115
    return-void
.end method

.method private getHttpResponseCode(Ljava/net/URLConnection;)I
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x7530

    .line 309
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 310
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 311
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    .line 312
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 315
    const-string v3, "https"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Protocol is not secure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_36
    iget-object v3, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mAuthTokenType:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->blockingGetAuthToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GoogleLogin auth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v4, "Accept-Encoding"

    const-string v5, "gzip, deflate"

    invoke-virtual {p1, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v4, "User-Agent"

    iget-object v5, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v4, v5}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v4, "Cache-Control"

    const-string v5, "no-cache, no-transform"

    invoke-virtual {p1, v4, v5}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 327
    invoke-virtual {p1, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 329
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 331
    iget-object v4, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mPostData:Lorg/apache/http/HttpEntity;

    if-eqz v4, :cond_7a

    .line 332
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->post(Ljava/net/URLConnection;)V

    .line 336
    :cond_7a
    :try_start_7a
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_82

    move-result v4

    .line 353
    :goto_7e
    sparse-switch v4, :sswitch_data_ea

    .line 374
    return v4

    .line 337
    :catch_82
    move-exception v4

    .line 338
    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 339
    const-string v6, "Received authentication challenge is null"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 348
    const/16 v4, 0x191

    goto :goto_7e

    .line 350
    :cond_92
    throw v4

    .line 355
    :sswitch_93
    const-string v5, "Location"

    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_de

    .line 357
    const-string v5, "//"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    :cond_ba
    invoke-static {v1}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->isThirdPartyRedirect(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_de

    .line 361
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 362
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v1, "com.android.browser.application_id"

    iget-object v3, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "Third-party login required"

    invoke-static {v1, v2}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->newSolvableIOException(Ljava/lang/String;Landroid/content/Intent;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 371
    :cond_de
    :sswitch_de
    invoke-direct {p0, v3}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->invalidateAuthToken(Ljava/lang/String;)V

    .line 372
    new-instance v1, Ljava/net/HttpRetryException;

    const-string v2, "Unauthorized"

    invoke-direct {v1, v2, v4}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 353
    nop

    :sswitch_data_ea
    .sparse-switch
        0x12e -> :sswitch_93
        0x191 -> :sswitch_de
    .end sparse-switch
.end method

.method public static getSolutionForError(Ljava/lang/Throwable;)Landroid/content/Intent;
    .registers 2
    .parameter "t"

    .prologue
    .line 97
    :goto_0
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->sSolutions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_13
    sget-object v0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->sSolutions:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method private static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .parameter "context"

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 120
    .local v3, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, packageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 122
    .local v1, flags:I
    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 123
    .local v2, info:Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (gzip)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_2b} :catch_2d

    move-result-object v5

    return-object v5

    .line 124
    .end local v1           #flags:I
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v3           #manager:Landroid/content/pm/PackageManager;
    .end local v4           #packageName:Ljava/lang/String;
    :catch_2d
    move-exception v5

    move-object v0, v5

    .line 126
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private invalidateAuthToken(Ljava/lang/String;)V
    .registers 4
    .parameter "authToken"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mAccountManager:Lcom/google/android/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method static isThirdPartyRedirect(Ljava/lang/String;)Z
    .registers 5
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 158
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v3

    .line 168
    :goto_a
    return v2

    .line 166
    :cond_b
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, url:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, authority:Ljava/lang/String;
    const-string v2, "(.*\\.)?google\\..*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v2, 0x1

    goto :goto_a

    :cond_1e
    move v2, v3

    goto :goto_a
.end method

.method private newHttpResponseException(Ljava/net/URL;ILjava/lang/String;)Ljava/io/IOException;
    .registers 11
    .parameter "url"
    .parameter "responseCode"
    .parameter "responseMessage"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 132
    iget-object v3, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mConfig:Lcom/google/android/apps/reader/util/Config;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/util/Config;->logd()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 133
    const-string v2, "Unexpected response from %s: %s (%d)"

    .line 134
    .local v2, template:Ljava/lang/String;
    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    aput-object p3, v0, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v6

    .line 137
    .local v0, args:[Ljava/lang/Object;
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, message:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v3, p2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 145
    :goto_27
    return-object v3

    .line 140
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #template:Ljava/lang/String;
    :cond_28
    const-string v2, "Unexpected response: %s (%d)"

    .line 141
    .restart local v2       #template:Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/Object;

    aput-object p3, v0, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v5

    .line 144
    .restart local v0       #args:[Ljava/lang/Object;
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .restart local v1       #message:Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    invoke-direct {v3, p2, v1}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    goto :goto_27
.end method

.method private static newSolvableIOException(Ljava/lang/String;Landroid/content/Intent;)Ljava/io/IOException;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/google/android/apps/reader/net/ReaderContentHandler;->sSolutions:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    return-object v0
.end method

.method private post(Ljava/net/URLConnection;)V
    .registers 11
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v7, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mPostData:Lorg/apache/http/HttpEntity;

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    .line 260
    .local v3, contentType:Lorg/apache/http/Header;
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v7, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mPostData:Lorg/apache/http/HttpEntity;

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    .line 263
    .local v1, contentLength:J
    const-string v7, "Content-Length"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/net/URLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v4, v0

    .line 266
    .local v4, http:Ljava/net/HttpURLConnection;
    const-string v7, "POST"

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 267
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 268
    iget-object v7, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mPostData:Lorg/apache/http/HttpEntity;

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 270
    .local v5, input:Ljava/io/InputStream;
    :try_start_33
    invoke-virtual {p1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    .line 271
    .local v6, output:Ljava/io/OutputStream;
    invoke-static {v5, v6}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 277
    iput-object v6, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_40

    .line 279
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 281
    return-void

    .line 279
    .end local v6           #output:Ljava/io/OutputStream;
    :catchall_40
    move-exception v7

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v7
.end method


# virtual methods
.method blockingGetAuthToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "authTokenType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->blockingGetAuthTokenBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 237
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 238
    const-string v2, "authtoken"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 240
    :cond_13
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 241
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 249
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->clearNewTaskFlag(Landroid/content/Intent;)V

    .line 251
    const-string v2, "User action required"

    invoke-static {v2, v1}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->newSolvableIOException(Ljava/lang/String;Landroid/content/Intent;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 253
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2d
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to obtain auth token"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    .registers 9
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget-object v5, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mHandler:Ljava/net/ContentHandler;

    if-nez v5, :cond_a

    .line 382
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 384
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    .line 386
    :try_start_d
    move-object v0, p1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 387
    .local v1, http:Ljava/net/HttpURLConnection;
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->getHttpResponseCode(Ljava/net/URLConnection;)I

    move-result v2

    .line 388
    .local v2, responseCode:I
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 389
    .local v3, responseMessage:Ljava/lang/String;
    packed-switch v2, :pswitch_data_40

    .line 393
    invoke-virtual {p1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    .line 394
    .local v4, url:Ljava/net/URL;
    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->newHttpResponseException(Ljava/net/URL;ILjava/lang/String;)Ljava/io/IOException;

    move-result-object v5

    throw v5
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_25

    .line 397
    .end local v1           #http:Ljava/net/HttpURLConnection;
    .end local v2           #responseCode:I
    .end local v3           #responseMessage:Ljava/lang/String;
    .end local v4           #url:Ljava/net/URL;
    :catchall_25
    move-exception v5

    iget-object v6, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    if-eqz v6, :cond_2f

    .line 398
    iget-object v6, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    :cond_2f
    throw v5

    .line 391
    .restart local v1       #http:Ljava/net/HttpURLConnection;
    .restart local v2       #responseCode:I
    .restart local v3       #responseMessage:Ljava/lang/String;
    :pswitch_30
    :try_start_30
    iget-object v5, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mHandler:Ljava/net/ContentHandler;

    invoke-virtual {v5, p1}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_25

    move-result-object v5

    .line 397
    iget-object v6, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    if-eqz v6, :cond_3f

    .line 398
    iget-object v6, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    :cond_3f
    return-object v5

    .line 389
    :pswitch_data_40
    .packed-switch 0xc8
        :pswitch_30
    .end packed-switch
.end method

.method public getResponseCode(Ljava/net/URLConnection;)I
    .registers 6
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    .line 291
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->getHttpResponseCode(Ljava/net/URLConnection;)I

    move-result v1

    .line 292
    .local v1, responseCode:I
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_15

    .line 293
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_24

    move-result-object v0

    .line 295
    .local v0, in:Ljava/io/InputStream;
    :try_start_f
    invoke-static {v0}, Lcom/google/android/apps/reader/net/ReaderContentHandler;->skipAll(Ljava/io/InputStream;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1f

    .line 297
    :try_start_12
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_24

    .line 302
    .end local v0           #in:Ljava/io/InputStream;
    :cond_15
    iget-object v2, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    if-eqz v2, :cond_1e

    .line 303
    iget-object v2, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    :cond_1e
    return v1

    .line 297
    .restart local v0       #in:Ljava/io/InputStream;
    :catchall_1f
    move-exception v2

    :try_start_20
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 302
    .end local v0           #in:Ljava/io/InputStream;
    .end local v1           #responseCode:I
    :catchall_24
    move-exception v2

    iget-object v3, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    if-eqz v3, :cond_2e

    .line 303
    iget-object v3, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mOutputStream:Ljava/io/Closeable;

    invoke-interface {v3}, Ljava/io/Closeable;->close()V

    :cond_2e
    throw v2
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .registers 2
    .parameter "data"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/google/android/apps/reader/net/ReaderContentHandler;->mPostData:Lorg/apache/http/HttpEntity;

    .line 406
    return-void
.end method
