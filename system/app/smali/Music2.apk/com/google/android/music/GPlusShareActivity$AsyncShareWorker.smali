.class Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;
.super Lcom/google/android/music/Worker;
.source "GPlusShareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GPlusShareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncShareWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/GPlusShareActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/music/GPlusShareActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    .line 132
    const-string v0, "GPlusShareMusic"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method private createShareUrl()Lcom/google/android/music/SharePreviewResponse;
    .registers 19

    .prologue
    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    .line 157
    .local v3, context:Landroid/content/Context;
    new-instance v9, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-direct {v9, v3}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    .line 158
    .local v9, musicAuthInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    invoke-virtual {v14}, Lcom/google/android/music/GPlusShareActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "android_id"

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, androidId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    #getter for: Lcom/google/android/music/GPlusShareActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v14}, Lcom/google/android/music/GPlusShareActivity;->access$200(Lcom/google/android/music/GPlusShareActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/music/jumper/MusicPreferences;->getLoggingId()Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, loggingId:Ljava/lang/String;
    new-instance v6, Lcom/google/android/common/http/GoogleHttpClient;

    invoke-static {v3}, Lcom/google/android/music/dl/DownloadUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-direct {v6, v3, v14, v15}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 165
    .local v6, httpClient:Lcom/google/android/common/http/GoogleHttpClient;
    :try_start_37
    const-string v15, "GPlusShareMusic"

    sget-boolean v14, Lcom/google/android/music/DebugUtils;->AUTO_LOG_ALL:Z

    if-eqz v14, :cond_d1

    const/4 v14, 0x3

    :goto_3e
    invoke-virtual {v6, v15, v14}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    #getter for: Lcom/google/android/music/GPlusShareActivity;->mStreamingAccount:Landroid/accounts/Account;
    invoke-static {v14}, Lcom/google/android/music/GPlusShareActivity;->access$300(Lcom/google/android/music/GPlusShareActivity;)Landroid/accounts/Account;

    move-result-object v14

    invoke-virtual {v9, v14}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthToken(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, authToken:Ljava/lang/String;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    const-string v14, "https://music.google.com/music/sharepreview?storeId=%s&source=music-mobile&u=0"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    move-object/from16 v17, v0

    #getter for: Lcom/google/android/music/GPlusShareActivity;->mStoreId:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/google/android/music/GPlusShareActivity;->access$400(Lcom/google/android/music/GPlusShareActivity;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 170
    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    const-string v14, "Authorization"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "GoogleLogin auth="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v14, "X-Device-Logging-ID"

    invoke-virtual {v5, v14, v8}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v14, "X-Device-ID"

    invoke-virtual {v5, v14, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v6, v5}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 175
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 176
    .local v13, status:I
    const/16 v14, 0xc8

    if-lt v13, v14, :cond_d4

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_d4

    .line 177
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-static {v14}, Lcom/google/android/music/SharePreviewResponse;->parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/SharePreviewResponse;

    move-result-object v12

    .line 180
    .local v12, sharePreview:Lcom/google/android/music/SharePreviewResponse;
    invoke-static {}, Lcom/google/android/music/GPlusShareActivity;->access$500()Z

    move-result v14

    if-eqz v14, :cond_cd

    .line 181
    const-string v14, "GPlusShareMusic"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got share url: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v12, Lcom/google/android/music/SharePreviewResponse;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_37 .. :try_end_cd} :catchall_141
    .catch Landroid/accounts/AuthenticatorException; {:try_start_37 .. :try_end_cd} :catch_11d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_cd} :catch_133

    .line 199
    :cond_cd
    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 201
    .end local v2           #authToken:Ljava/lang/String;
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #sharePreview:Lcom/google/android/music/SharePreviewResponse;
    .end local v13           #status:I
    :goto_d0
    return-object v12

    .line 165
    :cond_d1
    const/4 v14, 0x2

    goto/16 :goto_3e

    .line 185
    .restart local v2       #authToken:Ljava/lang/String;
    .restart local v5       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #status:I
    :cond_d4
    :try_start_d4
    const-string v14, "GPlusShareMusic"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Got invalid response from server: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/InputStreamReader;

    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 189
    .local v10, reader:Ljava/io/BufferedReader;
    :goto_fe
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    if-eqz v7, :cond_12c

    .line 190
    const-string v14, "GPlusShareMusic"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Response: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_d4 .. :try_end_11c} :catchall_141
    .catch Landroid/accounts/AuthenticatorException; {:try_start_d4 .. :try_end_11c} :catch_11d
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_11c} :catch_133

    goto :goto_fe

    .line 194
    .end local v2           #authToken:Ljava/lang/String;
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #line:Ljava/lang/String;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #status:I
    :catch_11d
    move-exception v4

    .line 195
    .local v4, e:Landroid/accounts/AuthenticatorException;
    :try_start_11e
    const-string v14, "GPlusShareMusic"

    invoke-virtual {v4}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_127
    .catchall {:try_start_11e .. :try_end_127} :catchall_141

    .line 199
    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 201
    .end local v4           #e:Landroid/accounts/AuthenticatorException;
    :goto_12a
    const/4 v12, 0x0

    goto :goto_d0

    .line 192
    .restart local v2       #authToken:Ljava/lang/String;
    .restart local v5       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v7       #line:Ljava/lang/String;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v13       #status:I
    :cond_12c
    :try_start_12c
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_141
    .catch Landroid/accounts/AuthenticatorException; {:try_start_12c .. :try_end_12f} :catch_11d
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_12f} :catch_133

    .line 199
    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto :goto_12a

    .line 196
    .end local v2           #authToken:Ljava/lang/String;
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v7           #line:Ljava/lang/String;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v13           #status:I
    :catch_133
    move-exception v4

    .line 197
    .local v4, e:Ljava/io/IOException;
    :try_start_134
    const-string v14, "GPlusShareMusic"

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13d
    .catchall {:try_start_134 .. :try_end_13d} :catchall_141

    .line 199
    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    goto :goto_12a

    .end local v4           #e:Ljava/io/IOException;
    :catchall_141
    move-exception v14

    invoke-virtual {v6}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    throw v14
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 137
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :pswitch_20
    invoke-direct {p0}, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->createShareUrl()Lcom/google/android/music/SharePreviewResponse;

    move-result-object v0

    .line 140
    .local v0, shareUrl:Lcom/google/android/music/SharePreviewResponse;
    iget-object v1, p0, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;->this$0:Lcom/google/android/music/GPlusShareActivity;

    new-instance v2, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker$1;-><init>(Lcom/google/android/music/GPlusShareActivity$AsyncShareWorker;Lcom/google/android/music/SharePreviewResponse;)V

    invoke-virtual {v1, v2}, Lcom/google/android/music/GPlusShareActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    return-void

    .line 137
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_20
    .end packed-switch
.end method
