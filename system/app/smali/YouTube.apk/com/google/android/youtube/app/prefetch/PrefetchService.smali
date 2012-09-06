.class public Lcom/google/android/youtube/app/prefetch/PrefetchService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;
.implements Lcom/google/android/youtube/core/transfer/i;


# instance fields
.field private a:Lcom/google/android/youtube/core/utils/d;

.field private b:Landroid/app/AlarmManager;

.field private c:Lcom/google/android/youtube/core/player/an;

.field private d:Ljava/util/Set;

.field private e:Landroid/content/SharedPreferences;

.field private f:Lcom/google/android/youtube/app/prefetch/d;

.field private g:Lcom/google/android/youtube/core/utils/k;

.field private h:I

.field private i:Landroid/os/Handler;

.field private j:Lcom/google/android/youtube/core/b/ae;

.field private k:Lcom/google/android/youtube/core/async/UserAuthorizer;

.field private l:Lcom/google/android/youtube/core/utils/v;

.field private m:Lcom/google/android/youtube/core/transfer/l;

.field private n:Ljava/util/Map;

.field private o:Ljava/util/Set;

.field private p:Lcom/google/android/youtube/app/prefetch/h;

.field private q:Lcom/google/android/youtube/core/Analytics;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 528
    return-void
.end method

.method private a(Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V
    .registers 5
    .parameter

    .prologue
    .line 434
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 435
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch;

    .line 436
    iget-object v2, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->d:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    if-ne v2, p1, :cond_6

    .line 437
    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->m:Lcom/google/android/youtube/core/transfer/l;

    iget-object v0, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;)V

    .line 438
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 441
    :cond_21
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/prefetch/PrefetchService;)V
    .registers 1
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/prefetch/PrefetchService;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;ILandroid/net/Uri;J)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->f:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/prefetch/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p5

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/app/prefetch/Prefetch;->a(Ljava/lang/String;Ljava/lang/String;JLcom/google/android/youtube/app/prefetch/Prefetch$Source;I)Lcom/google/android/youtube/app/prefetch/Prefetch;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->n:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/prefetch/PrefetchService;Ljava/lang/Iterable;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    add-int/lit8 v2, v1, 0x1

    :try_start_14
    iget-object v4, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c:Lcom/google/android/youtube/core/player/an;

    iget-object v5, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->d:Ljava/util/Set;

    invoke-interface {v4, v0, v5}, Lcom/google/android/youtube/core/player/an;->a(Lcom/google/android/youtube/core/model/Video;Ljava/util/Set;)Lcom/google/android/youtube/core/model/t;
    :try_end_1b
    .catch Lcom/google/android/youtube/core/player/MissingStreamException; {:try_start_14 .. :try_end_1b} :catch_5a

    move-result-object v4

    iget-object v4, v4, Lcom/google/android/youtube/core/model/t;->b:Lcom/google/android/youtube/core/model/Stream;

    iget-object v5, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->f:Lcom/google/android/youtube/app/prefetch/d;

    iget-object v6, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/youtube/app/prefetch/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_58

    iget v5, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->h:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->h:I

    iget-object v4, v4, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "dnc"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "preload"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->j:Lcom/google/android/youtube/core/b/ae;

    iget-object v6, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->i:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/youtube/app/prefetch/b;

    invoke-direct {v7, p0, v0, p2, v1}, Lcom/google/android/youtube/app/prefetch/b;-><init>(Lcom/google/android/youtube/app/prefetch/PrefetchService;Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;I)V

    invoke-static {v6, v7}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v0

    invoke-interface {v5, v4, v0}, Lcom/google/android/youtube/core/b/ae;->d(Landroid/net/Uri;Lcom/google/android/youtube/core/async/l;)V

    :cond_58
    move v1, v2

    goto :goto_6

    :catch_5a
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No streams found for video: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    move v1, v2

    goto :goto_6

    :cond_70
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 120
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 121
    const-string v2, "prefetch_subscriptions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "prefetch_watch_later"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 134
    :cond_d
    :goto_d
    return-object v0

    .line 133
    :cond_e
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method private c()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 397
    iget v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->h:I

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 398
    iget v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->h:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->h:I

    if-lez v0, :cond_14

    .line 418
    :goto_11
    return-void

    :cond_12
    move v0, v2

    .line 397
    goto :goto_6

    .line 402
    :cond_14
    iget-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->u:Z

    if-eqz v0, :cond_1c

    .line 405
    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->stopSelf()V

    goto :goto_11

    .line 409
    :cond_1c
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 410
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    .line 411
    iget-object v5, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->p:Lcom/google/android/youtube/app/prefetch/h;

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->n:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v5, v0, v1}, Lcom/google/android/youtube/app/prefetch/h;->a(Lcom/google/android/youtube/app/prefetch/Prefetch$Source;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2b

    .line 414
    :cond_49
    new-instance v0, Lcom/google/android/youtube/app/prefetch/k;

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->q:Lcom/google/android/youtube/core/Analytics;

    iget-object v4, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->m:Lcom/google/android/youtube/core/transfer/l;

    invoke-direct {v0, v1, v4}, Lcom/google/android/youtube/app/prefetch/k;-><init>(Lcom/google/android/youtube/core/Analytics;Lcom/google/android/youtube/core/transfer/l;)V

    .line 415
    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->o:Ljava/util/Set;

    invoke-virtual {v0, v3, v1}, Lcom/google/android/youtube/app/prefetch/k;->a(Ljava/util/Set;Ljava/util/Set;)V

    .line 417
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->b:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a:Lcom/google/android/youtube/core/utils/d;

    invoke-interface {v3}, Lcom/google/android/youtube/core/utils/d;->b()J

    move-result-wide v3

    const-wide/32 v5, 0x1499700

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->stopSelf()V

    goto :goto_11
.end method

.method public static c(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 143
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/k;->j()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 144
    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    :cond_1d
    return-void
.end method

.method private static d(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3
    .parameter

    .prologue
    .line 115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/prefetch/PrefetchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch;

    .line 445
    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->m:Lcom/google/android/youtube/core/transfer/l;

    iget-object v0, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;)V

    goto :goto_6

    .line 447
    :cond_1a
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->o:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 448
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 6
    .parameter

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/youtube/core/model/UserAuth;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is signed in, requesting videos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 322
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->h:I

    .line 328
    iget-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->r:Z

    if-eqz v0, :cond_49

    .line 329
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->j:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->i:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/app/prefetch/a;

    sget-object v3, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->SUBSCRIPTION:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/prefetch/a;-><init>(Lcom/google/android/youtube/app/prefetch/PrefetchService;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/b/ae;->c(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 334
    :goto_32
    iget-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->s:Z

    if-eqz v0, :cond_4d

    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->j:Lcom/google/android/youtube/core/b/ae;

    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->i:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/youtube/app/prefetch/c;

    sget-object v3, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->WATCH_LATER:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-direct {v2, p0, v3}, Lcom/google/android/youtube/app/prefetch/c;-><init>(Lcom/google/android/youtube/app/prefetch/PrefetchService;Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V

    invoke-static {v1, v2}, Lcom/google/android/youtube/core/async/af;->a(Landroid/os/Handler;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/af;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/b/ae;->b(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 340
    :goto_48
    return-void

    .line 332
    :cond_49
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c()V

    goto :goto_32

    .line 338
    :cond_4d
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c()V

    goto :goto_48
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 350
    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->stopSelf()V

    .line 351
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 306
    return-void
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    return-void
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    return-void
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    return-void
.end method

.method public final e_()V
    .registers 1

    .prologue
    .line 343
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 344
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->d()V

    .line 345
    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->stopSelf()V

    .line 346
    return-void
.end method

.method public final f_()V
    .registers 12

    .prologue
    const-wide/16 v9, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 239
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 240
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->l:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->m:Lcom/google/android/youtube/core/transfer/l;

    .line 241
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->m:Lcom/google/android/youtube/core/transfer/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/l;->a()Ljava/util/Map;

    move-result-object v2

    .line 242
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->m:Lcom/google/android/youtube/core/transfer/l;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/transfer/l;->b(Lcom/google/android/youtube/core/transfer/i;)Z

    .line 244
    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 245
    if-nez v0, :cond_23

    .line 294
    :goto_22
    return-void

    .line 250
    :cond_23
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v5, v0

    mul-long/2addr v5, v9

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v7, v0

    mul-long/2addr v5, v7

    .line 252
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v7, v0

    mul-long/2addr v7, v9

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v7

    .line 254
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v1, v0

    :goto_49
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 256
    new-instance v8, Ljava/io/File;

    iget-object v9, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v1, v8

    .line 257
    iget-object v8, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/youtube/app/prefetch/Prefetch;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 258
    iget-object v8, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->m:Lcom/google/android/youtube/core/transfer/l;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/google/android/youtube/core/transfer/l;->a(Ljava/lang/String;)V

    goto :goto_49

    .line 261
    :cond_71
    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/Prefetch;->a(Lcom/google/android/youtube/core/transfer/Transfer;)Lcom/google/android/youtube/app/prefetch/Prefetch;

    move-result-object v0

    .line 262
    iget-object v8, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->o:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 267
    :cond_7b
    const-wide/32 v7, 0x40000000

    const-wide/16 v9, 0x2

    div-long/2addr v5, v9

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    const-wide/32 v7, 0x8000000

    sub-long v0, v1, v7

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 271
    iget-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->r:Z

    if-eqz v0, :cond_a1

    move v0, v3

    :goto_93
    iget-boolean v5, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->s:Z

    if-eqz v5, :cond_a3

    :goto_97
    add-int/2addr v0, v3

    .line 272
    if-nez v0, :cond_a5

    .line 273
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->d()V

    .line 274
    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->stopSelf()V

    goto :goto_22

    :cond_a1
    move v0, v4

    .line 271
    goto :goto_93

    :cond_a3
    move v3, v4

    goto :goto_97

    .line 277
    :cond_a5
    iget-boolean v3, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->r:Z

    if-nez v3, :cond_ae

    .line 278
    sget-object v3, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->SUBSCRIPTION:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V

    .line 280
    :cond_ae
    iget-boolean v3, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->s:Z

    if-nez v3, :cond_b7

    .line 281
    sget-object v3, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->WATCH_LATER:Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a(Lcom/google/android/youtube/app/prefetch/Prefetch$Source;)V

    .line 285
    :cond_b7
    const-wide/32 v3, 0x20000000

    int-to-long v5, v0

    div-long v0, v1, v5

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 286
    new-instance v2, Lcom/google/android/youtube/app/prefetch/h;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/youtube/app/prefetch/h;-><init>(J)V

    iput-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->p:Lcom/google/android/youtube/app/prefetch/h;

    .line 288
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->g:Lcom/google/android/youtube/core/utils/k;

    invoke-interface {v0}, Lcom/google/android/youtube/core/utils/k;->c()Z

    move-result v0

    if-eqz v0, :cond_dc

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e1

    .line 289
    :cond_dc
    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->stopSelf()V

    goto/16 :goto_22

    .line 293
    :cond_e1
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->k:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->a(Lcom/google/android/youtube/core/async/bc;)V

    goto/16 :goto_22
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 154
    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/k;->j()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 155
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->stopSelf()V

    .line 157
    :cond_1c
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PrefetchService destroyed at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->l:Lcom/google/android/youtube/core/utils/v;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->l:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/core/utils/v;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->l:Lcom/google/android/youtube/core/utils/v;

    .line 212
    :cond_26
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 213
    iget-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->u:Z

    if-eqz v0, :cond_34

    .line 214
    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c(Landroid/content/Context;)V

    .line 216
    :cond_34
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->t:Z

    if-eqz v0, :cond_9

    .line 162
    iput-boolean v7, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->u:Z

    .line 167
    :goto_8
    return v7

    .line 164
    :cond_9
    iput-boolean v7, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->t:Z

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "PrefetchService started at "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->O()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->e:Landroid/content/SharedPreferences;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->w()Lcom/google/android/youtube/app/prefetch/d;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->f:Lcom/google/android/youtube/app/prefetch/d;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Q()Lcom/google/android/youtube/core/async/UserAuthorizer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->k:Lcom/google/android/youtube/core/async/UserAuthorizer;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->U()Lcom/google/android/youtube/core/utils/k;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->g:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->j()Lcom/google/android/youtube/core/b/ae;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->j:Lcom/google/android/youtube/core/b/ae;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->F()Lcom/google/android/youtube/core/Analytics;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->q:Lcom/google/android/youtube/core/Analytics;

    new-instance v2, Lcom/google/android/youtube/core/player/r;

    iget-object v3, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->g:Lcom/google/android/youtube/core/utils/k;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->Y()Lcom/google/android/youtube/core/j;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/google/android/youtube/core/j;->b(Landroid/content/Context;)Z

    move-result v4

    invoke-static {p0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/youtube/app/k;->s()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/youtube/core/player/r;-><init>(Lcom/google/android/youtube/core/utils/k;ZZZ)V

    iput-object v2, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->c:Lcom/google/android/youtube/core/player/an;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/YouTubeApplication;->d()Lcom/google/android/youtube/app/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/k;->g()Z

    move-result v0

    if-eqz v0, :cond_b9

    sget-object v0, Lcom/google/android/youtube/core/player/f;->a:Ljava/util/Set;

    :goto_78
    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->d:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->i:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/youtube/core/utils/ab;

    invoke-direct {v0}, Lcom/google/android/youtube/core/utils/ab;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->a:Lcom/google/android/youtube/core/utils/d;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->b:Landroid/app/AlarmManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->o:Ljava/util/Set;

    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->n:Ljava/util/Map;

    invoke-static {}, Lcom/google/android/youtube/app/prefetch/Prefetch$Source;->values()[Lcom/google/android/youtube/app/prefetch/Prefetch$Source;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_a8
    if-ge v0, v3, :cond_bc

    aget-object v4, v2, v0

    iget-object v5, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->n:Ljava/util/Map;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_a8

    :cond_b9
    sget-object v0, Lcom/google/android/youtube/core/player/bi;->h:Ljava/util/Set;

    goto :goto_78

    :cond_bc
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->e:Landroid/content/SharedPreferences;

    const-string v2, "prefetch_subscriptions"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->r:Z

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->e:Landroid/content/SharedPreferences;

    const-string v2, "prefetch_watch_later"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->s:Z

    invoke-static {p0, p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/utils/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/PrefetchService;->l:Lcom/google/android/youtube/core/utils/v;

    goto/16 :goto_8
.end method
