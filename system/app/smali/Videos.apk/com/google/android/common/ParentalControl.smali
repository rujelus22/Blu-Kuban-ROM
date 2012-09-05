.class public Lcom/google/android/common/ParentalControl;
.super Ljava/lang/Object;
.source "ParentalControl.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastCheckState(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v0, "ParentalControl"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7
    .parameter "context"
    .parameter "app"

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_18

    .line 94
    const-string v3, "ParentalControl"

    const-string v4, "Network request on main thread"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_18
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 99
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "parental_control_check_enabled"

    invoke-static {v1, v3, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_25

    .line 112
    :cond_24
    :goto_24
    return v2

    .line 103
    :cond_25
    if-eqz p1, :cond_35

    .line 104
    const-string v3, "parental_control_apps_list"

    invoke-static {v1, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, apps:Ljava/lang/String;
    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 110
    .end local v0           #apps:Ljava/lang/String;
    :cond_35
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->maybeCheckState(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->getLastCheckState(Landroid/content/Context;)Z

    move-result v2

    goto :goto_24
.end method

.method private static isHipriActive(Landroid/net/ConnectivityManager;)Z
    .registers 2
    .parameter "cm"

    .prologue
    .line 155
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method private static maybeCheckState(Landroid/content/Context;)V
    .registers 26
    .parameter "context"

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 197
    .local v6, cr:Landroid/content/ContentResolver;
    const-string v21, "ParentalControl"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 198
    .local v12, prefs:Landroid/content/SharedPreferences;
    new-instance v16, Lcom/android/common/OperationScheduler;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 199
    .local v16, scheduler:Lcom/android/common/OperationScheduler;
    new-instance v11, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v11}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    .line 200
    .local v11, options:Lcom/android/common/OperationScheduler$Options;
    const-string v21, "parental_control_timeout_in_ms"

    const-wide/32 v22, 0x2932e00

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-static {v6, v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v21

    move-wide/from16 v0, v21

    iput-wide v0, v11, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 203
    new-instance v21, Ljava/io/File;

    const-string v22, "/proc/1"

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->lastModified()J

    move-result-wide v21

    invoke-virtual/range {v16 .. v16}, Lcom/android/common/OperationScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-lez v21, :cond_4b

    .line 204
    const-wide/16 v21, 0x0

    move-object/from16 v0, v16

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 207
    :cond_4b
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-lez v21, :cond_5a

    .line 289
    :goto_59
    return-void

    .line 211
    :cond_5a
    const-string v21, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 213
    .local v5, cm:Landroid/net/ConnectivityManager;
    if-nez v5, :cond_70

    .line 214
    const-string v21, "ParentalControl"

    const-string v22, "Parental control unchanged: No ConnectivityManager"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 219
    :cond_70
    new-instance v4, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v21, "Android-PC"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 222
    .local v4, client:Lcom/google/android/common/http/GoogleHttpClient;
    :try_start_7f
    invoke-static {v5}, Lcom/google/android/common/ParentalControl;->waitForHipri(Landroid/net/ConnectivityManager;)Z

    move-result v21

    if-nez v21, :cond_97

    .line 223
    invoke-virtual/range {v16 .. v16}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_280
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_88} :catch_202

    .line 286
    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/16 v21, 0x0

    const-string v22, "enableHIPRI"

    :goto_8f
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_59

    .line 227
    :cond_97
    :try_start_97
    const-string v21, "http://android.clients.google.com/content/default"

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 228
    .local v18, uri:Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 229
    .local v3, addr:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    .line 230
    .local v10, octets:[B
    const/16 v21, 0x5

    const/16 v22, 0x3

    aget-byte v22, v10, v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    shl-int/lit8 v22, v22, 0x18

    const/16 v23, 0x2

    aget-byte v23, v10, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x10

    or-int v22, v22, v23

    const/16 v23, 0x1

    aget-byte v23, v10, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int/lit8 v23, v23, 0x8

    or-int v22, v22, v23

    const/16 v23, 0x0

    aget-byte v23, v10, v23

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    or-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v21

    if-nez v21, :cond_10e

    .line 233
    const-string v21, "ParentalControl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Parental control unchanged: Error rerouting "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual/range {v16 .. v16}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_106
    .catchall {:try_start_97 .. :try_end_106} :catchall_280
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_106} :catch_202

    .line 286
    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/16 v21, 0x0

    const-string v22, "enableHIPRI"

    goto :goto_8f

    .line 238
    :cond_10e
    :try_start_10e
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPort()I

    move-result v21

    if-lez v21, :cond_1dc

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getPort()I

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_140
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, hostport:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    .line 241
    const-string v21, "ParentalControl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Attempting litmus URL fetch: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v14, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 243
    .local v14, request:Lorg/apache/http/client/methods/HttpGet;
    const-string v21, "Connection"

    const-string v22, "close"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4, v14}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 245
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 247
    .local v17, status:I
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_21a

    .line 248
    const-string v21, "parental_control_expected_response"

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 250
    .local v8, expected:Ljava/lang/String;
    if-eqz v8, :cond_1be

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e0

    .line 253
    :cond_1be
    const-string v21, "ParentalControl"

    const-string v22, "Parental control is OFF: Litmus fetch succeeded"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual/range {v16 .. v16}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 255
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "enabled"

    const/16 v23, 0x0

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1d3
    .catchall {:try_start_10e .. :try_end_1d3} :catchall_280
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_1d3} :catch_202

    .line 286
    .end local v8           #expected:Ljava/lang/String;
    :cond_1d3
    :goto_1d3
    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/16 v21, 0x0

    const-string v22, "enableHIPRI"

    goto/16 :goto_8f

    .line 238
    .end local v9           #hostport:Ljava/lang/String;
    .end local v14           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #status:I
    :cond_1dc
    :try_start_1dc
    const-string v21, ""

    goto/16 :goto_140

    .line 258
    .restart local v8       #expected:Ljava/lang/String;
    .restart local v9       #hostport:Ljava/lang/String;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #status:I
    :cond_1e0
    const-string v21, "ParentalControl"

    const-string v22, "Parental control is ON: Litmus content was modified"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual/range {v16 .. v16}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 260
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "enabled"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "landingUrl"

    const-string v23, ""

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_201
    .catchall {:try_start_1dc .. :try_end_201} :catchall_280
    .catch Ljava/io/IOException; {:try_start_1dc .. :try_end_201} :catch_202

    goto :goto_1d3

    .line 282
    .end local v3           #addr:Ljava/net/InetAddress;
    .end local v8           #expected:Ljava/lang/String;
    .end local v9           #hostport:Ljava/lang/String;
    .end local v10           #octets:[B
    .end local v14           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #status:I
    .end local v18           #uri:Landroid/net/Uri;
    :catch_202
    move-exception v7

    .line 283
    .local v7, e:Ljava/io/IOException;
    :try_start_203
    const-string v21, "ParentalControl"

    const-string v22, "Parental control unchanged: Litmus fetch failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    invoke-virtual/range {v16 .. v16}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_211
    .catchall {:try_start_203 .. :try_end_211} :catchall_280

    .line 286
    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/16 v21, 0x0

    const-string v22, "enableHIPRI"

    goto/16 :goto_8f

    .line 264
    .end local v7           #e:Ljava/io/IOException;
    .restart local v3       #addr:Ljava/net/InetAddress;
    .restart local v9       #hostport:Ljava/lang/String;
    .restart local v10       #octets:[B
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #status:I
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_21a
    const/16 v21, 0x12e

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d3

    .line 265
    :try_start_222
    const-string v21, "parental_control_redirect_regex"

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 267
    .local v20, whitelist:Ljava/lang/String;
    const-string v21, "location"

    move-object/from16 v0, v21

    invoke-interface {v15, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v13

    .line 268
    .local v13, redirect:Lorg/apache/http/Header;
    if-nez v13, :cond_290

    const/16 v19, 0x0

    .line 269
    .local v19, url:Ljava/lang/String;
    :goto_236
    if-eqz v20, :cond_295

    if-eqz v19, :cond_295

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_295

    .line 271
    const-string v21, "ParentalControl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Parental control is ON: Litmus redirects to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual/range {v16 .. v16}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 273
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "enabled"

    const/16 v23, 0x1

    invoke-interface/range {v21 .. v23}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    const-string v22, "landingUrl"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_27e
    .catchall {:try_start_222 .. :try_end_27e} :catchall_280
    .catch Ljava/io/IOException; {:try_start_222 .. :try_end_27e} :catch_202

    goto/16 :goto_1d3

    .line 286
    .end local v3           #addr:Ljava/net/InetAddress;
    .end local v9           #hostport:Ljava/lang/String;
    .end local v10           #octets:[B
    .end local v13           #redirect:Lorg/apache/http/Header;
    .end local v14           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #status:I
    .end local v18           #uri:Landroid/net/Uri;
    .end local v19           #url:Ljava/lang/String;
    .end local v20           #whitelist:Ljava/lang/String;
    :catchall_280
    move-exception v21

    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const/16 v22, 0x0

    const-string v23, "enableHIPRI"

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 286
    throw v21

    .line 268
    .restart local v3       #addr:Ljava/net/InetAddress;
    .restart local v9       #hostport:Ljava/lang/String;
    .restart local v10       #octets:[B
    .restart local v13       #redirect:Lorg/apache/http/Header;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #status:I
    .restart local v18       #uri:Landroid/net/Uri;
    .restart local v20       #whitelist:Ljava/lang/String;
    :cond_290
    :try_start_290
    invoke-interface {v13}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    goto :goto_236

    .line 277
    .restart local v19       #url:Ljava/lang/String;
    :cond_295
    invoke-virtual/range {v16 .. v16}, Lcom/android/common/OperationScheduler;->onTransientError()V

    .line 278
    const-string v21, "ParentalControl"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Parental control unchanged: Unknown litmus redirect "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    if-nez v19, :cond_2a9

    const-string v19, "(none)"

    .end local v19           #url:Ljava/lang/String;
    :cond_2a9
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b8
    .catchall {:try_start_290 .. :try_end_2b8} :catchall_280
    .catch Ljava/io/IOException; {:try_start_290 .. :try_end_2b8} :catch_202

    goto/16 :goto_1d3
.end method

.method private static waitForHipri(Landroid/net/ConnectivityManager;)Z
    .registers 8
    .parameter "cm"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->isHipriActive(Landroid/net/ConnectivityManager;)Z

    move-result v0

    .line 170
    .local v0, alreadyActive:Z
    const-string v5, "enableHIPRI"

    invoke-virtual {p0, v4, v5}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v2

    .line 174
    .local v2, result:I
    if-eqz v0, :cond_f

    .line 192
    :cond_e
    :goto_e
    return v3

    .line 178
    :cond_f
    if-eqz v2, :cond_2d

    if-eq v2, v3, :cond_2d

    .line 179
    const-string v3, "ParentalControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parental control unchanged: Mobile network error, code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 180
    goto :goto_e

    .line 183
    :cond_2d
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2e
    const/16 v5, 0x14

    if-ge v1, v5, :cond_47

    .line 184
    const-string v5, "ParentalControl"

    const-string v6, "Waiting 1000ms for mobile network"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 186
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->isHipriActive(Landroid/net/ConnectivityManager;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 191
    :cond_47
    const-string v3, "ParentalControl"

    const-string v5, "Parental control unchanged: Timed out waiting for mobile network"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 192
    goto :goto_e
.end method
