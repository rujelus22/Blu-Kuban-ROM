.class public Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;
.super Ljava/lang/Object;
.source "AdvancedHttpClient.java"


# instance fields
.field private context:Landroid/content/Context;

.field public mThread:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field statusCode:I

.field strResult:Ljava/lang/String;

.field strStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->statusCode:I

    .line 38
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    .line 34
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private convertIsToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 9
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7d0

    .line 301
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    .local v5, strBuf:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 303
    .local v3, isr:Ljava/io/InputStreamReader;
    new-array v2, v6, [C

    .line 304
    .local v2, inputBuffer:[C
    const-string v4, ""

    .line 307
    .local v4, readString:Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v3, v2}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    .local v0, charRead:I
    if-lez v0, :cond_23

    .line 309
    const/4 v6, 0x0

    invoke-static {v2, v6, v0}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v4

    .line 310
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const/16 v6, 0x7d0

    new-array v2, v6, [C
    :try_end_22
    .catchall {:try_start_10 .. :try_end_22} :catchall_35
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_22} :catch_2b

    goto :goto_10

    .line 320
    :cond_23
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 323
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v0           #charRead:I
    :goto_2a
    return-object v6

    .line 313
    :catch_2b
    move-exception v1

    .line 315
    .local v1, e:Ljava/io/IOException;
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 316
    const-string v6, ""
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_35

    .line 320
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    goto :goto_2a

    .end local v1           #e:Ljava/io/IOException;
    :catchall_35
    move-exception v6

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    throw v6
.end method

.method public static isNetWorkConnected(Landroid/content/Context;)Z
    .registers 4
    .parameter "context"

    .prologue
    .line 292
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 294
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 295
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


# virtual methods
.method public get(Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V
    .registers 11
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "handler"

    .prologue
    .line 198
    new-instance v0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$9;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Landroid/content/Context;Ljava/net/URL;Lorg/apache/http/message/HeaderGroup;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    .line 215
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 217
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-nez v1, :cond_18

    .line 219
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    .line 221
    :cond_18
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    return-void
.end method

.method public processResult(Landroid/os/Message;)V
    .registers 11
    .parameter "msg"

    .prologue
    const/4 v8, -0x1

    .line 42
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;

    .line 43
    .local v3, httpResponseHandler:Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;
    invoke-virtual {v3}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 44
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    if-eqz v2, :cond_14b

    .line 46
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 48
    .local v5, responseResultEntity:Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_133

    .line 52
    :try_start_11
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    iput v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->statusCode:I

    .line 53
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_d4
    .catch Landroid/net/ParseException; {:try_start_11 .. :try_end_25} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_25} :catch_8d

    .line 54
    const/4 v4, 0x0

    .line 58
    .local v4, is:Ljava/io/InputStream;
    :try_start_26
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_d4
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_29} :catch_3e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_c2
    .catch Landroid/net/ParseException; {:try_start_26 .. :try_end_29} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_8d

    move-result-object v4

    .line 89
    :goto_2a
    if-nez v4, :cond_f0

    .line 93
    :try_start_2c
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$3;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$3;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_d4
    .catch Ljava/lang/ClassCastException; {:try_start_2c .. :try_end_38} :catch_e5
    .catch Landroid/net/ParseException; {:try_start_2c .. :try_end_38} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_38} :catch_8d

    .line 152
    :goto_38
    if-eqz v5, :cond_3d

    .line 156
    :try_start_3a
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_113

    .line 191
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #responseResultEntity:Lorg/apache/http/HttpEntity;
    :cond_3d
    :goto_3d
    return-void

    .line 59
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #responseResultEntity:Lorg/apache/http/HttpEntity;
    :catch_3e
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_3f
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$1;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$1;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_d4
    .catch Ljava/lang/ClassCastException; {:try_start_3f .. :try_end_4b} :catch_83
    .catch Landroid/net/ParseException; {:try_start_3f .. :try_end_4b} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_4b} :catch_8d

    .line 72
    :goto_4b
    :try_start_4b
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_d4
    .catch Landroid/net/ParseException; {:try_start_4b .. :try_end_4e} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_8d

    goto :goto_2a

    .line 118
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_4f
    move-exception v0

    .line 120
    .local v0, e:Landroid/net/ParseException;
    :try_start_50
    sget-boolean v6, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v6, :cond_6c

    .line 121
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADVHTTP ParseException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_50 .. :try_end_6c} :catchall_d4

    .line 125
    :cond_6c
    :try_start_6c
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$5;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$5;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_d4
    .catch Ljava/lang/ClassCastException; {:try_start_6c .. :try_end_78} :catch_119

    .line 152
    :goto_78
    if-eqz v5, :cond_3d

    .line 156
    :try_start_7a
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_7e

    goto :goto_3d

    .line 157
    :catch_7e
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    .line 68
    .local v0, e:Ljava/lang/IllegalStateException;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_83
    move-exception v1

    .line 70
    .local v1, e1:Ljava/lang/ClassCastException;
    const/4 v6, -0x1

    :try_start_85
    const-string v7, "HTTP parse error"

    const-string v8, ""

    invoke-virtual {v3, v6, v7, v8}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_85 .. :try_end_8c} :catchall_d4
    .catch Landroid/net/ParseException; {:try_start_85 .. :try_end_8c} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_8c} :catch_8d

    goto :goto_4b

    .line 134
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .end local v1           #e1:Ljava/lang/ClassCastException;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_8d
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    :try_start_8e
    sget-boolean v6, Lcom/sec/android/widgetapp/stockclock/common/Constants;->DEB_PRINT:Z

    if-eqz v6, :cond_aa

    .line 137
    const-string v6, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ADVHTTP ParseException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/widgetapp/stockclock/common/SLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_8e .. :try_end_aa} :catchall_d4

    .line 141
    :cond_aa
    :try_start_aa
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$6;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$6;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_b6
    .catchall {:try_start_aa .. :try_end_b6} :catchall_d4
    .catch Ljava/lang/ClassCastException; {:try_start_aa .. :try_end_b6} :catch_124

    .line 152
    :goto_b6
    if-eqz v5, :cond_3d

    .line 156
    :try_start_b8
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bc

    goto :goto_3d

    .line 157
    :catch_bc
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3d

    .line 73
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_c2
    move-exception v0

    .line 77
    .local v0, e:Ljava/io/IOException;
    :try_start_c3
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$2;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$2;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_cf
    .catchall {:try_start_c3 .. :try_end_cf} :catchall_d4
    .catch Ljava/lang/ClassCastException; {:try_start_c3 .. :try_end_cf} :catch_db
    .catch Landroid/net/ParseException; {:try_start_c3 .. :try_end_cf} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_cf} :catch_8d

    .line 86
    :goto_cf
    :try_start_cf
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d4
    .catch Landroid/net/ParseException; {:try_start_cf .. :try_end_d2} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_cf .. :try_end_d2} :catch_8d

    goto/16 :goto_2a

    .line 152
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/InputStream;
    :catchall_d4
    move-exception v6

    if-eqz v5, :cond_da

    .line 156
    :try_start_d7
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_12e

    .line 160
    :cond_da
    :goto_da
    throw v6

    .line 82
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_db
    move-exception v1

    .line 84
    .restart local v1       #e1:Ljava/lang/ClassCastException;
    const/4 v6, -0x1

    :try_start_dd
    const-string v7, "HTTP parse error"

    const-string v8, ""

    invoke-virtual {v3, v6, v7, v8}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_cf

    .line 98
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/lang/ClassCastException;
    :catch_e5
    move-exception v1

    .line 100
    .restart local v1       #e1:Ljava/lang/ClassCastException;
    const/4 v6, -0x1

    const-string v7, "HTTP parse error"

    const-string v8, ""

    invoke-virtual {v3, v6, v7, v8}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 104
    .end local v1           #e1:Ljava/lang/ClassCastException;
    :cond_f0
    invoke-direct {p0, v4}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->convertIsToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    .line 105
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f9
    .catchall {:try_start_dd .. :try_end_f9} :catchall_d4
    .catch Landroid/net/ParseException; {:try_start_dd .. :try_end_f9} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_f9} :catch_8d

    .line 108
    :try_start_f9
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$4;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_105
    .catchall {:try_start_f9 .. :try_end_105} :catchall_d4
    .catch Ljava/lang/ClassCastException; {:try_start_f9 .. :try_end_105} :catch_107
    .catch Landroid/net/ParseException; {:try_start_f9 .. :try_end_105} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_105} :catch_8d

    goto/16 :goto_38

    .line 113
    :catch_107
    move-exception v1

    .line 115
    .restart local v1       #e1:Ljava/lang/ClassCastException;
    :try_start_108
    iget v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->statusCode:I

    iget-object v7, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->strStatus:Ljava/lang/String;

    iget-object v8, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->strResult:Ljava/lang/String;

    invoke-virtual {v3, v6, v7, v8}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_111
    .catchall {:try_start_108 .. :try_end_111} :catchall_d4
    .catch Landroid/net/ParseException; {:try_start_108 .. :try_end_111} :catch_4f
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_111} :catch_8d

    goto/16 :goto_38

    .line 157
    .end local v1           #e1:Ljava/lang/ClassCastException;
    :catch_113
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3d

    .line 130
    .end local v4           #is:Ljava/io/InputStream;
    .local v0, e:Landroid/net/ParseException;
    :catch_119
    move-exception v1

    .line 132
    .restart local v1       #e1:Ljava/lang/ClassCastException;
    const/4 v6, -0x1

    :try_start_11b
    const-string v7, "HTTP parse error"

    const-string v8, ""

    invoke-virtual {v3, v6, v7, v8}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_78

    .line 146
    .end local v1           #e1:Ljava/lang/ClassCastException;
    .local v0, e:Ljava/lang/Exception;
    :catch_124
    move-exception v1

    .line 148
    .restart local v1       #e1:Ljava/lang/ClassCastException;
    const/4 v6, -0x1

    const-string v7, "HTTP undefined error"

    const-string v8, ""

    invoke-virtual {v3, v6, v7, v8}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_12d
    .catchall {:try_start_11b .. :try_end_12d} :catchall_d4

    goto :goto_b6

    .line 157
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #e1:Ljava/lang/ClassCastException;
    :catch_12e
    move-exception v0

    .line 159
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_da

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :cond_133
    :try_start_133
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$7;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$7;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_13f
    .catch Ljava/lang/ClassCastException; {:try_start_133 .. :try_end_13f} :catch_141

    goto/16 :goto_3d

    .line 172
    :catch_141
    move-exception v1

    .line 174
    .restart local v1       #e1:Ljava/lang/ClassCastException;
    const-string v6, "HTTP Error"

    const-string v7, ""

    invoke-virtual {v3, v8, v6, v7}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 181
    .end local v1           #e1:Ljava/lang/ClassCastException;
    .end local v5           #responseResultEntity:Lorg/apache/http/HttpEntity;
    :cond_14b
    :try_start_14b
    iget-object v6, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$8;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient$8;-><init>(Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_157
    .catch Ljava/lang/ClassCastException; {:try_start_14b .. :try_end_157} :catch_159

    goto/16 :goto_3d

    .line 186
    :catch_159
    move-exception v1

    .line 188
    .restart local v1       #e1:Ljava/lang/ClassCastException;
    const-string v6, "HTTP Error"

    const-string v7, ""

    invoke-virtual {v3, v8, v6, v7}, Lcom/sec/android/widgetapp/stockclock/http/HttpResponseHandler;->onReceive(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d
.end method

.method public removeThread(Ljava/lang/Thread;)V
    .registers 4
    .parameter "target"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    .line 260
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 261
    .local v0, index:I
    const/4 v1, -0x1

    if-le v0, v1, :cond_12

    .line 263
    iget-object v1, p0, Lcom/sec/android/widgetapp/stockclock/http/AdvancedHttpClient;->mThread:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    .end local v0           #index:I
    :cond_12
    return-void
.end method
