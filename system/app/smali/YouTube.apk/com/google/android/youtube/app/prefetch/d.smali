.class public final Lcom/google/android/youtube/app/prefetch/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/i;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:J

.field private final d:Z

.field private final e:J

.field private final f:Ljava/util/Set;

.field private g:Lcom/google/android/youtube/core/utils/v;

.field private h:Lcom/google/android/youtube/core/transfer/l;

.field private volatile i:Ljava/util/Map;

.field private final j:Landroid/app/NotificationManager;

.field private k:Z

.field private l:Lcom/google/android/youtube/app/prefetch/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/d;Lcom/google/android/youtube/app/k;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    .line 88
    const-string v0, "preferences can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->b:Landroid/content/SharedPreferences;

    .line 89
    const-string v0, "youtubeConfig can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p4}, Lcom/google/android/youtube/app/k;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/app/prefetch/d;->e:J

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->f:Ljava/util/Set;

    .line 93
    const-string v0, "prefetch_session_id"

    invoke-interface {p2, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 94
    cmp-long v2, v0, v2

    if-nez v2, :cond_76

    .line 95
    invoke-interface {p3}, Lcom/google/android/youtube/core/utils/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/app/prefetch/d;->c:J

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/d;->d:Z

    .line 97
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefetch_session_id"

    iget-wide v2, p0, Lcom/google/android/youtube/app/prefetch/d;->c:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 104
    :goto_4e
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->j:Landroid/app/NotificationManager;

    .line 108
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 109
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 110
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->g()V

    .line 115
    :goto_69
    new-instance v0, Lcom/google/android/youtube/app/prefetch/g;

    invoke-direct {v0, p0, v4}, Lcom/google/android/youtube/app/prefetch/g;-><init>(Lcom/google/android/youtube/app/prefetch/d;B)V

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->l:Lcom/google/android/youtube/app/prefetch/g;

    .line 116
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->l:Lcom/google/android/youtube/app/prefetch/g;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/prefetch/g;->a()V

    .line 117
    return-void

    .line 100
    :cond_76
    iput-wide v0, p0, Lcom/google/android/youtube/app/prefetch/d;->c:J

    .line 101
    iput-boolean v4, p0, Lcom/google/android/youtube/app/prefetch/d;->d:Z

    goto :goto_4e

    .line 112
    :cond_7b
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->h()V

    goto :goto_69
.end method

.method static synthetic a(Lcom/google/android/youtube/app/prefetch/d;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/prefetch/d;Ljava/io/File;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/prefetch/d;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 8
    .parameter

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 319
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_29

    aget-object v3, v1, v0

    .line 320
    iget-wide v4, p0, Lcom/google/android/youtube/app/prefetch/d;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 321
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 322
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/prefetch/d;->a(Ljava/io/File;)V

    .line 324
    :cond_23
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 319
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 327
    :cond_29
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/app/prefetch/d;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/android/youtube/app/prefetch/d;)V
    .registers 1
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->h()V

    return-void
.end method

.method private e()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->g:Lcom/google/android/youtube/core/utils/v;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/v;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/l;

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->h:Lcom/google/android/youtube/core/transfer/l;

    .line 206
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->h:Lcom/google/android/youtube/core/transfer/l;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/l;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->i:Ljava/util/Map;

    .line 208
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 210
    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v3, :cond_1f

    .line 211
    const/4 v0, 0x1

    .line 215
    :goto_32
    iput-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/d;->k:Z

    .line 217
    iget-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/d;->k:Z

    if-eqz v0, :cond_57

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->b:Landroid/content/SharedPreferences;

    const-string v3, "prefetch_last_not_used_notification_time"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-nez v4, :cond_6d

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "prefetch_last_not_used_notification_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 221
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/f;

    .line 222
    invoke-interface {v0}, Lcom/google/android/youtube/app/prefetch/f;->o()V

    goto :goto_5d

    .line 218
    :cond_6d
    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/google/android/youtube/app/prefetch/d;->e:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_57

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->b:Landroid/content/SharedPreferences;

    const-string v3, "prefetch_last_local_playback_time"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/youtube/app/prefetch/d;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_57

    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->f()V

    goto :goto_57

    .line 224
    :cond_88
    return-void

    :cond_89
    move v0, v1

    goto :goto_32
.end method

.method private f()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 247
    new-instance v1, Landroid/app/Notification;

    const v0, 0x7f0200e2

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    const v3, 0x7f0b013f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 251
    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 252
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f040060

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 259
    :try_start_2c
    const-string v0, "com.google.android.youtube.app.honeycomb.SettingsActivity$PrefetchPrefsFragment"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 261
    const-string v2, "createIntent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 262
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4e} :catch_71

    .line 269
    :goto_4e
    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    invoke-static {v2, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 271
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->j:Landroid/app/NotificationManager;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefetch_last_not_used_notification_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 274
    return-void

    .line 263
    :catch_71
    move-exception v0

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4e
.end method

.method private g()V
    .registers 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_max_rate"

    const/high16 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 332
    return-void
.end method

.method private h()V
    .registers 4

    .prologue
    .line 335
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "download_max_rate"

    const/high16 v2, 0x4

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 338
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/t;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->i:Ljava/util/Map;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 160
    :goto_6
    return-object v0

    .line 147
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/prefetch/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->i:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 149
    if-eqz v0, :cond_23

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v2, v3, :cond_23

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/youtube/app/prefetch/Prefetch;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_23
    move-object v0, v1

    .line 151
    goto :goto_6

    .line 153
    :cond_25
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    new-instance v2, Lcom/google/android/youtube/core/model/Stream$Builder;

    invoke-direct {v2}, Lcom/google/android/youtube/core/model/Stream$Builder;-><init>()V

    invoke-virtual {v2, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes(J)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/core/model/Stream$Quality;->UNKNOWN:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Stream$Builder;->quality(Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v1

    .line 160
    new-instance v0, Lcom/google/android/youtube/core/model/t;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/t;-><init>(Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_6
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->g:Lcom/google/android/youtube/core/utils/v;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/i;)Lcom/google/android/youtube/core/utils/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->g:Lcom/google/android/youtube/core/utils/v;

    .line 121
    :cond_c
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/prefetch/f;)V
    .registers 3
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->i:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 126
    invoke-interface {p1}, Lcom/google/android/youtube/app/prefetch/f;->o()V

    .line 128
    :cond_c
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->e()V

    .line 190
    return-void
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/google/android/youtube/app/prefetch/d;->i:Ljava/util/Map;

    if-nez v1, :cond_6

    .line 172
    :cond_5
    :goto_5
    return-object v0

    .line 171
    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/prefetch/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/d;->i:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/google/android/youtube/app/prefetch/Prefetch;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    goto :goto_5
.end method

.method public final b(Lcom/google/android/youtube/app/prefetch/f;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 132
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 186
    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 285
    if-nez v0, :cond_a

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_9
    return-object v0

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/app/prefetch/d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/youtube/app/prefetch/d;->k:Z

    return v0
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/youtube/app/prefetch/PrefetchService;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 297
    if-nez v0, :cond_9

    .line 310
    :cond_8
    :goto_8
    return-void

    .line 300
    :cond_9
    iget-boolean v1, p0, Lcom/google/android/youtube/app/prefetch/d;->d:Z

    if-eqz v1, :cond_8

    .line 302
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 303
    new-instance v1, Lcom/google/android/youtube/app/prefetch/e;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/prefetch/e;-><init>(Lcom/google/android/youtube/app/prefetch/d;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/youtube/app/prefetch/e;->start()V

    goto :goto_8
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->e()V

    .line 194
    return-void
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->e()V

    .line 202
    return-void
.end method

.method public final f_()V
    .registers 1

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/google/android/youtube/app/prefetch/d;->e()V

    .line 178
    return-void
.end method
