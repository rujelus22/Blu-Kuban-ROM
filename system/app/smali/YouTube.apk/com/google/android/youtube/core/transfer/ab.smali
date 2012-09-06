.class public final Lcom/google/android/youtube/core/transfer/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/m;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Lcom/google/android/youtube/core/Analytics;

.field private final e:Lorg/apache/http/client/HttpClient;

.field private final f:Lcom/google/android/youtube/core/b/ae;

.field private final g:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final h:Lcom/google/android/youtube/core/transfer/Transfer;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/youtube/core/converter/http/ef;

.field private final k:Lcom/google/android/youtube/core/transfer/n;

.field private final l:Ljava/util/concurrent/Executor;

.field private final m:Ljava/lang/Object;

.field private volatile n:Z

.field private volatile o:Lorg/apache/http/client/methods/HttpUriRequest;

.field private volatile p:Z

.field private q:J

.field private r:J

.field private final s:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 95
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/transfer/ab;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/b/ae;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/converter/http/ef;Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/n;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->b:Landroid/content/Context;

    .line 134
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->c:Landroid/app/NotificationManager;

    .line 136
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->e:Lorg/apache/http/client/HttpClient;

    .line 137
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->l:Ljava/util/concurrent/Executor;

    .line 138
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/b/ae;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->f:Lcom/google/android/youtube/core/b/ae;

    .line 139
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 140
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->d:Lcom/google/android/youtube/core/Analytics;

    .line 141
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/ef;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->j:Lcom/google/android/youtube/core/converter/http/ef;

    .line 142
    invoke-static {p8}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 143
    iget-object v0, p8, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->i:Ljava/lang/String;

    .line 144
    invoke-static {p9}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/n;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->m:Ljava/lang/Object;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/ab;->n:Z

    .line 147
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->s:Landroid/os/ConditionVariable;

    .line 148
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/ab;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/google/android/youtube/core/transfer/ab;->r:J

    return-wide p1
.end method

.method private a(Ljava/io/File;JZ)Lorg/apache/http/HttpResponse;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/ab;->p:Z

    if-eqz v0, :cond_6

    .line 258
    const/4 v0, 0x0

    .line 301
    :goto_5
    return-object v0

    .line 260
    :cond_6
    const-wide/16 v0, 0x1

    add-long v3, p2, v0

    .line 261
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    const-wide/16 v5, 0x1

    sub-long v1, v0, v5

    if-eqz p4, :cond_2d

    const/4 v0, 0x0

    :goto_13
    int-to-long v5, v0

    sub-long v0, v1, v5

    .line 263
    if-nez p4, :cond_2f

    cmp-long v2, v3, v0

    if-lez v2, :cond_2f

    .line 264
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v3, 0x134

    const-string v4, "Already uploaded all possible content for a gated upload."

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    goto :goto_5

    .line 261
    :cond_2d
    const/4 v0, 0x1

    goto :goto_13

    .line 268
    :cond_2f
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v5, v5, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v2, v5, p2, p3}, Lcom/google/android/youtube/core/transfer/n;->b(Ljava/lang/String;J)V

    .line 269
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v5, v5, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    invoke-interface {v2, v5, v6, v7}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;J)V

    .line 271
    new-instance v7, Lorg/apache/http/client/methods/HttpPut;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    invoke-direct {v7, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 272
    const-string v2, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-virtual {v7, v2, v5}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "Content-Range"

    const-string v5, "bytes %d-%d/%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v0, 0x2

    iget-wide v8, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :try_start_78
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 279
    invoke-virtual {v2, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_96

    .line 280
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "unable to skip to upload position"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_8e} :catch_8e

    .line 282
    :catch_8e
    move-exception v0

    .line 283
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v1

    .line 287
    :cond_96
    :try_start_96
    new-instance v0, Lcom/google/android/youtube/core/transfer/ad;

    iget-wide v5, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    sub-long v3, v5, v3

    if-eqz p4, :cond_b9

    const/4 v1, 0x0

    :goto_9f
    int-to-long v5, v1

    sub-long/2addr v3, v5

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/transfer/ad;-><init>(Lcom/google/android/youtube/core/transfer/ab;Ljava/io/InputStream;JJ)V

    .line 289
    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 290
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_ac
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_96 .. :try_end_ac} :catch_be
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ac} :catch_c9

    .line 291
    :try_start_ac
    iput-object v7, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 292
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_bb

    .line 293
    :try_start_af
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->e:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto/16 :goto_5

    .line 287
    :cond_b9
    const/4 v1, 0x1

    goto :goto_9f

    .line 292
    :catchall_bb
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_be
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_af .. :try_end_be} :catch_be
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_be} :catch_c9

    .line 294
    :catch_be
    move-exception v0

    .line 295
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/ab;->c()V

    .line 296
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v1

    .line 297
    :catch_c9
    move-exception v0

    .line 298
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    :try_start_cd
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 300
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 301
    const/4 v0, 0x0

    monitor-exit v1

    goto/16 :goto_5

    .line 305
    :catchall_dc
    move-exception v0

    monitor-exit v1
    :try_end_de
    .catchall {:try_start_cd .. :try_end_de} :catchall_dc

    throw v0

    .line 303
    :cond_df
    :try_start_df
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 304
    new-instance v2, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v2
    :try_end_eb
    .catchall {:try_start_df .. :try_end_eb} :catchall_dc
.end method

.method private a(Lcom/google/android/youtube/core/model/Video;)V
    .registers 13
    .parameter

    .prologue
    const v6, 0x7f0b0038

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 477
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v2, :cond_11

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v2, :cond_23

    :cond_11
    move v0, v1

    .line 478
    :goto_12
    const/16 v2, 0xa

    if-ge v0, v2, :cond_cf

    add-int/lit8 v2, v0, 0x1

    const-wide/16 v3, 0x7530

    :try_start_1a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_db

    :goto_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/ab;->d()Lcom/google/android/youtube/core/model/UserAuth;
    :try_end_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1d .. :try_end_20} :catch_c5

    move-result-object v0

    if-nez v0, :cond_a0

    .line 481
    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/ab;->d()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    if-eqz v0, :cond_9f

    .line 482
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->b:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->b:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://www.youtube.com/watch?v="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/ab;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v8, 0x1000

    or-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v7, "authenticate"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "uploader_notification"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v7, "referrer"

    sget-object v8, Lcom/google/android/youtube/core/b/ak;->a:Lcom/google/android/youtube/core/b/aj;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/b/aj;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/ab;->b:Landroid/content/Context;

    const/high16 v8, 0x4000

    invoke-static {v7, v1, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v6, Landroid/app/Notification;

    const v7, 0x7f020101

    invoke-direct {v6, v7, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->b:Landroid/content/Context;

    invoke-virtual {v6, v0, v2, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v0, 0x10

    iput v0, v6, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->c:Landroid/app/NotificationManager;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v10, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 484
    :cond_9f
    return-void

    .line 478
    :cond_a0
    :try_start_a0
    new-instance v3, Lcom/google/android/youtube/core/async/av;

    invoke-direct {v3}, Lcom/google/android/youtube/core/async/av;-><init>()V

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/ab;->f:Lcom/google/android/youtube/core/b/ae;

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v3}, Lcom/google/android/youtube/core/b/ae;->b(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    invoke-virtual {v3}, Lcom/google/android/youtube/core/async/av;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v4, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v3, v4, :cond_cc

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->streams:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_cc

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_c3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a0 .. :try_end_c3} :catch_c5

    goto/16 :goto_23

    :catch_c5
    move-exception v0

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    move v0, v2

    goto/16 :goto_12

    :cond_cc
    move v0, v2

    goto/16 :goto_12

    :cond_cf
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadTranscodingWaitAbort"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    goto/16 :goto_23

    :catch_db
    move-exception v0

    goto/16 :goto_1d
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/ab;)V
    .registers 1
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/ab;->c()V

    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .parameter

    .prologue
    .line 348
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_9

    .line 350
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 352
    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/ab;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->m:Ljava/lang/Object;

    return-object v0
.end method

.method private b()Lorg/apache/http/HttpResponse;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 310
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 311
    const-string v1, "Content-Range"

    const-string v2, "bytes */*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_14
    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 314
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_20

    .line 316
    :try_start_17
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->e:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_17 .. :try_end_1e} :catch_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_2d

    move-result-object v0

    .line 324
    :goto_1f
    return-object v0

    .line 314
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    .line 317
    :catch_23
    move-exception v0

    .line 318
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/ab;->c()V

    .line 319
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-direct {v1, v0, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v1

    .line 320
    :catch_2d
    move-exception v0

    .line 321
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_31
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 323
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 324
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1f

    .line 328
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw v0

    .line 326
    :cond_42
    :try_start_42
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 327
    new-instance v2, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v2
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_3f
.end method

.method private b(Lorg/apache/http/HttpResponse;)V
    .registers 17
    .parameter

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/n;->b(Ljava/lang/String;J)V

    .line 427
    :try_start_b
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->j:Lcom/google/android/youtube/core/converter/http/ef;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/converter/http/ef;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    move-object v11, v0

    .line 428
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v2, "metadata_updated"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;)Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_20} :catch_d0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_b .. :try_end_20} :catch_e8

    move-result v1

    if-eqz v1, :cond_d8

    .line 429
    :try_start_23
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    new-instance v13, Lcom/google/android/youtube/core/async/av;

    invoke-direct {v13}, Lcom/google/android/youtube/core/async/av;-><init>()V

    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/ab;->d()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v12

    if-nez v12, :cond_6d

    const-string v1, "Error updating metadata, auth is null"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    :goto_36
    invoke-direct {p0, v11}, Lcom/google/android/youtube/core/transfer/ab;->a(Lcom/google/android/youtube/core/model/Video;)V
    :try_end_39
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_23 .. :try_end_39} :catch_c6
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_39} :catch_d0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_23 .. :try_end_39} :catch_e8

    .line 439
    :goto_39
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->f:Lcom/google/android/youtube/core/b/ae;

    invoke-interface {v1}, Lcom/google/android/youtube/core/b/ae;->f()V

    .line 440
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v2, "upload_start_time_millis"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_f0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    :goto_56
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/ab;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v4, "UploadCompleted"

    const/4 v5, 0x0

    long-to-int v1, v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/d;

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/d;)V

    .line 442
    return-void

    .line 429
    :cond_6d
    :try_start_6d
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->f:Lcom/google/android/youtube/core/b/ae;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v3, "upload_title"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v4, "upload_description"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    iget-object v5, v11, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v6, v6, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v7, "upload_keywords"

    invoke-virtual {v6, v7}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v7, v7, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v8, "upload_privacy"

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/model/Video$Privacy;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v7

    iget-object v8, v11, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    iget-object v9, v11, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v10, v10, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v14, "upload_location"

    invoke-virtual {v10, v14}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v11, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-interface/range {v1 .. v13}, Lcom/google/android/youtube/core/b/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    invoke-virtual {v13}, Lcom/google/android/youtube/core/async/av;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/d;

    const-string v3, "video_id"

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6d .. :try_end_c3} :catch_c6
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_c3} :catch_d0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_6d .. :try_end_c3} :catch_e8

    move-object v11, v1

    goto/16 :goto_36

    :catch_c6
    move-exception v1

    :try_start_c7
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v2, "Error updating video metadata after upload"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v1
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_d0} :catch_d0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_c7 .. :try_end_d0} :catch_e8

    .line 434
    :catch_d0
    move-exception v1

    .line 435
    const-string v2, "error parsing uploaded video"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 431
    :cond_d8
    :try_start_d8
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/d;

    const-string v2, "video_id"

    iget-object v3, v11, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, v11}, Lcom/google/android/youtube/core/transfer/ab;->a(Lcom/google/android/youtube/core/model/Video;)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_e6} :catch_d0
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_d8 .. :try_end_e6} :catch_e8

    goto/16 :goto_39

    .line 436
    :catch_e8
    move-exception v1

    .line 437
    const-string v2, "error parsing uploaded video"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 440
    :cond_f0
    const-wide/16 v1, -0x1

    goto/16 :goto_56
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/ab;)J
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    return-wide v0
.end method

.method private c()V
    .registers 7

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 338
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v4, "metadata_updated"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :goto_13
    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 340
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-wide v4, p0, Lcom/google/android/youtube/core/transfer/ab;->r:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_2c

    .line 342
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 344
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_30

    return-void

    .line 338
    :cond_2e
    const/4 v0, 0x2

    goto :goto_13

    .line 344
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Lcom/google/android/youtube/core/model/UserAuth;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 401
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->i:Ljava/lang/String;

    if-nez v1, :cond_b

    .line 402
    const-string v1, "null user auth due to null accountName"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 420
    :goto_a
    return-object v0

    .line 405
    :cond_b
    new-instance v1, Lcom/google/android/youtube/core/async/au;

    invoke-direct {v1}, Lcom/google/android/youtube/core/async/au;-><init>()V

    .line 406
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    .line 408
    :try_start_15
    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/au;->b()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v1

    .line 409
    if-nez v1, :cond_28

    .line 410
    const-string v1, "authentication produced a null user auth"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_15 .. :try_end_20} :catch_21

    goto :goto_a

    .line 418
    :catch_21
    move-exception v1

    .line 419
    const-string v2, "exception during authentication"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 413
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->i:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 414
    const-string v1, "authentication produced user auth for a different account"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_28 .. :try_end_37} :catch_21

    goto :goto_a

    :cond_38
    move-object v0, v1

    .line 417
    goto :goto_a
.end method

.method static synthetic d(Lcom/google/android/youtube/core/transfer/ab;)Lcom/google/android/youtube/core/transfer/Transfer;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/transfer/ab;)Lcom/google/android/youtube/core/transfer/n;
    .registers 2
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/ab;->p:Z

    .line 176
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/ab;->n:Z

    if-nez v0, :cond_11

    .line 177
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/transfer/ac;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/transfer/ac;-><init>(Lcom/google/android/youtube/core/transfer/ab;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 179
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 180
    return-void
.end method

.method public final run()V
    .registers 10

    .prologue
    const/16 v8, 0x134

    const/16 v7, 0xc9

    const/16 v6, 0xc8

    .line 152
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload starting ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 153
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/ab;->p:Z

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Upload cancelled before the task started ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_58
    .catchall {:try_start_6 .. :try_end_58} :catchall_1a6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_58} :catch_76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_58} :catch_a0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_58} :catch_e8
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_6 .. :try_end_58} :catch_163

    .line 170
    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 171
    :goto_5d
    return-void

    .line 153
    :cond_5e
    :try_start_5e
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_91

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "file not found"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_76
    .catchall {:try_start_5e .. :try_end_76} :catchall_1a6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_5e .. :try_end_76} :catch_76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5e .. :try_end_76} :catch_a0
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_76} :catch_e8
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_5e .. :try_end_76} :catch_163

    .line 154
    :catch_76
    move-exception v0

    .line 155
    :try_start_77
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_8b
    .catchall {:try_start_77 .. :try_end_8b} :catchall_1a6

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_5d

    .line 153
    :cond_91
    :try_start_91
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c6

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "file is a directory"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_a0
    .catchall {:try_start_91 .. :try_end_a0} :catchall_1a6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_91 .. :try_end_a0} :catch_76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_91 .. :try_end_a0} :catch_a0
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a0} :catch_e8
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_91 .. :try_end_a0} :catch_163

    .line 157
    :catch_a0
    move-exception v0

    .line 158
    :try_start_a1
    const-string v1, "FATAL failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadFatalError"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_c0
    .catchall {:try_start_a1 .. :try_end_c0} :catchall_1a6

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_5d

    .line 153
    :cond_c6
    :try_start_c6
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    invoke-interface {v0, v1, v3, v4}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_10f

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "file is empty"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_e8
    .catchall {:try_start_c6 .. :try_end_e8} :catchall_1a6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_c6 .. :try_end_e8} :catch_76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c6 .. :try_end_e8} :catch_a0
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_e8} :catch_e8
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_c6 .. :try_end_e8} :catch_163

    .line 161
    :catch_e8
    move-exception v0

    .line 162
    :try_start_e9
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadError"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_108
    .catchall {:try_start_e9 .. :try_end_108} :catchall_1a6

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_5d

    .line 153
    :cond_10f
    :try_start_10f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/ab;->p:Z

    if-nez v0, :cond_58

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/ab;->n:Z

    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/ab;->b()Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/ab;->p:Z

    if-nez v1, :cond_58

    if-eqz v0, :cond_58

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    if-ne v1, v8, :cond_1f9

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/ab;->a(Lorg/apache/http/HttpResponse;)V

    const-string v1, "range"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_184

    const-wide/16 v0, -0x1

    :goto_137
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/ab;->m:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13a
    .catchall {:try_start_10f .. :try_end_13a} :catchall_1a6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_10f .. :try_end_13a} :catch_76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_10f .. :try_end_13a} :catch_a0
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_13a} :catch_e8
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_10f .. :try_end_13a} :catch_163

    :try_start_13a
    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/ab;->r:J

    monitor-exit v3
    :try_end_13d
    .catchall {:try_start_13a .. :try_end_13d} :catchall_1b7

    :try_start_13d
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v4, "metadata_updated"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/youtube/core/transfer/ab;->a(Ljava/io/File;JZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/ab;->p:Z

    if-nez v1, :cond_58

    if-eqz v0, :cond_58

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    if-eq v1, v6, :cond_15e

    if-ne v1, v7, :cond_1ba

    :cond_15e
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/ab;->b(Lorg/apache/http/HttpResponse;)V
    :try_end_161
    .catchall {:try_start_13d .. :try_end_161} :catchall_1a6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_13d .. :try_end_161} :catch_76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_13d .. :try_end_161} :catch_a0
    .catch Ljava/io/IOException; {:try_start_13d .. :try_end_161} :catch_e8
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_13d .. :try_end_161} :catch_163

    goto/16 :goto_58

    .line 165
    :catch_163
    move-exception v0

    .line 166
    :try_start_164
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadError"

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->k:Lcom/google/android/youtube/core/transfer/n;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/transfer/n;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_17d
    .catchall {:try_start_164 .. :try_end_17d} :catchall_1a6

    .line 170
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_5d

    .line 153
    :cond_184
    :try_start_184
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/transfer/ab;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1ad

    new-instance v1, Ljava/io/IOException;

    const-string v2, "malformed range header=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1a6
    .catchall {:try_start_184 .. :try_end_1a6} :catchall_1a6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_184 .. :try_end_1a6} :catch_76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_184 .. :try_end_1a6} :catch_a0
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_1a6} :catch_e8
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_184 .. :try_end_1a6} :catch_163

    .line 170
    :catchall_1a6
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/ab;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0

    .line 153
    :cond_1ad
    const/4 v0, 0x2

    :try_start_1ae
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_137

    :catchall_1b7
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1ba
    if-ne v1, v8, :cond_1e0

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/ab;->a(Lorg/apache/http/HttpResponse;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/ab;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/d;

    const-string v1, "metadata_updated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/d;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/ab;->r:J

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/ab;->q:J

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_58

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "upload request got http status: 308"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_1e0
    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/ab;->a(Lorg/apache/http/HttpResponse;)V

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "upload request got http status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_1f9
    if-eq v1, v6, :cond_1fd

    if-ne v1, v7, :cond_202

    :cond_1fd
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/ab;->b(Lorg/apache/http/HttpResponse;)V

    goto/16 :goto_58

    :cond_202
    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/ab;->a(Lorg/apache/http/HttpResponse;)V

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "range request got http status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_21b
    .catchall {:try_start_1ae .. :try_end_21b} :catchall_1a6
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1ae .. :try_end_21b} :catch_76
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1ae .. :try_end_21b} :catch_a0
    .catch Ljava/io/IOException; {:try_start_1ae .. :try_end_21b} :catch_e8
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_1ae .. :try_end_21b} :catch_163
.end method
