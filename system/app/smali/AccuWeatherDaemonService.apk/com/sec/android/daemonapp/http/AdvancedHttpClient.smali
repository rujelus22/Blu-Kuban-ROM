.class public Lcom/sec/android/daemonapp/http/AdvancedHttpClient;
.super Ljava/lang/Object;
.source "AdvancedHttpClient.java"


# instance fields
.field context:Landroid/content/Context;

.field responseOnThread:Z

.field private stamp:J

.field statusCode:I

.field strResult:Ljava/lang/String;

.field strStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->responseOnThread:Z

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J

    .line 34
    iput-object p1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "responseOnThread"

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->responseOnThread:Z

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J

    .line 39
    iput-object p1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    .line 40
    iput-boolean p2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->responseOnThread:Z

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZJ)V
    .registers 7
    .parameter "context"
    .parameter "responseOnThread"
    .parameter "stamp"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->responseOnThread:Z

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J

    .line 45
    iput-object p1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    .line 46
    iput-boolean p2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->responseOnThread:Z

    .line 47
    iput-wide p3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J

    return-wide v0
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 329
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 331
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 332
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_15
    return v2

    :cond_16
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public static isNetWorkConnectedStatus(Landroid/content/Context;)Z
    .registers 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 310
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 312
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 313
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1c

    .line 315
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 316
    .local v1, ds:Landroid/net/NetworkInfo$DetailedState;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 318
    .local v3, st:Landroid/net/NetworkInfo$State;
    sget-object v6, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_1d

    .line 324
    .end local v1           #ds:Landroid/net/NetworkInfo$DetailedState;
    .end local v3           #st:Landroid/net/NetworkInfo$State;
    :cond_1c
    :goto_1c
    return v4

    .line 322
    .restart local v1       #ds:Landroid/net/NetworkInfo$DetailedState;
    .restart local v3       #st:Landroid/net/NetworkInfo$State;
    :cond_1d
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v6, :cond_29

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v6, :cond_29

    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_1c

    :cond_29
    move v4, v5

    goto :goto_1c
.end method


# virtual methods
.method public get(ILandroid/content/Context;Ljava/net/URL;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;
    .registers 11
    .parameter "position"
    .parameter "context"
    .parameter "url"
    .parameter "handler"

    .prologue
    .line 218
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public get(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;
    .registers 13
    .parameter "position"
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "handler"

    .prologue
    .line 248
    new-instance v0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$7;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$7;-><init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;I)V

    .line 266
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    return-object v0
.end method

.method public getSync(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Lorg/apache/http/HttpResponse;
    .registers 6
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "handler"

    .prologue
    .line 273
    invoke-static {p1, p2, p3}, Lcom/sec/android/daemonapp/http/HttpClientThread;->get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 274
    .local v0, response:Lorg/apache/http/HttpResponse;
    return-object v0
.end method

.method public post(ILandroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;
    .registers 15
    .parameter "position"
    .parameter "context"
    .parameter "url"
    .parameter "body"
    .parameter "headers"
    .parameter "handler"

    .prologue
    .line 285
    new-instance v0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$8;-><init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;I)V

    .line 303
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 305
    return-object v0
.end method

.method public post(ILandroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;
    .registers 13
    .parameter "position"
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "handler"

    .prologue
    .line 223
    new-instance v0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$6;-><init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;I)V

    .line 241
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    return-object v0
.end method

.method public post(ILandroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)V
    .registers 13
    .parameter "position"
    .parameter "context"
    .parameter "url"
    .parameter "body"
    .parameter "handler"

    .prologue
    .line 279
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->post(ILandroid/content/Context;Ljava/net/URL;Ljava/lang/String;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/daemonapp/http/HttpResponseHandler;)Ljava/lang/Thread;

    .line 280
    return-void
.end method

.method public processResult(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v4, -0x1

    .line 56
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/daemonapp/http/HttpResponseHandler;

    .line 57
    .local v0, httpResponseHandler:Lcom/sec/android/daemonapp/http/HttpResponseHandler;
    invoke-virtual {v0}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 58
    .local v10, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v10, :cond_124

    .line 60
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    .line 62
    .local v11, responseResultEntity:Lorg/apache/http/HttpEntity;
    if-eqz v11, :cond_106

    .line 66
    :try_start_11
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->statusCode:I

    .line 67
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    .line 68
    const-string v1, "UTF-8"

    invoke-static {v11, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    .line 70
    iget-boolean v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->responseOnThread:Z

    if-eqz v1, :cond_8a

    .line 72
    iget-wide v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_4a

    .line 73
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->statusCode:I

    iget-object v3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_11 .. :try_end_44} :catchall_ee
    .catch Landroid/net/ParseException; {:try_start_11 .. :try_end_44} :catch_58
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_44} :catch_a8

    .line 152
    :cond_44
    :goto_44
    if-eqz v11, :cond_49

    .line 156
    :try_start_46
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_dc

    .line 214
    .end local v11           #responseResultEntity:Lorg/apache/http/HttpEntity;
    :cond_49
    :goto_49
    return-void

    .line 75
    .restart local v11       #responseResultEntity:Lorg/apache/http/HttpEntity;
    :cond_4a
    :try_start_4a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->statusCode:I

    iget-object v3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    iget-wide v5, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->stamp:J

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;J)V
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_ee
    .catch Landroid/net/ParseException; {:try_start_4a .. :try_end_57} :catch_58
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_a8

    goto :goto_44

    .line 96
    :catch_58
    move-exception v8

    .line 99
    .local v8, e:Landroid/net/ParseException;
    :try_start_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADVHTTP ParseException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;
    :try_end_71
    .catchall {:try_start_59 .. :try_end_71} :catchall_ee

    if-eqz v1, :cond_7f

    .line 105
    :try_start_73
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$2;-><init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Lcom/sec/android/daemonapp/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7f
    .catchall {:try_start_73 .. :try_end_7f} :catchall_ee
    .catch Ljava/lang/ClassCastException; {:try_start_73 .. :try_end_7f} :catch_e2

    .line 152
    :cond_7f
    :goto_7f
    if-eqz v11, :cond_49

    .line 156
    :try_start_81
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_49

    .line 158
    :catch_85
    move-exception v8

    .line 160
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49

    .line 77
    .end local v8           #e:Ljava/lang/Exception;
    :cond_8a
    :try_start_8a
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;
    :try_end_8c
    .catchall {:try_start_8a .. :try_end_8c} :catchall_ee
    .catch Landroid/net/ParseException; {:try_start_8a .. :try_end_8c} :catch_58
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8c} :catch_a8

    if-eqz v1, :cond_44

    .line 81
    :try_start_8e
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$1;-><init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Lcom/sec/android/daemonapp/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9a
    .catchall {:try_start_8e .. :try_end_9a} :catchall_ee
    .catch Ljava/lang/ClassCastException; {:try_start_8e .. :try_end_9a} :catch_9b
    .catch Landroid/net/ParseException; {:try_start_8e .. :try_end_9a} :catch_58
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_9a} :catch_a8

    goto :goto_44

    .line 90
    :catch_9b
    move-exception v7

    .line 92
    .local v7, ce:Ljava/lang/ClassCastException;
    :try_start_9c
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->statusCode:I

    iget-object v3, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_9c .. :try_end_a7} :catchall_ee
    .catch Landroid/net/ParseException; {:try_start_9c .. :try_end_a7} :catch_58
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a7} :catch_a8

    goto :goto_44

    .line 123
    .end local v7           #ce:Ljava/lang/ClassCastException;
    :catch_a8
    move-exception v8

    .line 126
    .restart local v8       #e:Ljava/lang/Exception;
    :try_start_a9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADVHTTP Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/daemonapp/common/Util;->Debug(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;
    :try_end_c1
    .catchall {:try_start_a9 .. :try_end_c1} :catchall_ee

    if-eqz v1, :cond_cf

    .line 132
    :try_start_c3
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$3;-><init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Lcom/sec/android/daemonapp/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_ee
    .catch Ljava/lang/ClassCastException; {:try_start_c3 .. :try_end_cf} :catch_f5

    .line 152
    :cond_cf
    :goto_cf
    if-eqz v11, :cond_49

    .line 156
    :try_start_d1
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d4} :catch_d6

    goto/16 :goto_49

    .line 158
    :catch_d6
    move-exception v8

    .line 160
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_49

    .line 158
    .end local v8           #e:Ljava/lang/Exception;
    :catch_dc
    move-exception v8

    .line 160
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_49

    .line 117
    .local v8, e:Landroid/net/ParseException;
    :catch_e2
    move-exception v9

    .line 119
    .local v9, ex:Ljava/lang/ClassCastException;
    :try_start_e3
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    const-string v3, "HTTP parse error"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catchall {:try_start_e3 .. :try_end_ed} :catchall_ee

    goto :goto_7f

    .line 152
    .end local v8           #e:Landroid/net/ParseException;
    .end local v9           #ex:Ljava/lang/ClassCastException;
    :catchall_ee
    move-exception v1

    if-eqz v11, :cond_f4

    .line 156
    :try_start_f1
    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_f1 .. :try_end_f4} :catch_101

    .line 161
    :cond_f4
    :goto_f4
    throw v1

    .line 144
    .local v8, e:Ljava/lang/Exception;
    :catch_f5
    move-exception v9

    .line 146
    .restart local v9       #ex:Ljava/lang/ClassCastException;
    :try_start_f6
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    const-string v3, "HTTP parse error"

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_f6 .. :try_end_100} :catchall_ee

    goto :goto_cf

    .line 158
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #ex:Ljava/lang/ClassCastException;
    :catch_101
    move-exception v8

    .line 160
    .restart local v8       #e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f4

    .line 167
    .end local v8           #e:Ljava/lang/Exception;
    :cond_106
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    if-eqz v1, :cond_49

    .line 171
    :try_start_10a
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$4;-><init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Lcom/sec/android/daemonapp/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_116
    .catch Ljava/lang/ClassCastException; {:try_start_10a .. :try_end_116} :catch_118

    goto/16 :goto_49

    .line 183
    :catch_118
    move-exception v9

    .line 185
    .restart local v9       #ex:Ljava/lang/ClassCastException;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "HTTP parse error"

    const-string v3, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49

    .line 192
    .end local v9           #ex:Ljava/lang/ClassCastException;
    .end local v11           #responseResultEntity:Lorg/apache/http/HttpEntity;
    :cond_124
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    if-eqz v1, :cond_49

    .line 196
    :try_start_128
    iget-object v1, p0, Lcom/sec/android/daemonapp/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/daemonapp/http/AdvancedHttpClient$5;-><init>(Lcom/sec/android/daemonapp/http/AdvancedHttpClient;Lcom/sec/android/daemonapp/http/HttpResponseHandler;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_134
    .catch Ljava/lang/ClassCastException; {:try_start_128 .. :try_end_134} :catch_136

    goto/16 :goto_49

    .line 208
    :catch_136
    move-exception v9

    .line 210
    .restart local v9       #ex:Ljava/lang/ClassCastException;
    iget v1, p1, Landroid/os/Message;->arg1:I

    const-string v2, "HTTP parse error"

    const-string v3, ""

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/sec/android/daemonapp/http/HttpResponseHandler;->onReceive(IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_49
.end method
