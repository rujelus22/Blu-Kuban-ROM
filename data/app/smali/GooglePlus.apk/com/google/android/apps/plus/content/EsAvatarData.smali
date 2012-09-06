.class public Lcom/google/android/apps/plus/content/EsAvatarData;
.super Ljava/lang/Object;
.source "EsAvatarData.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static sBackgroundColor:I

.field private static sDefaultAvatarMedium:Landroid/graphics/Bitmap;

.field private static sDefaultAvatarMediumRound:Landroid/graphics/Bitmap;

.field private static sDefaultAvatarSmall:Landroid/graphics/Bitmap;

.field private static sDefaultAvatarSmallRound:Landroid/graphics/Bitmap;

.field private static sDefaultAvatarTiny:Landroid/graphics/Bitmap;

.field private static sDefaultAvatarTinyRound:Landroid/graphics/Bitmap;

.field private static final sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final sDownloadQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDownloadSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static sLargeAvatarSize:I

.field private static sMediumAvatarSize:I

.field public static sRoundAvatarsEnabled:Z

.field private static sSmallAvatarSize:I

.field private static final sSyncLock:Ljava/lang/Object;

.field private static sTinyAvatarSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sRoundAvatarsEnabled:Z

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sSyncLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "db"
    .parameter "account"

    .prologue
    .line 842
    const-string v0, "avatars"

    const-string v1, "user_id NOT IN (SELECT DISTINCT gaia_id FROM contacts)"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 845
    return-void
.end method

.method public static clear()V
    .registers 2

    .prologue
    .line 831
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 832
    :try_start_3
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 833
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 834
    monitor-exit v1

    .line 835
    return-void

    .line 834
    :catchall_f
    move-exception v0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v0
.end method

.method private static downloadAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 364
    const-string v2, "Avatars"

    invoke-virtual {p2, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 365
    const/4 v8, 0x0

    .line 366
    .local v8, count:I
    const/4 v1, 0x0

    .line 367
    .local v1, operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    const/4 v7, 0x0

    .local v7, batchSize:I
    move-object v10, v1

    .line 370
    .end local v1           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .local v10, operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    :cond_9
    :goto_9
    :try_start_9
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_93

    move-result v2

    if-eqz v2, :cond_14

    .line 371
    const/4 v2, 0x0

    .line 412
    invoke-virtual {p2, v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    :goto_13
    return v2

    .line 374
    :cond_14
    const/4 v11, 0x0

    .line 375
    .local v11, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :try_start_15
    sget-object v3, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_93

    .line 376
    :try_start_18
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 377
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object v11, v0

    .line 378
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 386
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_90

    .line 388
    :try_start_30
    invoke-virtual {v11}, Lcom/google/android/apps/plus/content/AvatarRequest;->getGaiaId()Ljava/lang/String;

    move-result-object v9

    .line 389
    .local v9, gaiaId:Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 393
    const-string v2, "EsAvatarData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 394
    const-string v2, "EsAvatarData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading avatar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_57
    if-nez v10, :cond_9b

    .line 398
    new-instance v1, Lcom/google/android/apps/plus/api/MediumAvatarOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_63
    .catchall {:try_start_30 .. :try_end_63} :catchall_93

    .line 401
    .end local v10           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v1       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    :goto_63
    :try_start_63
    invoke-virtual {v1, v9}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->getAvatar(Ljava/lang/String;)V

    .line 402
    add-int/lit8 v8, v8, 0x1

    .line 403
    add-int/lit8 v7, v7, 0x1

    .line 404
    const/16 v2, 0x10

    if-lt v7, v2, :cond_7b

    .line 405
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->waitForLock()V

    .line 406
    new-instance v2, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    invoke-virtual {v1, p2, v2}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    :try_end_79
    .catchall {:try_start_63 .. :try_end_79} :catchall_99

    .line 407
    const/4 v7, 0x0

    .line 408
    const/4 v1, 0x0

    :cond_7b
    move-object v10, v1

    .line 410
    .end local v1           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v10       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    goto :goto_9

    .line 380
    .end local v9           #gaiaId:Ljava/lang/String;
    :cond_7d
    if-lez v7, :cond_8a

    .line 381
    :try_start_7f
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->waitForLock()V

    .line 382
    new-instance v2, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    invoke-direct {v2}, Lcom/google/android/apps/plus/network/HttpTransactionMetrics;-><init>()V

    invoke-virtual {v10, p2, v2}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->start(Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 384
    :cond_8a
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_7f .. :try_end_8c} :catchall_90

    .line 412
    invoke-virtual {p2, v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    goto :goto_13

    .line 386
    :catchall_90
    move-exception v2

    :try_start_91
    monitor-exit v3
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    :try_start_92
    throw v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_93

    .line 412
    .end local v11           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_93
    move-exception v2

    move-object v1, v10

    .end local v10           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v1       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    :goto_95
    invoke-virtual {p2, v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    throw v2

    .restart local v9       #gaiaId:Ljava/lang/String;
    .restart local v11       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_99
    move-exception v2

    goto :goto_95

    .end local v1           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v10       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    :cond_9b
    move-object v1, v10

    .end local v10           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v1       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    goto :goto_63
.end method

.method public static getAvatarBackgroundColor(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 247
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sBackgroundColor:I

    if-nez v0, :cond_11

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sBackgroundColor:I

    .line 250
    :cond_11
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sBackgroundColor:I

    return v0
.end method

.method public static getLargeAvatarSize(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 236
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sLargeAvatarSize:I

    if-nez v0, :cond_15

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sLargeAvatarSize:I

    .line 240
    :cond_15
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sLargeAvatarSize:I

    return v0
.end method

.method public static getMediumAvatarSize(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 192
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sMediumAvatarSize:I

    if-nez v0, :cond_15

    .line 193
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sMediumAvatarSize:I

    .line 196
    :cond_15
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sMediumAvatarSize:I

    return v0
.end method

.method public static getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 205
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMedium:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1b

    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 207
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f0200af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMedium:Landroid/graphics/Bitmap;

    .line 210
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_1b
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMedium:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public static getMediumDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "context"
    .parameter "round"

    .prologue
    .line 219
    if-eqz p1, :cond_17

    sget-boolean v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sRoundAvatarsEnabled:Z

    if-eqz v0, :cond_17

    .line 220
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMediumRound:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 221
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMediumRound:Landroid/graphics/Bitmap;

    .line 224
    :cond_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMediumRound:Landroid/graphics/Bitmap;

    .line 226
    :goto_16
    return-object v0

    :cond_17
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16
.end method

.method public static getSmallAvatarSize(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 149
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sSmallAvatarSize:I

    if-nez v0, :cond_15

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sSmallAvatarSize:I

    .line 153
    :cond_15
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sSmallAvatarSize:I

    return v0
.end method

.method public static getSmallDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 162
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmall:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 163
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmall:Landroid/graphics/Bitmap;

    .line 166
    :cond_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getSmallDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "context"
    .parameter "round"

    .prologue
    .line 175
    if-eqz p1, :cond_17

    sget-boolean v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sRoundAvatarsEnabled:Z

    if-eqz v0, :cond_17

    .line 176
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmallRound:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 177
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmallRound:Landroid/graphics/Bitmap;

    .line 180
    :cond_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmallRound:Landroid/graphics/Bitmap;

    .line 182
    :goto_16
    return-object v0

    :cond_17
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16
.end method

.method public static getTinyAvatarSize(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 106
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sTinyAvatarSize:I

    if-nez v0, :cond_15

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sTinyAvatarSize:I

    .line 110
    :cond_15
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sTinyAvatarSize:I

    return v0
.end method

.method public static getTinyDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 119
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTiny:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 120
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTiny:Landroid/graphics/Bitmap;

    .line 123
    :cond_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTiny:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getTinyDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "context"
    .parameter "round"

    .prologue
    .line 132
    if-eqz p1, :cond_17

    sget-boolean v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sRoundAvatarsEnabled:Z

    if-eqz v0, :cond_17

    .line 133
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTinyRound:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 134
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getRoundedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTinyRound:Landroid/graphics/Bitmap;

    .line 137
    :cond_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTinyRound:Landroid/graphics/Bitmap;

    .line 139
    :goto_16
    return-object v0

    :cond_17
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_16
.end method

.method public static insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[BZ[B)V
    .registers 13
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "smallImageBytes"
    .parameter "mediumImageDownloaded"
    .parameter "mediumImageBytes"

    .prologue
    .line 735
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[BZ[B[B)V

    .line 737
    return-void
.end method

.method public static insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[BZ[B[B)V
    .registers 16
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "smallImageBytes"
    .parameter "mediumImageDownloaded"
    .parameter "mediumImageBytes"
    .parameter "largeImageBytes"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 742
    const-string v4, "EsAvatarData"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 743
    const-string v6, "EsAvatarData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>> Avatar: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " small: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_cf

    array-length v4, p3

    :goto_25
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " bytes,"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " medium: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p5, :cond_d2

    array-length v4, p5

    :goto_38
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " bytes,"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " large: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p6, :cond_4b

    array-length v5, p6

    :cond_4b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_5c
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 754
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 757
    .local v3, values:Landroid/content/ContentValues;
    if-nez p3, :cond_d5

    .line 758
    const/4 v2, 0x1

    .line 766
    .local v2, signature:I
    :cond_6d
    :goto_6d
    const-string v4, "signature"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 767
    const-string v4, "small_image"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 768
    const-string v4, "image_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 769
    if-eqz p4, :cond_98

    .line 770
    const-string v4, "photo_downloaded"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    const-string v4, "medium_image"

    invoke-virtual {v3, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 774
    :cond_98
    if-eqz p6, :cond_9f

    .line 775
    const-string v4, "large_image"

    invoke-virtual {v3, v4, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 778
    :cond_9f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 780
    :try_start_a2
    const-string v4, "avatars"

    const-string v5, "user_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v4, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 782
    .local v0, count:I
    if-nez v0, :cond_c1

    .line 783
    const-string v4, "user_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v4, "avatars"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 786
    :cond_c1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c4
    .catchall {:try_start_a2 .. :try_end_c4} :catchall_df

    .line 788
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 791
    invoke-static {p0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/google/android/apps/plus/service/ImageCache;->notifyAvatarChange(Ljava/lang/String;)V

    .line 792
    return-void

    .end local v0           #count:I
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #signature:I
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_cf
    move v4, v5

    .line 743
    goto/16 :goto_25

    :cond_d2
    move v4, v5

    goto/16 :goto_38

    .line 760
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_d5
    invoke-static {p3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    .line 761
    .restart local v2       #signature:I
    if-eqz v2, :cond_dd

    if-ne v2, v8, :cond_6d

    .line 762
    :cond_dd
    const/4 v2, 0x2

    goto :goto_6d

    .line 788
    :catchall_df
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public static insertDefaultAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;)V
    .registers 11
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"

    .prologue
    const/4 v6, 0x1

    .line 691
    const-string v3, "EsAvatarData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 692
    const-string v3, "EsAvatarData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>> Avatar does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 698
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 700
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "small_image"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 701
    const-string v3, "medium_image"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 702
    const-string v3, "large_image"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 703
    const-string v3, "image_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 704
    const-string v3, "photo_downloaded"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 705
    const-string v3, "signature"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 709
    :try_start_61
    const-string v3, "avatars"

    const-string v4, "user_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 711
    .local v0, count:I
    if-nez v0, :cond_80

    .line 712
    const-string v3, "user_id"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v3, "avatars"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 715
    :cond_80
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_83
    .catchall {:try_start_61 .. :try_end_83} :catchall_8e

    .line 717
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 720
    invoke-static {p0}, Lcom/google/android/apps/plus/service/ImageCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/apps/plus/service/ImageCache;->notifyAvatarChange(Ljava/lang/String;)V

    .line 721
    return-void

    .line 717
    .end local v0           #count:I
    :catchall_8e
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public static insertLargeAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "gaiaId"
    .parameter "imageBytes"

    .prologue
    .line 803
    const-string v0, "EsAvatarData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 804
    const-string v1, "EsAvatarData"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Large avatar bytes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_48

    array-length v0, p3

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_24
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v7

    .line 809
    .local v7, color:I
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p3, v0, v7}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p3, v0, v7}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v5

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getLargeAvatarSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p3, v0, v7}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[BZ[B[B)V

    .line 814
    return-void

    .line 804
    .end local v7           #color:I
    :cond_48
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static insertProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "imageBytes"

    .prologue
    .line 824
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertLargeAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;[B)V

    .line 825
    return-void
.end method

.method private static loadAndroidContactAvatars(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashSet;)V
    .registers 25
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            "[B>;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    .local p3, avatarsToDownload:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 599
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 600
    .local v10, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_9
    if-ge v13, v10, :cond_dd

    .line 601
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 602
    .local v19, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactLookupKey()Ljava/lang/String;

    move-result-object v14

    .line 603
    .local v14, lookupKey:Ljava/lang/String;
    if-nez v14, :cond_1c

    .line 600
    :goto_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 607
    :cond_1c
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/content/AvatarRequest;->getRectangularAvatarRequest()Lcom/google/android/apps/plus/content/AvatarRequest;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 609
    const/16 v18, 0x0

    .line 610
    .local v18, photoUri:Landroid/net/Uri;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v4, v6, :cond_b1

    .line 611
    const-wide/16 v15, 0x0

    .line 612
    .local v15, photoId:J
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v4, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 613
    .local v3, contactUri:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "photo_id"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 617
    .local v17, photoIdCursor:Landroid/database/Cursor;
    :try_start_44
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 618
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_ac

    move-result-wide v15

    .line 621
    :cond_51
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 624
    const-wide/16 v6, 0x0

    cmp-long v4, v15, v6

    if-eqz v4, :cond_de

    .line 625
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 632
    .end local v15           #photoId:J
    .end local v17           #photoIdCursor:Landroid/database/Cursor;
    .end local v18           #photoUri:Landroid/net/Uri;
    .local v5, photoUri:Landroid/net/Uri;
    :goto_61
    const/4 v12, 0x0

    .line 633
    .local v12, data:[B
    if-eqz v5, :cond_82

    .line 634
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "data15"

    aput-object v7, v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 637
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_74
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 638
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_be

    move-result-object v12

    .line 641
    :cond_7f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 645
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_82
    if-eqz v12, :cond_a3

    .line 646
    const/16 v20, 0x0

    .line 647
    .local v20, size:I
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v4

    packed-switch v4, :pswitch_data_e2

    .line 653
    :goto_8d
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/content/AvatarRequest;->isRounded()Z

    move-result v4

    if-eqz v4, :cond_d2

    sget-boolean v4, Lcom/google/android/apps/plus/content/EsAvatarData;->sRoundAvatarsEnabled:Z

    if-eqz v4, :cond_d2

    .line 654
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v12, v1, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToRoundBitmap(Landroid/content/Context;[BII)[B

    move-result-object v12

    .line 661
    .end local v20           #size:I
    :cond_a3
    :goto_a3
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_19

    .line 621
    .end local v5           #photoUri:Landroid/net/Uri;
    .end local v12           #data:[B
    .restart local v15       #photoId:J
    .restart local v17       #photoIdCursor:Landroid/database/Cursor;
    .restart local v18       #photoUri:Landroid/net/Uri;
    :catchall_ac
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    .line 628
    .end local v3           #contactUri:Landroid/net/Uri;
    .end local v15           #photoId:J
    .end local v17           #photoIdCursor:Landroid/database/Cursor;
    :cond_b1
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v4, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 629
    .restart local v3       #contactUri:Landroid/net/Uri;
    const-string v4, "photo"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .end local v18           #photoUri:Landroid/net/Uri;
    .restart local v5       #photoUri:Landroid/net/Uri;
    goto :goto_61

    .line 641
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #data:[B
    :catchall_be
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    .line 648
    .end local v11           #cursor:Landroid/database/Cursor;
    .restart local v20       #size:I
    :pswitch_c3
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v20

    goto :goto_8d

    .line 649
    :pswitch_c8
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v20

    goto :goto_8d

    .line 650
    :pswitch_cd
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v20

    goto :goto_8d

    .line 657
    :cond_d2
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v4

    move/from16 v0, v20

    invoke-static {v12, v0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v12

    goto :goto_a3

    .line 663
    .end local v3           #contactUri:Landroid/net/Uri;
    .end local v5           #photoUri:Landroid/net/Uri;
    .end local v12           #data:[B
    .end local v14           #lookupKey:Ljava/lang/String;
    .end local v19           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .end local v20           #size:I
    :cond_dd
    return-void

    .restart local v3       #contactUri:Landroid/net/Uri;
    .restart local v14       #lookupKey:Ljava/lang/String;
    .restart local v15       #photoId:J
    .restart local v17       #photoIdCursor:Landroid/database/Cursor;
    .restart local v18       #photoUri:Landroid/net/Uri;
    .restart local v19       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_de
    move-object/from16 v5, v18

    .end local v18           #photoUri:Landroid/net/Uri;
    .restart local v5       #photoUri:Landroid/net/Uri;
    goto :goto_61

    .line 647
    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_c3
        :pswitch_c8
        :pswitch_cd
    .end packed-switch
.end method

.method public static loadAvatars(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .registers 14
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            "[B>;"
        }
    .end annotation

    .prologue
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    const/4 v2, 0x2

    .line 425
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    .line 427
    .local v7, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v7, :cond_d

    .line 480
    :cond_c
    :goto_c
    return-object v5

    .line 431
    :cond_d
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 432
    .local v6, avatarsToDownload:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 433
    .local v10, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v0

    if-nez v0, :cond_32

    .line 434
    new-instance v11, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/AvatarRequest;->getGaiaId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0, v2}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .local v11, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    move-object v10, v11

    .line 436
    .end local v11           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .restart local v10       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_32
    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/AvatarRequest;->getRectangularAvatarRequest()Lcom/google/android/apps/plus/content/AvatarRequest;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 439
    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_3a
    invoke-static {p0, v7}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 441
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 443
    const/4 v3, 0x0

    :try_start_46
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAvatars(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;IILjava/util/HashMap;Ljava/util/HashSet;)V

    .line 445
    const/4 v3, 0x1

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAvatars(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;IILjava/util/HashMap;Ljava/util/HashSet;)V

    .line 447
    const/4 v3, 0x2

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAvatars(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;IILjava/util/HashMap;Ljava/util/HashSet;)V
    :try_end_63
    .catchall {:try_start_46 .. :try_end_63} :catchall_b7

    .line 450
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 453
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 454
    invoke-static {p0, p1, v5, v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAndroidContactAvatars(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 457
    :cond_6f
    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 458
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 461
    :try_start_78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    .local v8, i:I
    :cond_7c
    :goto_7c
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_c2

    .line 462
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/AvatarRequest;->getRectangularAvatarRequest()Lcom/google/android/apps/plus/content/AvatarRequest;

    move-result-object v10

    .line 463
    .restart local v10       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v0

    if-nez v0, :cond_9b

    .line 464
    new-instance v11, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/AvatarRequest;->getGaiaId()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-direct {v11, v0, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .restart local v11       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    move-object v10, v11

    .line 467
    .end local v11           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .restart local v10       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_9b
    invoke-virtual {v6, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 468
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    .line 469
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 473
    :goto_ae
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_7c

    .line 476
    .end local v8           #i:I
    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_b4
    move-exception v0

    monitor-exit v2
    :try_end_b6
    .catchall {:try_start_78 .. :try_end_b6} :catchall_b4

    throw v0

    .line 450
    :catchall_b7
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 471
    .restart local v8       #i:I
    .restart local v10       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_bc
    :try_start_bc
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 476
    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_c2
    monitor-exit v2
    :try_end_c3
    .catchall {:try_start_bc .. :try_end_c3} :catchall_b4

    .line 478
    invoke-static {p0, v7}, Lcom/google/android/apps/plus/content/EsAvatarData;->requestAvatarSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_c
.end method

.method private static loadAvatars(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;IILjava/util/HashMap;Ljava/util/HashSet;)V
    .registers 30
    .parameter "context"
    .parameter "db"
    .parameter
    .parameter "size"
    .parameter "sizeInPx"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;II",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            "[B>;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/content/AvatarRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    .local p5, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    .local p6, avatarsToDownload:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    const/16 v17, 0x0

    .line 490
    .local v17, found:Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    .line 491
    .local v12, count:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_8
    move/from16 v0, v19

    if-ge v0, v12, :cond_26

    .line 492
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 493
    .local v21, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_29

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 494
    const/16 v17, 0x1

    .line 499
    .end local v21           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_26
    if-nez v17, :cond_2c

    .line 591
    :goto_28
    return-void

    .line 491
    .restart local v21       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_29
    add-int/lit8 v19, v19, 0x1

    goto :goto_8

    .line 503
    .end local v21           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_2c
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v15, filteredRequest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v10, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 506
    .local v22, sb:Ljava/lang/StringBuilder;
    const-string v2, "user_id IN ("

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const/16 v19, 0x0

    :goto_44
    move/from16 v0, v19

    if-ge v0, v12, :cond_7a

    .line 508
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 509
    .restart local v21       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_77

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_77

    .line 510
    const-string v2, "?,"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_77
    add-int/lit8 v19, v19, 0x1

    goto :goto_44

    .line 515
    .end local v21           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_7a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 516
    const/16 v2, 0x29

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 518
    .local v5, selection:Ljava/lang/String;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 520
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 523
    .local v13, cursor:Landroid/database/Cursor;
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_c7

    .line 524
    :try_start_9f
    const-string v20, "medium_image"

    .line 528
    .local v20, imageColumn:Ljava/lang/String;
    :goto_a1
    const-string v3, "avatars"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "user_id"

    aput-object v7, v4, v2

    const/4 v2, 0x1

    const-string v7, "photo_downloaded"

    aput-object v7, v4, v2

    const/4 v2, 0x2

    aput-object v20, v4, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 533
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_bf
    .catchall {:try_start_9f .. :try_end_bf} :catchall_133

    move-result v2

    if-nez v2, :cond_ca

    .line 589
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_28

    .line 526
    .end local v20           #imageColumn:Ljava/lang/String;
    :cond_c7
    :try_start_c7
    const-string v20, "small_image"

    .restart local v20       #imageColumn:Ljava/lang/String;
    goto :goto_a1

    .line 537
    :cond_ca
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_18f

    .line 538
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 539
    .local v18, gaiaId:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_108

    const/4 v14, 0x1

    .line 540
    .local v14, downloaded:Z
    :goto_dd
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v11

    .line 541
    .local v11, bytes:[B
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 542
    .local v16, filteredRequestCount:I
    const/16 v19, 0x0

    :goto_e8
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_ca

    .line 543
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 544
    .restart local v21       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->getGaiaId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 545
    packed-switch p3, :pswitch_data_194

    .line 542
    :cond_105
    :goto_105
    add-int/lit8 v19, v19, 0x1

    goto :goto_e8

    .line 539
    .end local v11           #bytes:[B
    .end local v14           #downloaded:Z
    .end local v16           #filteredRequestCount:I
    .end local v21           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_108
    const/4 v14, 0x0

    goto :goto_dd

    .line 547
    .restart local v11       #bytes:[B
    .restart local v14       #downloaded:Z
    .restart local v16       #filteredRequestCount:I
    .restart local v21       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :pswitch_10a
    if-eqz v14, :cond_105

    .line 548
    new-instance v2, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-direct {v2, v0, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->isRounded()Z

    move-result v2

    if-eqz v2, :cond_138

    sget-boolean v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sRoundAvatarsEnabled:Z

    if-eqz v2, :cond_138

    .line 551
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v11, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToRoundBitmap(Landroid/content/Context;[BI)[B

    move-result-object v11

    .line 556
    :goto_12b
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_132
    .catchall {:try_start_c7 .. :try_end_132} :catchall_133

    goto :goto_105

    .line 589
    .end local v11           #bytes:[B
    .end local v14           #downloaded:Z
    .end local v16           #filteredRequestCount:I
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v20           #imageColumn:Ljava/lang/String;
    .end local v21           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_133
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 554
    .restart local v11       #bytes:[B
    .restart local v14       #downloaded:Z
    .restart local v16       #filteredRequestCount:I
    .restart local v18       #gaiaId:Ljava/lang/String;
    .restart local v20       #imageColumn:Ljava/lang/String;
    .restart local v21       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_138
    :try_start_138
    move/from16 v0, p4

    invoke-static {v11, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BI)[B

    move-result-object v11

    goto :goto_12b

    .line 562
    :pswitch_13f
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->getRectangularAvatarRequest()Lcom/google/android/apps/plus/content/AvatarRequest;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->isRounded()Z

    move-result v2

    if-eqz v2, :cond_15a

    sget-boolean v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sRoundAvatarsEnabled:Z

    if-eqz v2, :cond_15a

    .line 564
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v11, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToRoundBitmap(Landroid/content/Context;[BI)[B

    move-result-object v11

    .line 567
    :cond_15a
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_105

    .line 572
    :pswitch_162
    if-eqz v14, :cond_105

    .line 573
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->getRectangularAvatarRequest()Lcom/google/android/apps/plus/content/AvatarRequest;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/content/AvatarRequest;->isRounded()Z

    move-result v2

    if-eqz v2, :cond_188

    sget-boolean v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sRoundAvatarsEnabled:Z

    if-eqz v2, :cond_188

    .line 575
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v11, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToRoundBitmap(Landroid/content/Context;[BI)[B

    move-result-object v11

    .line 580
    :goto_17f
    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_105

    .line 578
    :cond_188
    move/from16 v0, p4

    invoke-static {v11, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BI)[B
    :try_end_18d
    .catchall {:try_start_138 .. :try_end_18d} :catchall_133

    move-result-object v11

    goto :goto_17f

    .line 589
    .end local v11           #bytes:[B
    .end local v14           #downloaded:Z
    .end local v16           #filteredRequestCount:I
    .end local v18           #gaiaId:Ljava/lang/String;
    .end local v21           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_18f
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_28

    .line 545
    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_10a
        :pswitch_13f
        :pswitch_162
    .end packed-switch
.end method

.method public static pauseAvatarDownloads()V
    .registers 1

    .prologue
    .line 335
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 336
    return-void
.end method

.method private static queryMissingAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 14
    .parameter "context"
    .parameter "account"

    .prologue
    .line 301
    sget-object v11, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    monitor-enter v11

    .line 302
    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 304
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "contacts LEFT OUTER JOIN avatars ON (avatars.user_id=contacts.gaia_id)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "gaia_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(in_my_circles!=0 OR gaia_id=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "gaia_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " NOT NULL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "photo_downloaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0 OR "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "photo_downloaded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NULL)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "UPPER(name)"

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_95

    move-result-object v10

    .line 317
    .local v10, cursor:Landroid/database/Cursor;
    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_98

    .line 318
    new-instance v9, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v9, v1, v2}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    .line 320
    .local v9, avatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    .line 321
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 322
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_6c .. :try_end_8f} :catchall_90

    goto :goto_6c

    .line 326
    .end local v9           #avatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_90
    move-exception v1

    :try_start_91
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 328
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #cursor:Landroid/database/Cursor;
    :catchall_95
    move-exception v1

    monitor-exit v11
    :try_end_97
    .catchall {:try_start_91 .. :try_end_97} :catchall_95

    throw v1

    .line 326
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_98
    :try_start_98
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 328
    monitor-exit v11
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_95

    .line 329
    return-void
.end method

.method protected static requestAvatarSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 672
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 673
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->mHandler:Landroid/os/Handler;

    .line 675
    :cond_f
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/content/EsAvatarData$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/content/EsAvatarData$1;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    return-void
.end method

.method public static resumeAvatarDownloads()V
    .registers 1

    .prologue
    .line 342
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 343
    return-void
.end method

.method public static syncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 261
    sget-object v4, Lcom/google/android/apps/plus/content/EsAvatarData;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 262
    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->queryMissingAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 264
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsAvatarData;->downloadAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    .line 265
    .local v1, success:Z
    if-eqz v1, :cond_2a

    .line 266
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 268
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "avatars_downloaded"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    const-string v3, "account_status"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_2a
    monitor-exit v4

    .line 273
    return-void

    .line 272
    .end local v1           #success:Z
    :catchall_2c
    move-exception v3

    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method private static waitForLock()V
    .registers 1

    .prologue
    .line 349
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 350
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 351
    return-void
.end method
