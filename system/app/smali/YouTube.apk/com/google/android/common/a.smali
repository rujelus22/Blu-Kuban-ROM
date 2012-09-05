.class public final Lcom/google/android/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_18

    .line 94
    const-string v0, "ParentalControl"

    const-string v2, "Network request on main thread"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    const-string v2, "parental_control_check_enabled"

    invoke-static {v0, v2, v1}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_26

    move v0, v1

    .line 112
    :goto_25
    return v0

    .line 103
    :cond_26
    if-eqz p1, :cond_38

    .line 104
    const-string v2, "parental_control_apps_list"

    invoke-static {v0, v2}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    move v0, v1

    .line 106
    goto :goto_25

    .line 110
    :cond_38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v0, "ParentalControl"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Lcom/android/common/b;

    invoke-direct {v5, v4}, Lcom/android/common/b;-><init>(Landroid/content/SharedPreferences;)V

    new-instance v0, Lcom/android/common/c;

    invoke-direct {v0}, Lcom/android/common/c;-><init>()V

    const-string v2, "parental_control_timeout_in_ms"

    const-wide/32 v6, 0x2932e00

    invoke-static {v3, v2, v6, v7}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/common/c;->e:J

    new-instance v2, Ljava/io/File;

    const-string v6, "/proc/1"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/android/common/b;->a()J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-lez v2, :cond_6f

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/common/b;->a(J)V

    :cond_6f
    invoke-virtual {v5, v0}, Lcom/android/common/b;->a(Lcom/android/common/c;)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gtz v0, :cond_8c

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_99

    const-string v0, "ParentalControl"

    const-string v2, "Parental control unchanged: No ConnectivityManager"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_8c
    :goto_8c
    const-string v0, "ParentalControl"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_25

    .line 110
    :cond_99
    new-instance v6, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v2, "Android-PC"

    invoke-direct {v6, p0, v2, v1}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    :try_start_a0
    invoke-static {v0}, Lcom/google/android/common/a;->b(Landroid/net/ConnectivityManager;)Z

    move-result v2

    if-nez v2, :cond_b2

    invoke-virtual {v5}, Lcom/android/common/b;->c()V
    :try_end_a9
    .catchall {:try_start_a0 .. :try_end_a9} :catchall_242
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a9} :catch_1df

    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->a()V

    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_8c

    :cond_b2
    :try_start_b2
    const-string v2, "http://android.clients.google.com/content/default"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    const/4 v9, 0x5

    const/4 v10, 0x3

    aget-byte v10, v8, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    const/4 v11, 0x2

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    const/4 v11, 0x1

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x0

    aget-byte v8, v8, v11

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v10

    invoke-virtual {v0, v9, v8}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v8

    if-nez v8, :cond_10c

    const-string v3, "ParentalControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parental control unchanged: Error rerouting "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/common/b;->c()V
    :try_end_103
    .catchall {:try_start_b2 .. :try_end_103} :catchall_242
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_103} :catch_1df

    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->a()V

    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_8c

    :cond_10c
    :try_start_10c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/Uri;->getPort()I

    move-result v2

    if-lez v2, :cond_1ba

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/Uri;->getPort()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_136
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const-string v7, "ParentalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempting litmus URL fetch: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const-string v2, "Connection"

    const-string v8, "close"

    invoke-virtual {v7, v2, v8}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1f4

    const-string v7, "parental_control_expected_response"

    invoke-static {v3, v7}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19c

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1be

    :cond_19c
    const-string v2, "ParentalControl"

    const-string v3, "Parental control is OFF: Litmus fetch succeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/common/b;->b()V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "enabled"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1b0
    .catchall {:try_start_10c .. :try_end_1b0} :catchall_242
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_1b0} :catch_1df

    :cond_1b0
    :goto_1b0
    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->a()V

    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_8c

    :cond_1ba
    :try_start_1ba
    const-string v2, ""

    goto/16 :goto_136

    :cond_1be
    const-string v2, "ParentalControl"

    const-string v3, "Parental control is ON: Litmus content was modified"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/common/b;->b()V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "enabled"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "landingUrl"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1de
    .catchall {:try_start_1ba .. :try_end_1de} :catchall_242
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1de} :catch_1df

    goto :goto_1b0

    :catch_1df
    move-exception v2

    :try_start_1e0
    const-string v3, "ParentalControl"

    const-string v4, "Parental control unchanged: Litmus fetch failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v5}, Lcom/android/common/b;->c()V
    :try_end_1ea
    .catchall {:try_start_1e0 .. :try_end_1ea} :catchall_242

    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->a()V

    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_8c

    :cond_1f4
    const/16 v8, 0x12e

    if-ne v7, v8, :cond_1b0

    :try_start_1f8
    const-string v7, "parental_control_redirect_regex"

    invoke-static {v3, v7}, Lcom/google/android/gsf/f;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "location"

    invoke-interface {v2, v7}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-nez v2, :cond_24c

    const/4 v2, 0x0

    :goto_207
    if-eqz v3, :cond_251

    if-eqz v2, :cond_251

    invoke-static {v3, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_251

    const-string v3, "ParentalControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Parental control is ON: Litmus redirects to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/android/common/b;->b()V

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "enabled"

    const/4 v7, 0x1

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "landingUrl"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_240
    .catchall {:try_start_1f8 .. :try_end_240} :catchall_242
    .catch Ljava/io/IOException; {:try_start_1f8 .. :try_end_240} :catch_1df

    goto/16 :goto_1b0

    :catchall_242
    move-exception v2

    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->a()V

    const-string v3, "enableHIPRI"

    invoke-virtual {v0, v1, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    throw v2

    :cond_24c
    :try_start_24c
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_207

    :cond_251
    invoke-virtual {v5}, Lcom/android/common/b;->c()V

    const-string v3, "ParentalControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parental control unchanged: Unknown litmus redirect "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_265

    const-string v2, "(none)"

    :cond_265
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_270
    .catchall {:try_start_24c .. :try_end_270} :catchall_242
    .catch Ljava/io/IOException; {:try_start_24c .. :try_end_270} :catch_1df

    goto/16 :goto_1b0
.end method

.method private static a(Landroid/net/ConnectivityManager;)Z
    .registers 2
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method private static b(Landroid/net/ConnectivityManager;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    invoke-static {p0}, Lcom/google/android/common/a;->a(Landroid/net/ConnectivityManager;)Z

    move-result v2

    .line 170
    const-string v3, "enableHIPRI"

    invoke-virtual {p0, v1, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v3

    .line 174
    if-eqz v2, :cond_f

    .line 192
    :cond_e
    :goto_e
    return v0

    .line 178
    :cond_f
    if-eqz v3, :cond_2d

    if-eq v3, v0, :cond_2d

    .line 179
    const-string v0, "ParentalControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parental control unchanged: Mobile network error, code "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 180
    goto :goto_e

    :cond_2d
    move v2, v1

    .line 183
    :goto_2e
    const/16 v3, 0x14

    if-ge v2, v3, :cond_47

    .line 184
    const-string v3, "ParentalControl"

    const-string v4, "Waiting 1000ms for mobile network"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 186
    invoke-static {p0}, Lcom/google/android/common/a;->a(Landroid/net/ConnectivityManager;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 191
    :cond_47
    const-string v0, "ParentalControl"

    const-string v2, "Parental control unchanged: Timed out waiting for mobile network"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 192
    goto :goto_e
.end method
