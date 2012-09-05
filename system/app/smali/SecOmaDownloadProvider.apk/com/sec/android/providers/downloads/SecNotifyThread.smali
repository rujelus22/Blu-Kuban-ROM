.class public Lcom/sec/android/providers/downloads/SecNotifyThread;
.super Ljava/lang/Thread;
.source "SecNotifyThread.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/providers/downloads/SecDownloadInfo;Landroid/content/Context;)V
    .registers 3
    .parameter "info"
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    .line 39
    iput-object p2, p0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public UpdateNotificatonFailStatus(Landroid/net/Uri;Lcom/sec/android/providers/downloads/SecDownloadHttpClient;)V
    .registers 8
    .parameter "contentUri"
    .parameter "client"

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xa

    .line 183
    if-eqz p2, :cond_8

    .line 184
    invoke-virtual {p2}, Lcom/sec/android/providers/downloads/SecDownloadHttpClient;->close()V

    .line 186
    :cond_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v0, values:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v1, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 190
    const-string v1, "state"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    :goto_22
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 209
    return-void

    .line 194
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    iget v1, v1, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    invoke-static {v1}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 200
    const-string v1, "state"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_22

    .line 204
    :cond_40
    const-string v1, "SecDownloader"

    const-string v2, "SecNotifyThread : UpdateNotificatonFailStatus : UpdateHandleStatus : Download Status Incorrect"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v1, "state"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_22
.end method

.method public run()V
    .registers 22

    .prologue
    .line 43
    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->setThreadPriority(I)V

    .line 44
    const/4 v8, 0x0

    .line 45
    .local v8, client:Lcom/sec/android/providers/downloads/SecDownloadHttpClient;
    const/4 v15, 0x1

    .line 50
    .local v15, statusfail:Z
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 53
    .local v9, contentUri:Landroid/net/Uri;
    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUserAgent:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 54
    .local v16, userAgent:Ljava/lang/String;
    if-nez v16, :cond_40

    .line 55
    const-string v16, "AndroidDownloadManager"

    .line 57
    :cond_40
    invoke-static/range {v16 .. v16}, Lcom/sec/android/providers/downloads/SecDownloadHttpClient;->newInstance(Ljava/lang/String;)Lcom/sec/android/providers/downloads/SecDownloadHttpClient;

    move-result-object v8

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/providers/downloads/SecHelpers;->isNetworkAvailable(Landroid/content/Context;)Z
    :try_end_4d
    .catchall {:try_start_30 .. :try_end_4d} :catchall_26c
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_4d} :catch_22e

    move-result v18

    if-nez v18, :cond_5c

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    .line 172
    .end local v16           #userAgent:Ljava/lang/String;
    :goto_56
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/sec/android/providers/downloads/SecNotifyThread;->UpdateNotificatonFailStatus(Landroid/net/Uri;Lcom/sec/android/providers/downloads/SecDownloadHttpClient;)V

    .line 179
    :cond_5b
    return-void

    .line 68
    .restart local v16       #userAgent:Ljava/lang/String;
    :cond_5c
    :try_start_5c
    new-instance v5, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 69
    .local v5, MainUrl:Ljava/net/URI;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v4

    .line 70
    .local v4, AbsoluteUri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_84
    .catchall {:try_start_5c .. :try_end_84} :catchall_26c
    .catch Ljava/net/URISyntaxException; {:try_start_5c .. :try_end_84} :catch_102
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_84} :catch_13b
    .catch Ljava/lang/RuntimeException; {:try_start_5c .. :try_end_84} :catch_22e

    move-result-object v7

    .line 86
    .local v7, RequestUrl:Ljava/lang/String;
    :try_start_85
    new-instance v12, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v12, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_26c
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_8a} :catch_22e

    .line 90
    .local v12, request:Lorg/apache/http/client/methods/HttpPost;
    :try_start_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/providers/downloads/SecHelpers;->getStatusText(I)Ljava/lang/String;

    move-result-object v6

    .line 91
    .local v6, NotifyMessage:Ljava/lang/String;
    new-instance v18, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_a6
    .catchall {:try_start_8a .. :try_end_a6} :catchall_26c
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8a .. :try_end_a6} :catch_174
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_a6} :catch_22e

    .line 106
    :try_start_a6
    invoke-virtual {v8, v12}, Lcom/sec/android/providers/downloads/SecDownloadHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_26c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a6 .. :try_end_a9} :catch_1a5
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a9} :catch_1de
    .catch Ljava/lang/RuntimeException; {:try_start_a6 .. :try_end_a9} :catch_22e

    move-result-object v13

    .line 119
    .local v13, response:Lorg/apache/http/HttpResponse;
    :try_start_aa
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 121
    .local v14, statusCode:I
    if-eqz v8, :cond_b8

    .line 122
    invoke-virtual {v8}, Lcom/sec/android/providers/downloads/SecDownloadHttpClient;->close()V

    .line 123
    const/4 v8, 0x0

    .line 125
    :cond_b8
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v0, v14, :cond_279

    .line 126
    const/4 v15, 0x0

    .line 127
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 132
    .local v17, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v18

    if-eqz v18, :cond_20f

    .line 133
    const-string v18, "state"

    const/16 v19, 0x9

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    :goto_e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    goto/16 :goto_56

    .line 71
    .end local v4           #AbsoluteUri:Ljava/net/URI;
    .end local v5           #MainUrl:Ljava/net/URI;
    .end local v6           #NotifyMessage:Ljava/lang/String;
    .end local v7           #RequestUrl:Ljava/lang/String;
    .end local v12           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #statusCode:I
    .end local v17           #values:Landroid/content/ContentValues;
    :catch_102
    move-exception v10

    .line 72
    .local v10, e:Ljava/net/URISyntaxException;
    const-string v18, "SecDownloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SecNotifyThread : run : URI Syntax Error:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    goto/16 :goto_56

    .line 76
    .end local v10           #e:Ljava/net/URISyntaxException;
    :catch_13b
    move-exception v10

    .line 77
    .local v10, e:Ljava/lang/Exception;
    const-string v18, "SecDownloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SecNotifyThread : run : Exception:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    goto/16 :goto_56

    .line 92
    .end local v10           #e:Ljava/lang/Exception;
    .restart local v4       #AbsoluteUri:Ljava/net/URI;
    .restart local v5       #MainUrl:Ljava/net/URI;
    .restart local v7       #RequestUrl:Ljava/lang/String;
    .restart local v12       #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_174
    move-exception v10

    .line 93
    .local v10, e:Ljava/io/UnsupportedEncodingException;
    const-string v18, "SecDownloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SecNotifyThread : run : Unsupported Encoding for the URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    goto/16 :goto_56

    .line 107
    .end local v10           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v6       #NotifyMessage:Ljava/lang/String;
    :catch_1a5
    move-exception v11

    .line 108
    .local v11, ex:Ljava/lang/IllegalArgumentException;
    const-string v18, "SecDownloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SecNotifyThread : run : Illegal Arg Exception trying to execute request for: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    goto/16 :goto_56

    .line 113
    .end local v11           #ex:Ljava/lang/IllegalArgumentException;
    :catch_1de
    move-exception v11

    .line 114
    .local v11, ex:Ljava/io/IOException;
    const-string v18, "SecDownloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SecNotifyThread : run : Request Execute Failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    goto/16 :goto_56

    .line 138
    .end local v11           #ex:Ljava/io/IOException;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #statusCode:I
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_20f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mStatus:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/provider/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v18

    if-eqz v18, :cond_25f

    .line 143
    const-string v18, "state"

    const/16 v19, 0xa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_22c
    .catchall {:try_start_aa .. :try_end_22c} :catchall_26c
    .catch Ljava/lang/RuntimeException; {:try_start_aa .. :try_end_22c} :catch_22e

    goto/16 :goto_e1

    .line 165
    .end local v4           #AbsoluteUri:Ljava/net/URI;
    .end local v5           #MainUrl:Ljava/net/URI;
    .end local v6           #NotifyMessage:Ljava/lang/String;
    .end local v7           #RequestUrl:Ljava/lang/String;
    .end local v12           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #statusCode:I
    .end local v16           #userAgent:Ljava/lang/String;
    .end local v17           #values:Landroid/content/ContentValues;
    :catch_22e
    move-exception v11

    .line 166
    .local v11, ex:Ljava/lang/RuntimeException;
    :try_start_22f
    const-string v18, "SecDownloader"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SecNotifyThread : run : Exception for the URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecNotifyThread;->mInfo:Lcom/sec/android/providers/downloads/SecDownloadInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/providers/downloads/SecDownloadInfo;->mNotifyURI:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_257
    .catchall {:try_start_22f .. :try_end_257} :catchall_26c

    .line 171
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    goto/16 :goto_56

    .line 150
    .end local v11           #ex:Ljava/lang/RuntimeException;
    .restart local v4       #AbsoluteUri:Ljava/net/URI;
    .restart local v5       #MainUrl:Ljava/net/URI;
    .restart local v6       #NotifyMessage:Ljava/lang/String;
    .restart local v7       #RequestUrl:Ljava/lang/String;
    .restart local v12       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #statusCode:I
    .restart local v16       #userAgent:Ljava/lang/String;
    .restart local v17       #values:Landroid/content/ContentValues;
    :cond_25f
    :try_start_25f
    const-string v18, "state"

    const/16 v19, 0xa

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_26a
    .catchall {:try_start_25f .. :try_end_26a} :catchall_26c
    .catch Ljava/lang/RuntimeException; {:try_start_25f .. :try_end_26a} :catch_22e

    goto/16 :goto_e1

    .line 171
    .end local v4           #AbsoluteUri:Ljava/net/URI;
    .end local v5           #MainUrl:Ljava/net/URI;
    .end local v6           #NotifyMessage:Ljava/lang/String;
    .end local v7           #RequestUrl:Ljava/lang/String;
    .end local v12           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #statusCode:I
    .end local v16           #userAgent:Ljava/lang/String;
    .end local v17           #values:Landroid/content/ContentValues;
    :catchall_26c
    move-exception v18

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v0, v15, :cond_278

    .line 172
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8}, Lcom/sec/android/providers/downloads/SecNotifyThread;->UpdateNotificatonFailStatus(Landroid/net/Uri;Lcom/sec/android/providers/downloads/SecDownloadHttpClient;)V

    .line 171
    :cond_278
    throw v18

    .restart local v4       #AbsoluteUri:Ljava/net/URI;
    .restart local v5       #MainUrl:Ljava/net/URI;
    .restart local v6       #NotifyMessage:Ljava/lang/String;
    .restart local v7       #RequestUrl:Ljava/lang/String;
    .restart local v12       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #statusCode:I
    .restart local v16       #userAgent:Ljava/lang/String;
    :cond_279
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v15, :cond_5b

    goto/16 :goto_56
.end method
