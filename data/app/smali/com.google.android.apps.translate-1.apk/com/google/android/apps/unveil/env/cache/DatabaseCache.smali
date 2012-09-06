.class public Lcom/google/android/apps/unveil/env/cache/DatabaseCache;
.super Lcom/google/android/apps/unveil/env/cache/AbstractCache;
.source "DatabaseCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/cache/DatabaseCache$1;,
        Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;,
        Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException;,
        Lcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
        "<",
        "Ljava/lang/String;",
        "Lcom/google/android/apps/unveil/env/Picture;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATED_DATE_INDEX:I

.field private static final DATA_INDEX:I

.field static final PROJECTION:[Ljava/lang/String;

.field static final SIMPLE_PROJECTION:[Ljava/lang/String;

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final contentProvider:Landroid/content/ContentResolver;

.field private final contentUri:Landroid/net/Uri;

.field private final inDiskPicturesAtMost:I

.field private final pictureFactory:Lcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;

.field private final reclaimRatio:F

.field private volatile totalCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 23
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "created"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->SIMPLE_PROJECTION:[Ljava/lang/String;

    .line 27
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;IFLcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;)V
    .registers 7
    .parameter "contentProvider"
    .parameter "contentUri"
    .parameter "inDiskSize"
    .parameter "reclaimRatio"
    .parameter "pictureFactory"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->totalCount:I

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentProvider:Landroid/content/ContentResolver;

    .line 43
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentUri:Landroid/net/Uri;

    .line 44
    iput p3, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->inDiskPicturesAtMost:I

    .line 45
    iput p4, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->reclaimRatio:F

    .line 46
    iput-object p5, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->pictureFactory:Lcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;

    .line 48
    sget-object v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->SIMPLE_PROJECTION:[Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->getCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->totalCount:I

    .line 49
    return-void
.end method

.method private static getCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)I
    .registers 13
    .parameter "contentResolver"
    .parameter "contentUri"
    .parameter "projection"

    .prologue
    const/4 v9, 0x0

    .line 78
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_7
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_a} :catch_15

    move-result-object v7

    .line 82
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1c

    .line 83
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 84
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 85
    return v6

    .line 79
    .end local v6           #count:I
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_15
    move-exception v8

    .line 80
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    new-instance v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException;

    invoke-direct {v0, v9}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException;-><init>(Lcom/google/android/apps/unveil/env/cache/DatabaseCache$1;)V

    throw v0

    .line 88
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_1c
    new-instance v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException;

    invoke-direct {v0, v9}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException;-><init>(Lcom/google/android/apps/unveil/env/cache/DatabaseCache$1;)V

    throw v0
.end method

.method public static makeDefault(Landroid/content/ContentResolver;Landroid/net/Uri;IFLcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;)Lcom/google/android/apps/unveil/env/cache/AbstractCache;
    .registers 13
    .parameter "contentProvider"
    .parameter "contentUri"
    .parameter "inDiskSize"
    .parameter "reclaimRatio"
    .parameter "pictureFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/net/Uri;",
            "IF",
            "Lcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;",
            ")",
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/env/Picture;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 59
    if-nez p0, :cond_9

    .line 60
    new-instance v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;

    invoke-direct {v0, v7}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;-><init>(Lcom/google/android/apps/unveil/env/cache/DatabaseCache$1;)V

    .line 67
    :goto_8
    return-object v0

    .line 64
    :cond_9
    :try_start_9
    new-instance v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;IFLcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;)V
    :try_end_13
    .catch Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException; {:try_start_9 .. :try_end_13} :catch_14

    goto :goto_8

    .line 66
    :catch_14
    move-exception v6

    .line 67
    .local v6, e:Lcom/google/android/apps/unveil/env/cache/DatabaseCache$DatabaseUnavailableException;
    new-instance v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;

    invoke-direct {v0, v7}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$NoOpCache;-><init>(Lcom/google/android/apps/unveil/env/cache/DatabaseCache$1;)V

    goto :goto_8
.end method

.method private reclaimDiskStorage()I
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 112
    iget v0, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->inDiskPicturesAtMost:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->reclaimRatio:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 113
    .local v7, leftCount:I
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentProvider:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->SIMPLE_PROJECTION:[Ljava/lang/String;

    const-string v5, "created DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 116
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1d

    move v0, v10

    .line 127
    :goto_1c
    return v0

    .line 119
    :cond_1d
    invoke-interface {v6, v7}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 120
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 121
    .local v8, timestamp:J
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentProvider:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentUri:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "created<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_1c

    .line 125
    .end local v8           #timestamp:J
    :cond_46
    sget-object v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Failed to move cursor to the %sth oldest query. Cannot delete."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 127
    goto :goto_1c
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Picture;
    .registers 13
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentProvider:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->PROJECTION:[Ljava/lang/String;

    const-string v3, "key=?"

    new-array v4, v10, [Ljava/lang/String;

    aput-object p1, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 98
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 99
    .local v7, data:[B
    if-eqz v7, :cond_2b

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->pictureFactory:Lcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;

    invoke-interface {v0, v7}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache$PictureFactory;->toPicture([B)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v8

    .line 101
    .local v8, picture:Lcom/google/android/apps/unveil/env/Picture;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 108
    .end local v7           #data:[B
    .end local v8           #picture:Lcom/google/android/apps/unveil/env/Picture;
    :goto_2a
    return-object v8

    .line 105
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_2e
    sget-object v0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Can not find thumbnail with key \'%s\' in local cache."

    new-array v2, v10, [Ljava/lang/Object;

    aput-object p1, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v8, v5

    .line 108
    goto :goto_2a
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->get(Ljava/lang/String;)Lcom/google/android/apps/unveil/env/Picture;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Lcom/google/android/apps/unveil/env/Picture;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->put(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Picture;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/google/android/apps/unveil/env/Picture;)V
    .registers 11
    .parameter "key"
    .parameter "picture"

    .prologue
    .line 133
    monitor-enter p0

    .line 134
    :try_start_1
    iget v3, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->totalCount:I

    iget v4, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->inDiskPicturesAtMost:I

    if-lt v3, v4, :cond_2d

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->reclaimDiskStorage()I

    move-result v0

    .line 136
    .local v0, deleted:I
    if-gtz v0, :cond_17

    .line 137
    sget-object v3, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "No space to save new thumbnail in disk."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    :cond_17
    iget v3, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->totalCount:I

    sub-int/2addr v3, v0

    iput v3, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->totalCount:I

    .line 140
    sget-object v3, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Deleted %d thumbnails from disk."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    .end local v0           #deleted:I
    :cond_2d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 143
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v3, "data"

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/env/Picture;->getJpegData()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 145
    iget-object v3, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentProvider:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->contentUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    .local v1, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->totalCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/apps/unveil/env/cache/DatabaseCache;->totalCount:I

    .line 147
    monitor-exit p0

    .line 148
    return-void

    .line 147
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :catchall_50
    move-exception v3

    monitor-exit p0
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_50

    throw v3
.end method
