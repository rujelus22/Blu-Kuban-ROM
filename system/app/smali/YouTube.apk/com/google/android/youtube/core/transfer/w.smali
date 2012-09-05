.class public final Lcom/google/android/youtube/core/transfer/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/h;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/NotificationManager;

.field private final d:Lcom/google/android/youtube/core/Analytics;

.field private final e:Lorg/apache/http/client/HttpClient;

.field private final f:Lcom/google/android/youtube/core/client/ad;

.field private final g:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private final h:Lcom/google/android/youtube/core/transfer/Transfer;

.field private final i:Ljava/lang/String;

.field private final j:Lcom/google/android/youtube/core/converter/http/df;

.field private final k:Lcom/google/android/youtube/core/transfer/i;

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
    .line 97
    const-string v0, "bytes=(\\d+)-(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/transfer/w;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lorg/apache/http/client/HttpClient;Lcom/google/android/youtube/core/client/ad;Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/converter/http/df;Lcom/google/android/youtube/core/transfer/Transfer;Lcom/google/android/youtube/core/transfer/i;)V
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
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->b:Landroid/content/Context;

    .line 136
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->c:Landroid/app/NotificationManager;

    .line 138
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->e:Lorg/apache/http/client/HttpClient;

    .line 139
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->l:Ljava/util/concurrent/Executor;

    .line 140
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/client/ad;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->f:Lcom/google/android/youtube/core/client/ad;

    .line 141
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    .line 142
    invoke-static {p6}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/Analytics;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->d:Lcom/google/android/youtube/core/Analytics;

    .line 143
    invoke-static {p7}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/df;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->j:Lcom/google/android/youtube/core/converter/http/df;

    .line 144
    invoke-static {p8}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    .line 145
    iget-object v0, p8, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->i:Ljava/lang/String;

    .line 146
    invoke-static {p9}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/i;

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    .line 147
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->m:Ljava/lang/Object;

    .line 148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/w;->n:Z

    .line 149
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->s:Landroid/os/ConditionVariable;

    .line 150
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/w;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/google/android/youtube/core/transfer/w;->r:J

    return-wide p1
.end method

.method private a(Ljava/io/File;JZ)Lorg/apache/http/HttpResponse;
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/w;->p:Z

    if-eqz v0, :cond_6

    .line 260
    const/4 v0, 0x0

    .line 303
    :goto_5
    return-object v0

    .line 262
    :cond_6
    const-wide/16 v0, 0x1

    add-long v3, p2, v0

    .line 263
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    const-wide/16 v5, 0x1

    sub-long v1, v0, v5

    if-eqz p4, :cond_2d

    const/4 v0, 0x0

    :goto_13
    int-to-long v5, v0

    sub-long v0, v1, v5

    .line 265
    if-nez p4, :cond_2f

    cmp-long v2, v3, v0

    if-lez v2, :cond_2f

    .line 266
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v1, Lorg/apache/http/message/BasicStatusLine;

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    const/16 v3, 0x134

    const-string v4, "Already uploaded all possible content for a gated upload."

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/message/BasicStatusLine;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    goto :goto_5

    .line 263
    :cond_2d
    const/4 v0, 0x1

    goto :goto_13

    .line 270
    :cond_2f
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v5, v5, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v2, v5, p2, p3}, Lcom/google/android/youtube/core/transfer/i;->b(Ljava/lang/String;J)V

    .line 271
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v5, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v5, v5, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-wide v6, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    invoke-interface {v2, v5, v6, v7}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;J)V

    .line 273
    new-instance v7, Lorg/apache/http/client/methods/HttpPut;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    invoke-direct {v7, v2}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v2, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-virtual {v7, v2, v5}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
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

    iget-wide v8, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :try_start_78
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 281
    invoke-virtual {v2, v3, v4}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_96

    .line 282
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "unable to skip to upload position"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_8e} :catch_8e

    .line 284
    :catch_8e
    move-exception v0

    .line 285
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v1

    .line 289
    :cond_96
    :try_start_96
    new-instance v0, Lcom/google/android/youtube/core/transfer/y;

    iget-wide v5, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    sub-long v3, v5, v3

    if-eqz p4, :cond_b9

    const/4 v1, 0x0

    :goto_9f
    int-to-long v5, v1

    sub-long/2addr v3, v5

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/transfer/y;-><init>(Lcom/google/android/youtube/core/transfer/w;Ljava/io/InputStream;JJ)V

    .line 291
    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 292
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_ac
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_96 .. :try_end_ac} :catch_be
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_ac} :catch_c9

    .line 293
    :try_start_ac
    iput-object v7, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 294
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_bb

    .line 295
    :try_start_af
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->e:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto/16 :goto_5

    .line 289
    :cond_b9
    const/4 v1, 0x1

    goto :goto_9f

    .line 294
    :catchall_bb
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_be
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_af .. :try_end_be} :catch_be
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_be} :catch_c9

    .line 296
    :catch_be
    move-exception v0

    .line 297
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/w;->c()V

    .line 298
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v1

    .line 299
    :catch_c9
    move-exception v0

    .line 300
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_cd
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_df

    .line 302
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 303
    const/4 v0, 0x0

    monitor-exit v1

    goto/16 :goto_5

    .line 307
    :catchall_dc
    move-exception v0

    monitor-exit v1
    :try_end_de
    .catchall {:try_start_cd .. :try_end_de} :catchall_dc

    throw v0

    .line 305
    :cond_df
    :try_start_df
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 306
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
    const v6, 0x7f0a002c

    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 472
    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PLAYABLE:Lcom/google/android/youtube/core/model/Video$State;

    if-eq v0, v2, :cond_11

    iget-object v0, p1, Lcom/google/android/youtube/core/model/Video;->state:Lcom/google/android/youtube/core/model/Video$State;

    sget-object v2, Lcom/google/android/youtube/core/model/Video$State;->PROCESSING:Lcom/google/android/youtube/core/model/Video$State;

    if-ne v0, v2, :cond_23

    :cond_11
    move v0, v1

    .line 473
    :goto_12
    const/16 v2, 0xa

    if-ge v0, v2, :cond_dc

    add-int/lit8 v2, v0, 0x1

    const-wide/16 v3, 0x7530

    :try_start_1a
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_1d} :catch_e8

    :goto_1d
    :try_start_1d
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/w;->d()Lcom/google/android/youtube/core/model/UserAuth;
    :try_end_20
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1d .. :try_end_20} :catch_c3

    move-result-object v0

    if-nez v0, :cond_a4

    .line 476
    :cond_23
    :goto_23
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/w;->d()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 477
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->b:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->b:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www.youtube.com/watch?v="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/w;->b:Landroid/content/Context;

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

    sget-object v8, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->UPLOADER_NOTIFICATION:Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/client/DefaultVideoStatsClient$Referrers;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/w;->b:Landroid/content/Context;

    const/high16 v8, 0x4000

    invoke-static {v7, v1, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v6, Landroid/app/Notification;

    const v7, 0x7f0200b5

    invoke-direct {v6, v7, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->b:Landroid/content/Context;

    invoke-virtual {v6, v0, v2, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/16 v0, 0x10

    iput v0, v6, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->c:Landroid/app/NotificationManager;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v10, v6}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 479
    :cond_a3
    return-void

    .line 473
    :cond_a4
    :try_start_a4
    new-instance v3, Lcom/google/android/youtube/core/async/aj;

    invoke-direct {v3}, Lcom/google/android/youtube/core/async/aj;-><init>()V

    iget-object v4, p0, Lcom/google/android/youtube/core/transfer/w;->f:Lcom/google/android/youtube/core/client/ad;

    iget-object v5, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v3}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    invoke-virtual {v3}, Lcom/google/android/youtube/core/async/aj;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/u;

    iget-object v3, v0, Lcom/google/android/youtube/core/model/u;->b:Lcom/google/android/youtube/core/model/Stream;

    if-eqz v3, :cond_d3

    iget-object v0, v0, Lcom/google/android/youtube/core/model/u;->c:Lcom/google/android/youtube/core/model/Stream;

    if-eqz v0, :cond_d3

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_c1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a4 .. :try_end_c1} :catch_c3

    goto/16 :goto_23

    :catch_c3
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-nez v3, :cond_d6

    const-string v2, "Error polling streams for upload"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    :cond_d3
    move v0, v2

    goto/16 :goto_12

    :cond_d6
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    move v0, v2

    goto/16 :goto_12

    :cond_dc
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadTranscodingWaitAbort"

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/Analytics;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    goto/16 :goto_23

    :catch_e8
    move-exception v0

    goto/16 :goto_1d
.end method

.method static synthetic a(Lcom/google/android/youtube/core/transfer/w;)V
    .registers 1
    .parameter

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/w;->c()V

    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)V
    .registers 2
    .parameter

    .prologue
    .line 350
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_9

    .line 352
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 354
    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/transfer/w;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->m:Ljava/lang/Object;

    return-object v0
.end method

.method private b()Lorg/apache/http/HttpResponse;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 312
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .line 313
    const-string v1, "Content-Range"

    const-string v2, "bytes */*"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPut;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 315
    :try_start_14
    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 316
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_20

    .line 318
    :try_start_17
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->e:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_17 .. :try_end_1e} :catch_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1e} :catch_2d

    move-result-object v0

    .line 326
    :goto_1f
    return-object v0

    .line 316
    :catchall_20
    move-exception v0

    monitor-exit v1

    throw v0

    .line 319
    :catch_23
    move-exception v0

    .line 320
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/w;->c()V

    .line 321
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    invoke-direct {v1, v0, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v1

    .line 322
    :catch_2d
    move-exception v0

    .line 323
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_31
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 325
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 326
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_1f

    .line 330
    :catchall_3f
    move-exception v0

    monitor-exit v1
    :try_end_41
    .catchall {:try_start_31 .. :try_end_41} :catchall_3f

    throw v0

    .line 328
    :cond_42
    :try_start_42
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 329
    new-instance v2, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    throw v2
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_3f
.end method

.method private b(Lorg/apache/http/HttpResponse;)V
    .registers 16
    .parameter

    .prologue
    .line 425
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/i;->b(Ljava/lang/String;J)V

    .line 427
    :try_start_b
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->j:Lcom/google/android/youtube/core/converter/http/df;

    invoke-virtual {v1, p1}, Lcom/google/android/youtube/core/converter/http/df;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    move-object v11, v0

    .line 428
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v2, "metadata_updated"

    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;)Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_c4
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_b .. :try_end_1e} :catch_da

    move-result v1

    if-eqz v1, :cond_cb

    .line 429
    :try_start_21
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    new-instance v13, Lcom/google/android/youtube/core/async/aj;

    invoke-direct {v13}, Lcom/google/android/youtube/core/async/aj;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->f:Lcom/google/android/youtube/core/client/ad;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v3, "upload_title"

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v4, "upload_description"

    invoke-virtual {v3, v4}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Lcom/google/android/youtube/core/model/Video;->categoryTerm:Ljava/lang/String;

    iget-object v5, v11, Lcom/google/android/youtube/core/model/Video;->categoryLabel:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v6, v6, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v7, "upload_keywords"

    invoke-virtual {v6, v7}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v7, v7, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v8, "upload_privacy"

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/youtube/core/model/Video$Privacy;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v7

    iget-object v8, v11, Lcom/google/android/youtube/core/model/Video;->accessControl:Ljava/util/Map;

    iget-object v9, v11, Lcom/google/android/youtube/core/model/Video;->location:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v10, v10, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v12, "upload_location"

    invoke-virtual {v10, v12}, Lcom/google/android/youtube/core/transfer/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v11, Lcom/google/android/youtube/core/model/Video;->editUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/w;->d()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v12

    invoke-interface/range {v1 .. v13}, Lcom/google/android/youtube/core/client/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video$Privacy;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/g;)V

    invoke-virtual {v13}, Lcom/google/android/youtube/core/async/aj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Video;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/b;

    const-string v3, "video_id"

    iget-object v4, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/transfer/w;->a(Lcom/google/android/youtube/core/model/Video;)V
    :try_end_86
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_21 .. :try_end_86} :catch_ba
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_86} :catch_c4
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_21 .. :try_end_86} :catch_da

    .line 439
    :goto_86
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->f:Lcom/google/android/youtube/core/client/ad;

    invoke-interface {v1}, Lcom/google/android/youtube/core/client/ad;->d()V

    .line 440
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v2, "upload_start_time_millis"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_e1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v1, v3, v1

    :goto_a3
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/w;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v4, "UploadCompleted"

    const/4 v5, 0x0

    long-to-int v1, v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/b;

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/b;)V

    .line 442
    return-void

    .line 429
    :catch_ba
    move-exception v1

    :try_start_bb
    new-instance v1, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v2, "Error updating video metadata after upload"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v1
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c4} :catch_c4
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_bb .. :try_end_c4} :catch_da

    .line 434
    :catch_c4
    move-exception v1

    .line 435
    const-string v2, "error parsing uploaded video"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_86

    .line 431
    :cond_cb
    :try_start_cb
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->h:Lcom/google/android/youtube/core/transfer/b;

    const-string v2, "video_id"

    iget-object v3, v11, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-direct {p0, v11}, Lcom/google/android/youtube/core/transfer/w;->a(Lcom/google/android/youtube/core/model/Video;)V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_d9} :catch_c4
    .catch Lcom/google/android/youtube/core/converter/ConverterException; {:try_start_cb .. :try_end_d9} :catch_da

    goto :goto_86

    .line 436
    :catch_da
    move-exception v1

    .line 437
    const-string v2, "error parsing uploaded video"

    invoke-static {v2, v1}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_86

    .line 440
    :cond_e1
    const-wide/16 v1, -0x1

    goto :goto_a3
.end method

.method static synthetic c(Lcom/google/android/youtube/core/transfer/w;)J
    .registers 3
    .parameter

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    return-wide v0
.end method

.method private c()V
    .registers 7

    .prologue
    .line 335
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v4, "metadata_updated"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    :goto_13
    int-to-long v4, v0

    sub-long/2addr v2, v4

    .line 342
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->isAborted()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-wide v4, p0, Lcom/google/android/youtube/core/transfer/w;->r:J

    cmp-long v0, v4, v2

    if-gez v0, :cond_2c

    .line 344
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->o:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 346
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_30

    return-void

    .line 340
    :cond_2e
    const/4 v0, 0x2

    goto :goto_13

    .line 346
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()Lcom/google/android/youtube/core/model/UserAuth;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 408
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->i:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 420
    :cond_5
    :goto_5
    return-object v0

    .line 411
    :cond_6
    new-instance v1, Lcom/google/android/youtube/core/async/ai;

    invoke-direct {v1}, Lcom/google/android/youtube/core/async/ai;-><init>()V

    .line 412
    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->g:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/av;)V

    .line 414
    :try_start_10
    invoke-virtual {v1}, Lcom/google/android/youtube/core/async/ai;->b()Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v1

    .line 415
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->i:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_1d} :catch_22

    move-result v2

    if-eqz v2, :cond_5

    move-object v0, v1

    .line 418
    goto :goto_5

    .line 420
    :catch_22
    move-exception v1

    goto :goto_5
.end method

.method static synthetic d(Lcom/google/android/youtube/core/transfer/w;)Lcom/google/android/youtube/core/transfer/Transfer;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/core/transfer/w;)Lcom/google/android/youtube/core/transfer/i;
    .registers 2
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/w;->p:Z

    .line 178
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/w;->n:Z

    if-nez v0, :cond_11

    .line 179
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->l:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/youtube/core/transfer/x;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/transfer/x;-><init>(Lcom/google/android/youtube/core/transfer/w;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 181
    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 182
    return-void
.end method

.method public final run()V
    .registers 10

    .prologue
    const/16 v8, 0x134

    const/16 v7, 0xc9

    const/16 v6, 0xc8

    .line 154
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload starting ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 155
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/w;->p:Z

    if-eqz v0, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upload cancelled before the task started ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_60
    .catchall {:try_start_6 .. :try_end_60} :catchall_1ae
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_60} :catch_7e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_60} :catch_a8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_60} :catch_f0
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_6 .. :try_end_60} :catch_16b

    .line 172
    :cond_60
    :goto_60
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 173
    :goto_65
    return-void

    .line 155
    :cond_66
    :try_start_66
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_99

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "file not found"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_7e
    .catchall {:try_start_66 .. :try_end_7e} :catchall_1ae
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_66 .. :try_end_7e} :catch_7e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_66 .. :try_end_7e} :catch_a8
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_7e} :catch_f0
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_66 .. :try_end_7e} :catch_16b

    .line 156
    :catch_7e
    move-exception v0

    .line 157
    :try_start_7f
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_93
    .catchall {:try_start_7f .. :try_end_93} :catchall_1ae

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_65

    .line 155
    :cond_99
    :try_start_99
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_ce

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "file is a directory"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_a8
    .catchall {:try_start_99 .. :try_end_a8} :catchall_1ae
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_99 .. :try_end_a8} :catch_7e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_99 .. :try_end_a8} :catch_a8
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a8} :catch_f0
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_99 .. :try_end_a8} :catch_16b

    .line 159
    :catch_a8
    move-exception v0

    .line 160
    :try_start_a9
    const-string v1, "FATAL failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadFatalError"

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_c8
    .catchall {:try_start_a9 .. :try_end_c8} :catchall_1ae

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_65

    .line 155
    :cond_ce
    :try_start_ce
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v1, v1, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    iget-wide v3, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    invoke-interface {v0, v1, v3, v4}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_117

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "file is empty"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_f0
    .catchall {:try_start_ce .. :try_end_f0} :catchall_1ae
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_ce .. :try_end_f0} :catch_7e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_ce .. :try_end_f0} :catch_a8
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_f0} :catch_f0
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_ce .. :try_end_f0} :catch_16b

    .line 163
    :catch_f0
    move-exception v0

    .line 164
    :try_start_f1
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadError"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    new-instance v3, Lcom/google/android/youtube/core/transfer/TransferException;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/Throwable;Z)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_110
    .catchall {:try_start_f1 .. :try_end_110} :catchall_1ae

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_65

    .line 155
    :cond_117
    :try_start_117
    iget-boolean v0, p0, Lcom/google/android/youtube/core/transfer/w;->p:Z

    if-nez v0, :cond_60

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/transfer/w;->n:Z

    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/w;->b()Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/w;->p:Z

    if-nez v1, :cond_60

    if-eqz v0, :cond_60

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    if-ne v1, v8, :cond_205

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/w;->a(Lorg/apache/http/HttpResponse;)V

    const-string v1, "range"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_18c

    const-wide/16 v0, -0x1

    :goto_13f
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/w;->m:Ljava/lang/Object;

    monitor-enter v3
    :try_end_142
    .catchall {:try_start_117 .. :try_end_142} :catchall_1ae
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_117 .. :try_end_142} :catch_7e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_117 .. :try_end_142} :catch_a8
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_142} :catch_f0
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_117 .. :try_end_142} :catch_16b

    :try_start_142
    iput-wide v0, p0, Lcom/google/android/youtube/core/transfer/w;->r:J

    monitor-exit v3
    :try_end_145
    .catchall {:try_start_142 .. :try_end_145} :catchall_1bf

    :try_start_145
    iget-object v3, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v3, v3, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v4, "metadata_updated"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {p0, v2, v0, v1, v3}, Lcom/google/android/youtube/core/transfer/w;->a(Ljava/io/File;JZ)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/transfer/w;->p:Z

    if-nez v1, :cond_60

    if-eqz v0, :cond_60

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    if-eq v1, v6, :cond_166

    if-ne v1, v7, :cond_1c2

    :cond_166
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/w;->b(Lorg/apache/http/HttpResponse;)V
    :try_end_169
    .catchall {:try_start_145 .. :try_end_169} :catchall_1ae
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_145 .. :try_end_169} :catch_7e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_145 .. :try_end_169} :catch_a8
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_169} :catch_f0
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_145 .. :try_end_169} :catch_16b

    goto/16 :goto_60

    .line 167
    :catch_16b
    move-exception v0

    .line 168
    :try_start_16c
    const-string v1, "failure uploading"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->d:Lcom/google/android/youtube/core/Analytics;

    const-string v2, "UploadError"

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/TransferException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/Analytics;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->k:Lcom/google/android/youtube/core/transfer/i;

    iget-object v2, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v2, v2, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/transfer/i;->a(Ljava/lang/String;Lcom/google/android/youtube/core/transfer/TransferException;)V
    :try_end_185
    .catchall {:try_start_16c .. :try_end_185} :catchall_1ae

    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto/16 :goto_65

    .line 155
    :cond_18c
    :try_start_18c
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/transfer/w;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_1b5

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
    :try_end_1ae
    .catchall {:try_start_18c .. :try_end_1ae} :catchall_1ae
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_18c .. :try_end_1ae} :catch_7e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_18c .. :try_end_1ae} :catch_a8
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_1ae} :catch_f0
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_18c .. :try_end_1ae} :catch_16b

    .line 172
    :catchall_1ae
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/w;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0

    .line 155
    :cond_1b5
    const/4 v0, 0x2

    :try_start_1b6
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_13f

    :catchall_1bf
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_1c2
    if-ne v1, v8, :cond_1e8

    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/w;->a(Lorg/apache/http/HttpResponse;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/w;->h:Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->g:Lcom/google/android/youtube/core/transfer/b;

    const-string v1, "metadata_updated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/b;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-wide v0, p0, Lcom/google/android/youtube/core/transfer/w;->r:J

    iget-wide v2, p0, Lcom/google/android/youtube/core/transfer/w;->q:J

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_60

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    const-string v1, "upload request got http status: 308"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_1e8
    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/w;->a(Lorg/apache/http/HttpResponse;)V

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload request got http status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_205
    if-eq v1, v6, :cond_209

    if-ne v1, v7, :cond_20e

    :cond_209
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/transfer/w;->b(Lorg/apache/http/HttpResponse;)V

    goto/16 :goto_60

    :cond_20e
    invoke-static {v0}, Lcom/google/android/youtube/core/transfer/w;->a(Lorg/apache/http/HttpResponse;)V

    new-instance v0, Lcom/google/android/youtube/core/transfer/TransferException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "range request got http status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/youtube/core/transfer/TransferException;-><init>(Ljava/lang/String;Z)V

    throw v0
    :try_end_22b
    .catchall {:try_start_1b6 .. :try_end_22b} :catchall_1ae
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_1b6 .. :try_end_22b} :catch_7e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1b6 .. :try_end_22b} :catch_a8
    .catch Ljava/io/IOException; {:try_start_1b6 .. :try_end_22b} :catch_f0
    .catch Lcom/google/android/youtube/core/transfer/TransferException; {:try_start_1b6 .. :try_end_22b} :catch_16b
.end method
