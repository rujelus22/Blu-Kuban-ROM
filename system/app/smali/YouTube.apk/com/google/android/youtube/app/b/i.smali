.class public final Lcom/google/android/youtube/app/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/transfer/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:J

.field private final c:Z

.field private final d:Ljava/util/Set;

.field private e:Lcom/google/android/youtube/core/utils/n;

.field private volatile f:Ljava/util/Map;

.field private final g:Landroid/app/NotificationManager;

.field private final h:Landroid/app/Notification;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/google/android/youtube/core/utils/c;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "context can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/i;->a:Landroid/content/Context;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/b/i;->d:Ljava/util/Set;

    .line 66
    const-string v0, "prefetch_session_id"

    invoke-interface {p2, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 67
    cmp-long v2, v0, v5

    if-nez v2, :cond_82

    .line 68
    invoke-interface {p3}, Lcom/google/android/youtube/core/utils/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/app/b/i;->b:J

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/app/b/i;->c:Z

    .line 70
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "prefetch_session_id"

    iget-wide v2, p0, Lcom/google/android/youtube/app/b/i;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    :goto_39
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/youtube/app/b/i;->g:Landroid/app/NotificationManager;

    .line 77
    new-instance v0, Landroid/app/Notification;

    const v1, 0x108007c

    const v2, 0x7f0a00fd

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/google/android/youtube/app/b/i;->h:Landroid/app/Notification;

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/google/android/youtube/app/b/i;->h:Landroid/app/Notification;

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x22

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 85
    iget-object v1, p0, Lcom/google/android/youtube/app/b/i;->h:Landroid/app/Notification;

    const v2, 0x7f0a0099

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a00fe

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v4, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 90
    return-void

    .line 72
    :cond_82
    iput-wide v0, p0, Lcom/google/android/youtube/app/b/i;->b:J

    .line 73
    iput-boolean v4, p0, Lcom/google/android/youtube/app/b/i;->c:Z

    goto :goto_39
.end method

.method static synthetic a(Lcom/google/android/youtube/app/b/i;Ljava/io/File;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/b/i;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 8
    .parameter

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 253
    array-length v2, v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, v2, :cond_29

    aget-object v3, v1, v0

    .line 254
    iget-wide v4, p0, Lcom/google/android/youtube/app/b/i;->b:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 255
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 256
    invoke-direct {p0, v3}, Lcom/google/android/youtube/app/b/i;->a(Ljava/io/File;)V

    .line 258
    :cond_23
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 253
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 261
    :cond_29
    return-void
.end method

.method private e()V
    .registers 6

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->e:Lcom/google/android/youtube/core/utils/n;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/utils/n;->a()Landroid/os/Binder;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/g;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/transfer/g;->a()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    .line 174
    iget-boolean v2, p0, Lcom/google/android/youtube/app/b/i;->i:Z

    .line 175
    const/4 v1, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 177
    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v4, Lcom/google/android/youtube/core/transfer/Transfer$Status;->RUNNING:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-ne v0, v4, :cond_1b

    .line 178
    const/4 v0, 0x1

    .line 182
    :goto_2e
    iput-boolean v0, p0, Lcom/google/android/youtube/app/b/i;->i:Z

    .line 183
    iget-boolean v0, p0, Lcom/google/android/youtube/app/b/i;->i:Z

    if-nez v0, :cond_4d

    .line 184
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/i;->f()V

    .line 188
    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/b/k;

    .line 189
    invoke-interface {v0}, Lcom/google/android/youtube/app/b/k;->j()V

    goto :goto_3d

    .line 185
    :cond_4d
    if-nez v2, :cond_37

    .line 186
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->h:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->g:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    iget-object v2, p0, Lcom/google/android/youtube/app/b/i;->h:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_37

    .line 191
    :cond_61
    return-void

    :cond_62
    move v0, v1

    goto :goto_2e
.end method

.method private f()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->g:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 204
    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/google/android/youtube/app/b/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 215
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_d
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/u;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    if-nez v0, :cond_7

    move-object v0, v1

    .line 130
    :goto_6
    return-object v0

    .line 118
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v2, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 120
    if-eqz v0, :cond_1b

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->c:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    sget-object v3, Lcom/google/android/youtube/core/transfer/Transfer$Status;->COMPLETED:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    if-eq v2, v3, :cond_1d

    :cond_1b
    move-object v0, v1

    .line 121
    goto :goto_6

    .line 123
    :cond_1d
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/google/android/youtube/core/transfer/Transfer;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 124
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

    .line 130
    new-instance v0, Lcom/google/android/youtube/core/model/u;

    invoke-direct {v0, v1}, Lcom/google/android/youtube/core/model/u;-><init>(Lcom/google/android/youtube/core/model/Stream;)V

    goto :goto_6
.end method

.method public final a()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/i;->f()V

    .line 94
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->e:Lcom/google/android/youtube/core/utils/n;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/google/android/youtube/core/transfer/DownloadService;->a(Landroid/content/Context;Lcom/google/android/youtube/core/transfer/d;)Lcom/google/android/youtube/core/utils/n;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/b/i;->e:Lcom/google/android/youtube/core/utils/n;

    .line 95
    :cond_f
    return-void
.end method

.method public final a(Lcom/google/android/youtube/app/b/k;)V
    .registers 3
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    if-eqz v0, :cond_c

    .line 100
    invoke-interface {p1}, Lcom/google/android/youtube/app/b/k;->j()V

    .line 102
    :cond_c
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/i;->e()V

    .line 162
    return-void
.end method

.method public final b()V
    .registers 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/i;->e()V

    .line 150
    return-void
.end method

.method public final b(Lcom/google/android/youtube/app/b/k;)V
    .registers 3
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public final b(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/i;->e()V

    .line 158
    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    if-nez v0, :cond_6

    .line 135
    const/4 v0, 0x0

    .line 137
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final c(Ljava/lang/String;)I
    .registers 7
    .parameter

    .prologue
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 141
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    if-nez v0, :cond_9

    move v0, v3

    .line 145
    :goto_8
    return v0

    .line 144
    :cond_9
    iget-object v0, p0, Lcom/google/android/youtube/app/b/i;->f:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/b/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/transfer/Transfer;

    .line 145
    if-eqz v0, :cond_2a

    iget-wide v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_28

    iget-wide v1, v0, Lcom/google/android/youtube/core/transfer/Transfer;->e:J

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget-wide v3, v0, Lcom/google/android/youtube/core/transfer/Transfer;->f:J

    div-long v0, v1, v3

    :goto_26
    long-to-int v0, v0

    goto :goto_8

    :cond_28
    move-wide v0, v1

    goto :goto_26

    :cond_2a
    move v0, v3

    goto :goto_8
.end method

.method public final c(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 154
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/android/youtube/app/b/i;->i:Z

    return v0
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 220
    if-nez v0, :cond_8

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_7
    return-object v0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/youtube/app/b/i;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public final d()V
    .registers 3

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 232
    if-nez v0, :cond_7

    .line 245
    :cond_6
    :goto_6
    return-void

    .line 235
    :cond_7
    iget-boolean v1, p0, Lcom/google/android/youtube/app/b/i;->c:Z

    if-eqz v1, :cond_6

    .line 237
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 238
    new-instance v1, Lcom/google/android/youtube/app/b/j;

    invoke-direct {v1, p0, v0}, Lcom/google/android/youtube/app/b/j;-><init>(Lcom/google/android/youtube/app/b/i;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/youtube/app/b/j;->start()V

    goto :goto_6
.end method

.method public final d(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/youtube/app/b/i;->e()V

    .line 166
    return-void
.end method

.method public final e(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    return-void
.end method
