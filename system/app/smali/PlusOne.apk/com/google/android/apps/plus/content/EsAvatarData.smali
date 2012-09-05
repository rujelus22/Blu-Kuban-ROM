.class public Lcom/google/android/apps/plus/content/EsAvatarData;
.super Ljava/lang/Object;
.source "EsAvatarData.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static sBackgroundColor:I

.field private static sDefaultAvatarMedium:Landroid/graphics/Bitmap;

.field private static sDefaultAvatarSmall:Landroid/graphics/Bitmap;

.field private static sDefaultAvatarTiny:Landroid/graphics/Bitmap;

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

.field private static sSmallAvatarSize:I

.field private static final sSyncLock:Ljava/lang/Object;

.field private static sTinyAvatarSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sSyncLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    .line 92
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "db"
    .parameter "account"

    .prologue
    .line 739
    const-string v0, "avatars"

    const-string v1, "user_id NOT IN (SELECT DISTINCT gaia_id FROM contacts)"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    return-void
.end method

.method private static downloadAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 306
    const-string v2, "Avatars"

    invoke-virtual {p2, v2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onStart(Ljava/lang/String;)V

    .line 307
    const/4 v8, 0x0

    .line 308
    .local v8, count:I
    const/4 v1, 0x0

    .line 309
    .local v1, operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    const/4 v7, 0x0

    .local v7, batchSize:I
    move-object v9, v1

    .line 312
    .end local v1           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .local v9, operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    :goto_9
    :try_start_9
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->isCanceled()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_8c

    move-result v2

    if-eqz v2, :cond_14

    .line 313
    const/4 v2, 0x0

    .line 349
    :goto_10
    invoke-virtual {p2, v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    .line 326
    return v2

    .line 316
    :cond_14
    const/4 v10, 0x0

    .line 317
    .local v10, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :try_start_15
    sget-object v3, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    monitor-enter v3
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_8c

    .line 318
    :try_start_18
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7a

    .line 319
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object v10, v0

    .line 320
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 328
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_89

    .line 330
    :try_start_30
    const-string v2, "EsAvatarData"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 331
    const-string v2, "EsAvatarData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Downloading avatar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_51
    if-nez v9, :cond_94

    .line 335
    new-instance v1, Lcom/google/android/apps/plus/api/MediumAvatarOperation;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Landroid/content/Intent;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    :try_end_5d
    .catchall {:try_start_30 .. :try_end_5d} :catchall_8c

    .line 338
    .end local v9           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v1       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    :goto_5d
    :try_start_5d
    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->getAvatar(J)V

    .line 339
    add-int/lit8 v8, v8, 0x1

    .line 340
    add-int/lit8 v7, v7, 0x1

    .line 341
    const/16 v2, 0x10

    if-lt v7, v2, :cond_78

    .line 342
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->waitForLock()V

    .line 343
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V
    :try_end_76
    .catchall {:try_start_5d .. :try_end_76} :catchall_92

    .line 344
    const/4 v7, 0x0

    .line 345
    const/4 v1, 0x0

    :cond_78
    move-object v9, v1

    .line 347
    .end local v1           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v9       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    goto :goto_9

    .line 322
    :cond_7a
    if-lez v7, :cond_86

    .line 323
    :try_start_7c
    invoke-static {}, Lcom/google/android/apps/plus/content/EsAvatarData;->waitForLock()V

    .line 324
    invoke-virtual {p2}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->getHttpTransactionMetrics()Lcom/google/android/apps/plus/network/HttpTransactionMetrics;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/google/android/apps/plus/api/MediumAvatarOperation;->start(Lcom/google/android/apps/plus/network/HttpTransactionMetrics;)V

    .line 326
    :cond_86
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_10

    .line 328
    :catchall_89
    move-exception v2

    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_7c .. :try_end_8b} :catchall_89

    :try_start_8b
    throw v2
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8c

    .line 349
    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_8c
    move-exception v2

    move-object v1, v9

    .end local v9           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v1       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    :goto_8e
    invoke-virtual {p2, v8}, Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;->onFinish(I)V

    throw v2

    .restart local v10       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_92
    move-exception v2

    goto :goto_8e

    .end local v1           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v9       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    :cond_94
    move-object v1, v9

    .end local v9           #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    .restart local v1       #operation:Lcom/google/android/apps/plus/api/MediumAvatarOperation;
    goto :goto_5d
.end method

.method public static getAvatarBackgroundColor(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 190
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sBackgroundColor:I

    if-nez v0, :cond_11

    .line 191
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sBackgroundColor:I

    .line 193
    :cond_11
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sBackgroundColor:I

    return v0
.end method

.method public static getLargeAvatarSize(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 179
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sLargeAvatarSize:I

    if-nez v0, :cond_15

    .line 180
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sLargeAvatarSize:I

    .line 183
    :cond_15
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sLargeAvatarSize:I

    return v0
.end method

.method public static getMediumAvatarSize(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 152
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sMediumAvatarSize:I

    if-nez v0, :cond_15

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sMediumAvatarSize:I

    .line 156
    :cond_15
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sMediumAvatarSize:I

    return v0
.end method

.method public static getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 165
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMedium:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1b

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 167
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMedium:Landroid/graphics/Bitmap;

    .line 170
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_1b
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarMedium:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public static getSmallAvatarSize(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 126
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sSmallAvatarSize:I

    if-nez v0, :cond_15

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sSmallAvatarSize:I

    .line 130
    :cond_15
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sSmallAvatarSize:I

    return v0
.end method

.method public static getSmallDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 139
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmall:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 140
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmall:Landroid/graphics/Bitmap;

    .line 143
    :cond_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarSmall:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static getTinyAvatarSize(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 100
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sTinyAvatarSize:I

    if-nez v0, :cond_15

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sTinyAvatarSize:I

    .line 104
    :cond_15
    sget v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sTinyAvatarSize:I

    return v0
.end method

.method public static getTinyDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "context"

    .prologue
    .line 113
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTiny:Landroid/graphics/Bitmap;

    if-nez v0, :cond_14

    .line 114
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumDefaultAvatar(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v1

    sget v2, Lcom/google/android/apps/plus/util/ImageUtils;->NO_COLOR:I

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTiny:Landroid/graphics/Bitmap;

    .line 117
    :cond_14
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDefaultAvatarTiny:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[BZ[B)V
    .registers 15
    .parameter "context"
    .parameter "account"
    .parameter "userId"
    .parameter "smallImageBytes"
    .parameter "mediumImageDownloaded"
    .parameter "mediumImageBytes"

    .prologue
    .line 642
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[BZ[B[B)V

    .line 644
    return-void
.end method

.method public static insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[BZ[B[B)V
    .registers 18
    .parameter "context"
    .parameter "account"
    .parameter "userId"
    .parameter "smallImageBytes"
    .parameter "mediumImageDownloaded"
    .parameter "mediumImageBytes"
    .parameter "largeImageBytes"

    .prologue
    .line 649
    const-string v5, "EsAvatarData"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 650
    const-string v6, "EsAvatarData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>> Avatar: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " small: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p4, :cond_da

    array-length v5, p4

    :goto_23
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bytes,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " medium: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p6, :cond_dd

    move-object/from16 v0, p6

    array-length v5, v0

    :goto_38
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bytes,"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " large: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p7, :cond_e0

    move-object/from16 v0, p7

    array-length v5, v0

    :goto_4d
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " bytes"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_5e
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 661
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/content/ContentValues;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 664
    .local v4, values:Landroid/content/ContentValues;
    if-nez p4, :cond_e3

    .line 665
    const/4 v3, 0x1

    .line 673
    .local v3, signature:I
    :cond_6f
    :goto_6f
    const-string v5, "signature"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 674
    const-string v5, "small_image"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 675
    const-string v5, "image_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 676
    if-eqz p5, :cond_9d

    .line 677
    const-string v5, "photo_downloaded"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string v5, "medium_image"

    move-object/from16 v0, p6

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 681
    :cond_9d
    if-eqz p7, :cond_a6

    .line 682
    const-string v5, "large_image"

    move-object/from16 v0, p7

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 685
    :cond_a6
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 687
    :try_start_a9
    const-string v5, "avatars"

    const-string v6, "user_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v2, v5, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 689
    .local v1, count:I
    if-nez v1, :cond_cc

    .line 690
    const-string v5, "user_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 691
    const-string v5, "avatars"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 693
    :cond_cc
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_cf
    .catchall {:try_start_a9 .. :try_end_cf} :catchall_ee

    .line 695
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 698
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Lcom/google/android/apps/plus/service/AvatarCache;->notifyChange(J)V

    .line 699
    return-void

    .line 650
    .end local v1           #count:I
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v3           #signature:I
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_da
    const/4 v5, 0x0

    goto/16 :goto_23

    :cond_dd
    const/4 v5, 0x0

    goto/16 :goto_38

    :cond_e0
    const/4 v5, 0x0

    goto/16 :goto_4d

    .line 667
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v4       #values:Landroid/content/ContentValues;
    :cond_e3
    invoke-static {p4}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    .line 668
    .restart local v3       #signature:I
    if-eqz v3, :cond_ec

    const/4 v5, 0x1

    if-ne v3, v5, :cond_6f

    .line 669
    :cond_ec
    const/4 v3, 0x2

    goto :goto_6f

    .line 695
    :catchall_ee
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public static insertDefaultAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J)V
    .registers 12
    .parameter "context"
    .parameter "account"
    .parameter "userId"

    .prologue
    const/4 v6, 0x1

    .line 598
    const-string v3, "EsAvatarData"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 599
    const-string v3, "EsAvatarData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>> Avatar does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_22
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 605
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 607
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "small_image"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 608
    const-string v3, "medium_image"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 609
    const-string v3, "large_image"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 610
    const-string v3, "image_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 611
    const-string v3, "photo_downloaded"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 612
    const-string v3, "signature"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 616
    :try_start_61
    const-string v3, "avatars"

    const-string v4, "user_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 618
    .local v0, count:I
    if-nez v0, :cond_84

    .line 619
    const-string v3, "user_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 620
    const-string v3, "avatars"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 622
    :cond_84
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_87
    .catchall {:try_start_61 .. :try_end_87} :catchall_92

    .line 624
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 627
    invoke-static {p0}, Lcom/google/android/apps/plus/service/AvatarCache;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/google/android/apps/plus/service/AvatarCache;->notifyChange(J)V

    .line 628
    return-void

    .line 624
    .end local v0           #count:I
    :catchall_92
    move-exception v3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public static insertLargeAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[B)V
    .registers 14
    .parameter "context"
    .parameter "account"
    .parameter "userId"
    .parameter "imageBytes"

    .prologue
    .line 710
    const-string v0, "EsAvatarData"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 711
    const-string v1, "EsAvatarData"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">>>>> Large avatar bytes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p4, :cond_48

    array-length v0, p4

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_24
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v8

    .line 716
    .local v8, color:I
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p4, v0, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p4, v0, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v6

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getLargeAvatarSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p4, v0, v8}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[BZ[B[B)V

    .line 721
    return-void

    .line 711
    .end local v8           #color:I
    :cond_48
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public static insertProfilePhoto(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;[B)V
    .registers 5
    .parameter "context"
    .parameter "account"
    .parameter "imageBytes"

    .prologue
    .line 731
    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/android/apps/plus/content/EsAvatarData;->insertLargeAvatar(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;J[B)V

    .line 732
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
    .line 511
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    .local p2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    .local p3, avatarsToDownload:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 512
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v10

    .line 513
    .local v10, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_9
    if-ge v13, v10, :cond_c4

    .line 514
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 515
    .local v19, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactLookupKey()Ljava/lang/String;

    move-result-object v14

    .line 516
    .local v14, lookupKey:Ljava/lang/String;
    if-nez v14, :cond_1c

    .line 513
    :goto_19
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 520
    :cond_1c
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 522
    const/16 v18, 0x0

    .line 523
    .local v18, photoUri:Landroid/net/Uri;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v4, v6, :cond_a3

    .line 524
    const-wide/16 v15, 0x0

    .line 525
    .local v15, photoId:J
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v4, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 526
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

    .line 530
    .local v17, photoIdCursor:Landroid/database/Cursor;
    :try_start_42
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 531
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4e
    .catchall {:try_start_42 .. :try_end_4e} :catchall_9e

    move-result-wide v15

    .line 534
    :cond_4f
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 537
    const-wide/16 v6, 0x0

    cmp-long v4, v15, v6

    if-eqz v4, :cond_c5

    .line 538
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-wide v0, v15

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 545
    .end local v15           #photoId:J
    .end local v17           #photoIdCursor:Landroid/database/Cursor;
    .end local v18           #photoUri:Landroid/net/Uri;
    .local v5, photoUri:Landroid/net/Uri;
    :goto_5f
    const/4 v12, 0x0

    .line 546
    .local v12, data:[B
    if-eqz v5, :cond_80

    .line 547
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

    .line 550
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_72
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 551
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_b0

    move-result-object v12

    .line 554
    :cond_7d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 558
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_80
    if-eqz v12, :cond_95

    .line 559
    const/16 v20, 0x0

    .line 560
    .local v20, size:I
    invoke-virtual/range {v19 .. v19}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v4

    packed-switch v4, :pswitch_data_c8

    .line 565
    :goto_8b
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getAvatarBackgroundColor(Landroid/content/Context;)I

    move-result v4

    move/from16 v0, v20

    invoke-static {v12, v0, v4}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BII)[B

    move-result-object v12

    .line 568
    .end local v20           #size:I
    :cond_95
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_19

    .line 534
    .end local v5           #photoUri:Landroid/net/Uri;
    .end local v12           #data:[B
    .restart local v15       #photoId:J
    .restart local v17       #photoIdCursor:Landroid/database/Cursor;
    .restart local v18       #photoUri:Landroid/net/Uri;
    :catchall_9e
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    .line 541
    .end local v3           #contactUri:Landroid/net/Uri;
    .end local v15           #photoId:J
    .end local v17           #photoIdCursor:Landroid/database/Cursor;
    :cond_a3
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v4, v14}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 542
    .restart local v3       #contactUri:Landroid/net/Uri;
    const-string v4, "photo"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .end local v18           #photoUri:Landroid/net/Uri;
    .restart local v5       #photoUri:Landroid/net/Uri;
    goto :goto_5f

    .line 554
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #data:[B
    :catchall_b0
    move-exception v4

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    .line 561
    .end local v11           #cursor:Landroid/database/Cursor;
    .restart local v20       #size:I
    :pswitch_b5
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v20

    goto :goto_8b

    .line 562
    :pswitch_ba
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v20

    goto :goto_8b

    .line 563
    :pswitch_bf
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v20

    goto :goto_8b

    .line 570
    .end local v3           #contactUri:Landroid/net/Uri;
    .end local v5           #photoUri:Landroid/net/Uri;
    .end local v12           #data:[B
    .end local v14           #lookupKey:Ljava/lang/String;
    .end local v19           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .end local v20           #size:I
    :cond_c4
    return-void

    .restart local v3       #contactUri:Landroid/net/Uri;
    .restart local v14       #lookupKey:Ljava/lang/String;
    .restart local v15       #photoId:J
    .restart local v17       #photoIdCursor:Landroid/database/Cursor;
    .restart local v18       #photoUri:Landroid/net/Uri;
    .restart local v19       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_c5
    move-object/from16 v5, v18

    .end local v18           #photoUri:Landroid/net/Uri;
    .restart local v5       #photoUri:Landroid/net/Uri;
    goto :goto_5f

    .line 560
    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_b5
        :pswitch_ba
        :pswitch_bf
    .end packed-switch
.end method

.method public static loadAvatars(Landroid/content/Context;Ljava/util/List;)Ljava/util/Map;
    .registers 15
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
    const/4 v3, 0x2

    .line 362
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 363
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v6

    .line 364
    .local v6, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-nez v6, :cond_d

    .line 417
    :cond_c
    :goto_c
    return-object v4

    .line 368
    :cond_d
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 369
    .local v5, avatarsToDownload:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 370
    .local v9, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v1

    if-nez v1, :cond_32

    .line 371
    new-instance v10, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v9}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactId()J

    move-result-wide v1

    invoke-direct {v10, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    .end local v9           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .local v10, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    move-object v9, v10

    .line 373
    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .restart local v9       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_32
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 376
    .end local v9           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_36
    invoke-static {p0, v6}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 378
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 380
    const/4 v2, 0x0

    :try_start_42
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getTinyAvatarSize(Landroid/content/Context;)I

    move-result v3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAvatars(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;IILjava/util/HashMap;Ljava/util/HashSet;)V

    .line 382
    const/4 v2, 0x1

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallAvatarSize(Landroid/content/Context;)I

    move-result v3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAvatars(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;IILjava/util/HashMap;Ljava/util/HashSet;)V

    .line 384
    const/4 v2, 0x2

    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAvatarData;->getMediumAvatarSize(Landroid/content/Context;)I

    move-result v3

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAvatars(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;IILjava/util/HashMap;Ljava/util/HashSet;)V
    :try_end_5c
    .catchall {:try_start_42 .. :try_end_5c} :catchall_ab

    .line 387
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 390
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_68

    .line 391
    invoke-static {p0, p1, v4, v5}, Lcom/google/android/apps/plus/content/EsAvatarData;->loadAndroidContactAvatars(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;Ljava/util/HashSet;)V

    .line 394
    :cond_68
    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 395
    sget-object v2, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 398
    :try_start_71
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .local v7, i:I
    :cond_75
    :goto_75
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_b6

    .line 399
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 400
    .restart local v10       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v1

    if-nez v1, :cond_bc

    .line 401
    new-instance v9, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactId()J

    move-result-wide v11

    const/4 v1, 0x2

    invoke-direct {v9, v11, v12, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    .line 404
    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .restart local v9       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :goto_8f
    invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 405
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 406
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 410
    :goto_a2
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_75

    .line 413
    .end local v7           #i:I
    .end local v9           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_a8
    move-exception v1

    monitor-exit v2
    :try_end_aa
    .catchall {:try_start_71 .. :try_end_aa} :catchall_a8

    throw v1

    .line 387
    :catchall_ab
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 408
    .restart local v7       #i:I
    .restart local v9       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_b0
    :try_start_b0
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 413
    .end local v9           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_b6
    monitor-exit v2
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_a8

    .line 415
    invoke-static {p0, v6}, Lcom/google/android/apps/plus/content/EsAvatarData;->requestAvatarSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    goto/16 :goto_c

    .restart local v10       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_bc
    move-object v9, v10

    .end local v10           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .restart local v9       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    goto :goto_8f
.end method

.method private static loadAvatars(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;IILjava/util/HashMap;Ljava/util/HashSet;)V
    .registers 30
    .parameter "db"
    .parameter
    .parameter "size"
    .parameter "sizeInPx"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 426
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    .local p4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/apps/plus/content/AvatarRequest;[B>;"
    .local p5, avatarsToDownload:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/content/AvatarRequest;>;"
    const/16 v17, 0x0

    .line 427
    .local v17, found:Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    .line 428
    .local v14, count:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_8
    move/from16 v0, v18

    if-ge v0, v14, :cond_2a

    .line 429
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 430
    .local v20, request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_2d

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactId()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-eqz v4, :cond_2d

    .line 431
    const/16 v17, 0x1

    .line 436
    .end local v20           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_2a
    if-nez v17, :cond_30

    .line 504
    :goto_2c
    return-void

    .line 428
    .restart local v20       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_2d
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 440
    .end local v20           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_30
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v12, args:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v21, sb:Ljava/lang/StringBuilder;
    const-string v4, "user_id IN ("

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const/16 v18, 0x0

    :goto_43
    move/from16 v0, v18

    if-ge v0, v14, :cond_78

    .line 444
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 445
    .restart local v20       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/plus/content/AvatarRequest;->getSize()I

    move-result v4

    move/from16 v0, p2

    if-ne v4, v0, :cond_75

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactId()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v4, v4, v9

    if-eqz v4, :cond_75

    .line 446
    const-string v4, "?,"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/apps/plus/content/AvatarRequest;->getContactId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_75
    add-int/lit8 v18, v18, 0x1

    goto :goto_43

    .line 450
    .end local v20           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :cond_78
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 451
    const/16 v4, 0x29

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 453
    .local v7, selection:Ljava/lang/String;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 455
    .local v8, selectionArgs:[Ljava/lang/String;
    const/4 v15, 0x0

    .line 458
    .local v15, cursor:Landroid/database/Cursor;
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_104

    .line 459
    :try_start_9d
    const-string v19, "medium_image"

    .line 463
    .local v19, imageColumn:Ljava/lang/String;
    :goto_9f
    const-string v5, "avatars"

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "user_id"

    aput-object v9, v6, v4

    const/4 v4, 0x1

    const-string v9, "photo_downloaded"

    aput-object v9, v6, v4

    const/4 v4, 0x2

    aput-object v19, v6, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 468
    :cond_ba
    :goto_ba
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_147

    .line 469
    const/4 v4, 0x0

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 470
    .local v22, userId:J
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_107

    const/16 v16, 0x1

    .line 471
    .local v16, downloaded:Z
    :goto_ce
    const/4 v4, 0x2

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 473
    .local v13, bytes:[B
    packed-switch p2, :pswitch_data_14c

    goto :goto_ba

    .line 475
    :pswitch_d7
    if-eqz v16, :cond_ba

    .line 476
    new-instance v20, Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    .line 477
    .restart local v20       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    new-instance v4, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v5, 0x2

    move-wide/from16 v0, v22

    invoke-direct {v4, v0, v1, v5}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 479
    move/from16 v0, p3

    invoke-static {v13, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BI)[B

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_fe
    .catchall {:try_start_9d .. :try_end_fe} :catchall_ff

    goto :goto_ba

    .line 502
    .end local v13           #bytes:[B
    .end local v16           #downloaded:Z
    .end local v19           #imageColumn:Ljava/lang/String;
    .end local v20           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .end local v22           #userId:J
    :catchall_ff
    move-exception v4

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v4

    .line 461
    :cond_104
    :try_start_104
    const-string v19, "small_image"

    .restart local v19       #imageColumn:Ljava/lang/String;
    goto :goto_9f

    .line 470
    .restart local v22       #userId:J
    :cond_107
    const/16 v16, 0x0

    goto :goto_ce

    .line 485
    .restart local v13       #bytes:[B
    .restart local v16       #downloaded:Z
    :pswitch_10a
    new-instance v20, Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    .line 486
    .restart local v20       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 487
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ba

    .line 492
    .end local v20           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    :pswitch_124
    if-eqz v16, :cond_ba

    .line 493
    new-instance v20, Lcom/google/android/apps/plus/content/AvatarRequest;

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    .line 494
    .restart local v20       #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    move-object/from16 v0, p5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 495
    move/from16 v0, p3

    invoke-static {v13, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->resizeToSquareBitmap([BI)[B

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_145
    .catchall {:try_start_104 .. :try_end_145} :catchall_ff

    goto/16 :goto_ba

    .line 502
    .end local v13           #bytes:[B
    .end local v16           #downloaded:Z
    .end local v20           #request:Lcom/google/android/apps/plus/content/AvatarRequest;
    .end local v22           #userId:J
    :cond_147
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2c

    .line 473
    :pswitch_data_14c
    .packed-switch 0x0
        :pswitch_d7
        :pswitch_10a
        :pswitch_124
    .end packed-switch
.end method

.method public static pauseAvatarDownloads()V
    .registers 1

    .prologue
    .line 277
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 278
    return-void
.end method

.method private static queryMissingAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 14
    .parameter "context"
    .parameter "account"

    .prologue
    .line 244
    sget-object v11, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    monitor-enter v11

    .line 245
    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 247
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "contacts LEFT OUTER JOIN avatars ON (avatars.user_id=contacts.gaia_id)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "gaia_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(in_my_circles!=0 OR gaia_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

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
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_83

    move-result-object v10

    .line 259
    .local v10, cursor:Landroid/database/Cursor;
    :cond_5a
    :goto_5a
    :try_start_5a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 260
    new-instance v9, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x2

    invoke-direct {v9, v1, v2, v3}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    .line 262
    .local v9, avatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 263
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object v1, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadSet:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_7e

    goto :goto_5a

    .line 268
    .end local v9           #avatarRequest:Lcom/google/android/apps/plus/content/AvatarRequest;
    :catchall_7e
    move-exception v1

    :try_start_7f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 270
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #cursor:Landroid/database/Cursor;
    :catchall_83
    move-exception v1

    monitor-exit v11
    :try_end_85
    .catchall {:try_start_7f .. :try_end_85} :catchall_83

    throw v1

    .line 268
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :cond_86
    :try_start_86
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 270
    monitor-exit v11
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_83

    .line 271
    return-void
.end method

.method protected static requestAvatarSync(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 579
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_f

    .line 580
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->mHandler:Landroid/os/Handler;

    .line 582
    :cond_f
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/plus/content/EsAvatarData$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/plus/content/EsAvatarData$1;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 592
    return-void
.end method

.method public static resumeAvatarDownloads()V
    .registers 1

    .prologue
    .line 284
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 285
    return-void
.end method

.method public static syncAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)V
    .registers 10
    .parameter "context"
    .parameter "account"
    .parameter "syncState"

    .prologue
    .line 204
    sget-object v4, Lcom/google/android/apps/plus/content/EsAvatarData;->sSyncLock:Ljava/lang/Object;

    monitor-enter v4

    .line 205
    :try_start_3
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsAvatarData;->queryMissingAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 207
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsAvatarData;->downloadAvatars(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;)Z

    move-result v1

    .line 208
    .local v1, success:Z
    if-eqz v1, :cond_2a

    .line 209
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 211
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 212
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "avatars_downloaded"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v3, "account_status"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 215
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_2a
    monitor-exit v4

    .line 216
    return-void

    .line 215
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
    .line 291
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 292
    sget-object v0, Lcom/google/android/apps/plus/content/EsAvatarData;->sDownloadLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 293
    return-void
.end method
