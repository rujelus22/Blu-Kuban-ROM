.class public Lcom/google/android/talk/AvatarCache;
.super Ljava/lang/Object;
.source "AvatarCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AvatarCache$WorkItem;,
        Lcom/google/android/talk/AvatarCache$BitmapCache;
    }
.end annotation


# static fields
.field private static volatile sDone:Z

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/talk/AvatarCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final sInstancesLock:Ljava/lang/Object;

.field private static sQueryThread:Ljava/lang/Thread;

.field private static final sQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/AvatarCache$WorkItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountId:J

.field private mAvatarUri:Landroid/net/Uri;

.field private final mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

.field private mNoAvatarList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/talk/AvatarCache;->sInstancesLock:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/talk/AvatarCache;->sDone:Z

    return-void
.end method

.method private constructor <init>(J)V
    .registers 4
    .parameter "accountId"

    .prologue
    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AvatarCache$BitmapCache;-><init>(Lcom/google/android/talk/AvatarCache;)V

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache;->mNoAvatarList:Ljava/util/ArrayList;

    .line 78
    sget-object v0, Lcom/google/android/gsf/TalkContract$Avatars;->CONTENT_URI_AVATARS_BY:Landroid/net/Uri;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/talk/AvatarCache;->computeAvatarUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AvatarCache;->mAvatarUri:Landroid/net/Uri;

    .line 79
    iput-wide p1, p0, Lcom/google/android/talk/AvatarCache;->mAccountId:J

    .line 80
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/google/android/talk/AvatarCache;->sDone:Z

    return v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method private computeAvatarUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .registers 7
    .parameter "baseUri"
    .parameter "accountId"

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static destroyAll(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    .line 104
    sget-object v3, Lcom/google/android/talk/AvatarCache;->sInstancesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 105
    :try_start_3
    sget-object v2, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 106
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/talk/AvatarCache;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/talk/AvatarCache;

    invoke-virtual {v2}, Lcom/google/android/talk/AvatarCache;->destroy()V

    goto :goto_d

    .line 111
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/talk/AvatarCache;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2

    .line 109
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_26
    const/4 v2, 0x0

    :try_start_27
    sput-object v2, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/Map;

    .line 110
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/talk/AvatarCache;->sDone:Z

    .line 111
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_23

    .line 112
    return-void
.end method

.method private findAvatarInCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 7
    .parameter "username"
    .parameter "hash"

    .prologue
    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    monitor-enter v3

    .line 218
    :try_start_4
    iget-object v2, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v2, p1}, Lcom/google/android/talk/AvatarCache$BitmapCache;->get(Ljava/lang/String;)Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;

    move-result-object v1

    .line 219
    .local v1, cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    if-eqz v1, :cond_1c

    .line 220
    if-eqz p2, :cond_1e

    invoke-virtual {v1}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->getHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 222
    invoke-virtual {v1}, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 228
    :cond_1c
    :goto_1c
    monitor-exit v3

    .line 230
    return-object v0

    .line 225
    :cond_1e
    iget-object v2, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v2, p1}, Lcom/google/android/talk/AvatarCache$BitmapCache;->clear(Ljava/lang/String;)V

    goto :goto_1c

    .line 228
    .end local v1           #cacheItem:Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
    :catchall_24
    move-exception v2

    monitor-exit v3
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_24

    throw v2
.end method

.method public static getInstance(JZ)Lcom/google/android/talk/AvatarCache;
    .registers 7
    .parameter "accountId"
    .parameter "createIfNotExist"

    .prologue
    .line 116
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gtz v1, :cond_1e

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance: invalid account "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/AvatarCache;->loge(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    .line 135
    :goto_1d
    return-object v0

    .line 123
    :cond_1e
    sget-object v2, Lcom/google/android/talk/AvatarCache;->sInstancesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 124
    :try_start_21
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/Map;

    if-nez v1, :cond_30

    .line 125
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "AvatarCache hasn\'t been initialized"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_2d

    throw v1

    .line 128
    :cond_30
    :try_start_30
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/AvatarCache;

    .line 129
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    if-nez v0, :cond_4e

    if-eqz p2, :cond_4e

    .line 130
    new-instance v0, Lcom/google/android/talk/AvatarCache;

    .end local v0           #cache:Lcom/google/android/talk/AvatarCache;
    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/AvatarCache;-><init>(J)V

    .line 131
    .restart local v0       #cache:Lcom/google/android/talk/AvatarCache;
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_2d

    goto :goto_1d
.end method

.method public static initialize(Lcom/google/android/talk/TalkApp;)V
    .registers 3
    .parameter "app"

    .prologue
    .line 93
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sInstancesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_3
    sget-object v0, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 95
    monitor-exit v1

    .line 101
    :goto_8
    return-void

    .line 98
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/talk/AvatarCache;->sInstances:Ljava/util/Map;

    .line 99
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 100
    invoke-static {}, Lcom/google/android/talk/AvatarCache;->startQueryThread()V

    goto :goto_8

    .line 99
    :catchall_15
    move-exception v0

    :try_start_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 299
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AvatarCache] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method private static startQueryThread()V
    .registers 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/AvatarCache$1;

    invoke-direct {v1}, Lcom/google/android/talk/AvatarCache$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/google/android/talk/AvatarCache;->sQueryThread:Ljava/lang/Thread;

    .line 199
    sget-object v0, Lcom/google/android/talk/AvatarCache;->sQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 200
    return-void
.end method


# virtual methods
.method public clear(Ljava/lang/String;)V
    .registers 4
    .parameter "username"

    .prologue
    .line 208
    iget-object v1, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    monitor-enter v1

    .line 209
    :try_start_3
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/AvatarCache$BitmapCache;->clear(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache;->mNoAvatarList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 211
    monitor-exit v1

    .line 212
    return-void

    .line 211
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v0}, Lcom/google/android/talk/AvatarCache$BitmapCache;->clearAll()V

    .line 204
    return-void
.end method

.method public getAvatar(Landroid/database/Cursor;IILjava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 12
    .parameter "cursor"
    .parameter "hashColumn"
    .parameter "dataColumn"
    .parameter "username"
    .parameter "defaultReturn"

    .prologue
    .line 236
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, hash:Ljava/lang/String;
    invoke-direct {p0, p4, v3}, Lcom/google/android/talk/AvatarCache;->findAvatarInCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 239
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_b

    .line 258
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_a
    return-object v2

    .line 244
    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_b
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_26

    if-ltz p3, :cond_26

    .line 246
    invoke-static {p1, p3}, Lcom/google/android/talk/DatabaseUtils;->getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 248
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_26

    .line 249
    const/4 v4, 0x1

    .line 251
    .local v4, isSource:Z
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 253
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-virtual {v5, p4, v1, v3, v4}, Lcom/google/android/talk/AvatarCache$BitmapCache;->add(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;Z)V

    move-object v2, v1

    .line 254
    goto :goto_a

    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    .end local v4           #isSource:Z
    :cond_26
    move-object v2, p5

    .line 258
    goto :goto_a
.end method

.method public getAvatarIfInCache(Landroid/database/Cursor;IILjava/lang/String;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 17
    .parameter "cursor"
    .parameter "hashColumn"
    .parameter "dataColumn"
    .parameter "username"
    .parameter "message"
    .parameter "defaultReturn"

    .prologue
    .line 264
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, hash:Ljava/lang/String;
    invoke-direct {p0, p4, v4}, Lcom/google/android/talk/AvatarCache;->findAvatarInCache(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    .line 267
    .local v9, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v9, :cond_b

    .line 290
    .end local v9           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_a
    return-object v9

    .line 272
    .restart local v9       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3a

    if-ltz p3, :cond_3a

    .line 276
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 278
    .local v3, avatarData:[B
    new-instance v0, Lcom/google/android/talk/AvatarCache$WorkItem;

    iget-wide v5, p0, Lcom/google/android/talk/AvatarCache;->mAccountId:J

    iget-object v7, p0, Lcom/google/android/talk/AvatarCache;->mCache:Lcom/google/android/talk/AvatarCache$BitmapCache;

    move-object v1, p0

    move-object v2, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/talk/AvatarCache$WorkItem;-><init>(Lcom/google/android/talk/AvatarCache;Ljava/lang/String;[BLjava/lang/String;JLcom/google/android/talk/AvatarCache$BitmapCache;Landroid/os/Message;)V

    .line 281
    .local v0, w:Lcom/google/android/talk/AvatarCache$WorkItem;
    sget-object v2, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 282
    :try_start_26
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 284
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 285
    sget-object v1, Lcom/google/android/talk/AvatarCache;->sQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 287
    :cond_39
    monitor-exit v2

    .end local v0           #w:Lcom/google/android/talk/AvatarCache$WorkItem;
    .end local v3           #avatarData:[B
    :cond_3a
    move-object/from16 v9, p6

    .line 290
    goto :goto_a

    .line 287
    .restart local v0       #w:Lcom/google/android/talk/AvatarCache$WorkItem;
    .restart local v3       #avatarData:[B
    :catchall_3d
    move-exception v1

    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public getAvatarUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache;->mAvatarUri:Landroid/net/Uri;

    return-object v0
.end method
