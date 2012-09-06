.class public Lcom/dropbox/android/service/NotificationService;
.super Landroid/app/Service;
.source "panda.py"


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private static final b:Ljava/util/Set;

.field private static final c:Lcom/dropbox/android/service/A;

.field private static final d:Lcom/dropbox/android/service/z;

.field private static final e:Ljava/lang/Object;

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/dropbox/android/service/NotificationService;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    .line 78
    new-instance v0, Lcom/dropbox/android/service/A;

    invoke-direct {v0, v1}, Lcom/dropbox/android/service/A;-><init>(Lcom/dropbox/android/service/x;)V

    sput-object v0, Lcom/dropbox/android/service/NotificationService;->c:Lcom/dropbox/android/service/A;

    .line 85
    new-instance v0, Lcom/dropbox/android/service/z;

    invoke-direct {v0, v1}, Lcom/dropbox/android/service/z;-><init>(Lcom/dropbox/android/service/x;)V

    sput-object v0, Lcom/dropbox/android/service/NotificationService;->d:Lcom/dropbox/android/service/z;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/android/service/NotificationService;->e:Ljava/lang/Object;

    .line 399
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/dropbox/android/service/NotificationService;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 507
    return-void
.end method

.method private static a(Landroid/app/PendingIntent;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/dropbox/android/service/y;)Landroid/app/PendingIntent;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/service/NotificationService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    const-string v1, "ACTION_NOTIFICATION_ACTED_UPON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v1, "EXTRA_NOTIFICATION_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v1, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 384
    const-string v1, "EXTRA_ACTION"

    invoke-virtual {p5}, Lcom/dropbox/android/service/y;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    if-eqz p0, :cond_26

    .line 386
    const-string v1, "EXTRA_PENDING_INTENT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 388
    :cond_26
    if-eqz p4, :cond_2d

    .line 389
    const-string v1, "EXTRA_NOTIFICATION_TAG"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    :cond_2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    .line 392
    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 393
    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 197
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    invoke-static {p0, v0}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_a

    .line 202
    :cond_1a
    sget-object v2, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    monitor-enter v2

    .line 203
    :try_start_1d
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 204
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-static {v0}, Lcom/dropbox/android/service/NotificationService;->b(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    .line 206
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 207
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_28

    .line 208
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/dropbox/android/service/NotificationService;->a(Ljava/lang/String;)V

    goto :goto_28

    .line 211
    :catchall_59
    move-exception v0

    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_1d .. :try_end_5b} :catchall_59

    throw v0

    :cond_5c
    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_59

    .line 212
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iget v0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3b

    .line 330
    sget-object v5, Lcom/dropbox/android/service/y;->a:Lcom/dropbox/android/service/y;

    .line 334
    :goto_8
    iget-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/app/PendingIntent;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/dropbox/android/service/y;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 335
    iget-object v0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    sget-object v5, Lcom/dropbox/android/service/y;->c:Lcom/dropbox/android/service/y;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/app/PendingIntent;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lcom/dropbox/android/service/y;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 337
    const-string v0, "notification"

    .line 338
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 339
    invoke-virtual {v0, p2, p3, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 341
    invoke-static {p2, p3}, Lcom/dropbox/android/service/NotificationService;->a(Ljava/lang/String;I)V

    .line 343
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/service/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 344
    return-void

    .line 332
    :cond_3b
    sget-object v5, Lcom/dropbox/android/service/y;->b:Lcom/dropbox/android/service/y;

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-static {p1}, Lcom/dropbox/android/service/NotificationService;->b(Lcom/dropbox/android/util/aw;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 222
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 223
    if-eqz v0, :cond_1c

    .line 224
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v1, v0}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 225
    invoke-static {p0}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;)V

    .line 227
    :cond_1c
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 310
    sget-object v1, Lcom/dropbox/android/service/NotificationService;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_3
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->c:Lcom/dropbox/android/service/A;

    invoke-virtual {v0, p1}, Lcom/dropbox/android/service/A;->c(Ljava/lang/String;)Z

    .line 312
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_10

    .line 314
    invoke-static {p0, p1, p2}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 315
    invoke-static {p0}, Lcom/dropbox/android/service/NotificationService;->b(Landroid/content/Context;)V

    .line 316
    return-void

    .line 312
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static a(Lcom/dropbox/android/util/aw;)V
    .registers 2
    .parameter

    .prologue
    .line 237
    invoke-static {p0}, Lcom/dropbox/android/service/NotificationService;->b(Lcom/dropbox/android/util/aw;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/dropbox/android/service/NotificationService;->a(Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 319
    sget-object v1, Lcom/dropbox/android/service/NotificationService;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 320
    :try_start_3
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->d:Lcom/dropbox/android/service/z;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/service/z;->c(Ljava/lang/String;)Z

    .line 321
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->c:Lcom/dropbox/android/service/A;

    invoke-virtual {v0, p0}, Lcom/dropbox/android/service/A;->c(Ljava/lang/String;)Z

    .line 322
    monitor-exit v1

    .line 323
    return-void

    .line 322
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private static a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 355
    sget-object v1, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    monitor-enter v1

    .line 356
    :try_start_3
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/dropbox/android/service/NotificationService;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 357
    monitor-exit v1

    .line 358
    return-void

    .line 357
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private static a()Z
    .registers 2

    .prologue
    .line 373
    sget-object v1, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    monitor-enter v1

    .line 374
    :try_start_3
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 375
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/dropbox/android/util/aw;Landroid/os/Bundle;ZZ)Z
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-static {p1}, Lcom/dropbox/android/service/NotificationService;->b(Lcom/dropbox/android/util/aw;)Ljava/lang/String;

    move-result-object v1

    .line 118
    sget-object v2, Lcom/dropbox/android/service/NotificationService;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_8
    sget-object v3, Lcom/dropbox/android/service/NotificationService;->d:Lcom/dropbox/android/service/z;

    invoke-virtual {v3, v1}, Lcom/dropbox/android/service/z;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 120
    monitor-exit v2

    .line 136
    :goto_11
    return v0

    .line 122
    :cond_12
    if-eqz p4, :cond_19

    .line 123
    sget-object v3, Lcom/dropbox/android/service/NotificationService;->c:Lcom/dropbox/android/service/A;

    invoke-virtual {v3, v1}, Lcom/dropbox/android/service/A;->b(Ljava/lang/String;)Z

    .line 125
    :cond_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_3e

    .line 129
    sget-object v2, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    monitor-enter v2

    .line 130
    if-nez p3, :cond_26

    const/4 v3, 0x0

    :try_start_20
    invoke-static {v1, v3}, Lcom/dropbox/android/service/NotificationService;->c(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_41

    .line 131
    :cond_26
    invoke-virtual {p1, p0, p2}, Lcom/dropbox/android/util/aw;->a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/app/Notification;

    move-result-object v0

    .line 132
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v0, v1, v3, v4}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;ILjava/lang/String;)V

    .line 133
    const-string v0, "show"

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 134
    const/4 v0, 0x1

    monitor-exit v2

    goto :goto_11

    .line 138
    :catchall_3b
    move-exception v0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_3b

    throw v0

    .line 125
    :catchall_3e
    move-exception v0

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v0

    .line 136
    :cond_41
    :try_start_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3b

    goto :goto_11
.end method

.method private static b(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .parameter

    .prologue
    .line 414
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 415
    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private static b(Lcom/dropbox/android/util/aw;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Singular."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/android/util/aw;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 435
    invoke-static {}, Lcom/dropbox/android/service/NotificationService;->a()Z

    move-result v0

    if-nez v0, :cond_10

    .line 436
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/android/service/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 439
    :cond_10
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-static {p0, p1}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 185
    invoke-static {p1}, Lcom/dropbox/android/service/NotificationService;->a(Lcom/dropbox/android/util/aw;)V

    .line 186
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 347
    const-string v0, "notification"

    .line 348
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 349
    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 351
    invoke-static {p1, p2}, Lcom/dropbox/android/service/NotificationService;->b(Ljava/lang/String;I)V

    .line 352
    return-void
.end method

.method private static b(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 361
    sget-object v1, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    monitor-enter v1

    .line 362
    :try_start_3
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/dropbox/android/service/NotificationService;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 363
    monitor-exit v1

    .line 364
    return-void

    .line 363
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method private static c(Ljava/lang/String;I)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 367
    sget-object v1, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    monitor-enter v1

    .line 368
    :try_start_3
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->b:Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/dropbox/android/service/NotificationService;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 369
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private static d(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 243
    const-string v0, "create"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Service;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 244
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 245
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 249
    const-string v0, "destroy"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Service;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 250
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 251
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    if-eqz p1, :cond_80

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_8
    const-string v3, "ACTION_NOTIFICATION_ACTED_UPON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 257
    const-string v0, "EXTRA_NOTIFICATION_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 258
    const-string v0, "EXTRA_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/service/y;->valueOf(Ljava/lang/String;)Lcom/dropbox/android/service/y;

    move-result-object v4

    .line 259
    sget-object v0, Lcom/dropbox/android/service/y;->b:Lcom/dropbox/android/service/y;

    if-eq v4, v0, :cond_82

    move v0, v1

    .line 260
    :goto_25
    const-string v5, "EXTRA_NOTIFICATION_TAG"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 262
    if-eqz v0, :cond_34

    if-eqz v5, :cond_34

    .line 263
    sget-object v6, Lcom/dropbox/android/service/NotificationService;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_34
    if-eqz v0, :cond_50

    .line 267
    const-string v0, "EXTRA_NOTIFICATION_ID"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 268
    invoke-static {v3, v0}, Lcom/dropbox/android/service/NotificationService;->b(Ljava/lang/String;I)V

    .line 270
    sget-object v2, Lcom/dropbox/android/service/NotificationService;->e:Ljava/lang/Object;

    monitor-enter v2

    .line 271
    :try_start_42
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->c:Lcom/dropbox/android/service/A;

    invoke-virtual {v0, v3}, Lcom/dropbox/android/service/A;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 272
    sget-object v0, Lcom/dropbox/android/service/NotificationService;->d:Lcom/dropbox/android/service/z;

    invoke-virtual {v0, v3}, Lcom/dropbox/android/service/z;->b(Ljava/lang/String;)Z

    .line 274
    :cond_4f
    monitor-exit v2
    :try_end_50
    .catchall {:try_start_42 .. :try_end_50} :catchall_84

    .line 277
    :cond_50
    const-string v0, "EXTRA_PENDING_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 278
    const-string v0, "EXTRA_PENDING_INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 280
    :try_start_60
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_63
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_60 .. :try_end_63} :catch_8c

    .line 286
    :cond_63
    :goto_63
    invoke-virtual {v4}, Lcom/dropbox/android/service/y;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    .line 287
    if-eqz v5, :cond_76

    .line 288
    const-string v2, "tag"

    invoke-virtual {v0, v2, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    .line 290
    :cond_76
    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 293
    :cond_79
    invoke-static {}, Lcom/dropbox/android/service/NotificationService;->a()Z

    move-result v0

    if-eqz v0, :cond_87

    .line 297
    :goto_7f
    return v1

    .line 255
    :cond_80
    const/4 v0, 0x0

    goto :goto_8

    :cond_82
    move v0, v2

    .line 259
    goto :goto_25

    .line 274
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0

    .line 296
    :cond_87
    invoke-virtual {p0}, Lcom/dropbox/android/service/NotificationService;->stopSelf()V

    .line 297
    const/4 v1, 0x2

    goto :goto_7f

    .line 281
    :catch_8c
    move-exception v0

    goto :goto_63
.end method
