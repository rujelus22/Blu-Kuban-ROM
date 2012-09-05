.class public abstract Lcom/sec/android/app/camera/gallery/BaseImageList;
.super Ljava/lang/Object;
.source "BaseImageList.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImageList;


# static fields
.field private static final CACHE_CAPACITY:I = 0x200

.field private static final TAG:Ljava/lang/String; = "BaseImageList"

.field private static final sPathWithId:Ljava/util/regex/Pattern;


# instance fields
.field protected mBaseUri:Landroid/net/Uri;

.field protected mBucketId:Ljava/lang/String;

.field private final mCache:Lcom/sec/android/app/camera/gallery/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/camera/gallery/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/gallery/BaseImage;",
            ">;"
        }
    .end annotation
.end field

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorDeactivated:Z

.field protected mSort:I

.field protected mThumbUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 175
    const-string v0, "(.*)/\\d+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/gallery/BaseImageList;->sPathWithId:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 7
    .parameter "resolver"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 50
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/sec/android/app/camera/gallery/LruCache;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/gallery/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCache:Lcom/sec/android/app/camera/gallery/LruCache;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    .line 51
    iput p3, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mSort:I

    .line 52
    iput-object p2, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 53
    iput-object p4, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBucketId:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_28

    .line 58
    const-string v0, "BaseImageList"

    const-string v1, "createCursor returns null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_28
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCache:Lcom/sec/android/app/camera/gallery/LruCache;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/gallery/LruCache;->clear()V

    .line 65
    return-void
.end method

.method private getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_8

    .line 113
    const/4 v0, 0x0

    monitor-exit p0

    .line 118
    :goto_7
    return-object v0

    .line 114
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    if-eqz v0, :cond_14

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    .line 118
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit p0

    goto :goto_7

    .line 119
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private static getPathWithoutId(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter "uri"

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, path:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/camera/gallery/BaseImageList;->sPathWithId:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 180
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #path:Ljava/lang/String;
    :cond_15
    return-object v1
.end method

.method private isChildImageUri(Landroid/net/Uri;)Z
    .registers 5
    .parameter "uri"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 189
    .local v0, base:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/app/camera/gallery/BaseImageList;->getPathWithoutId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    :goto_3b
    return v1

    :cond_3c
    const/4 v1, 0x0

    goto :goto_3b
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 69
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->invalidateCursor()V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_4} :catch_12

    .line 74
    :goto_4
    iput-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 75
    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_11

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    iput-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    .line 79
    :cond_11
    return-void

    .line 70
    :catch_12
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "BaseImageList"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public contentUri(J)Landroid/net/Uri;
    .registers 8
    .parameter "id"

    .prologue
    .line 87
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 88
    .local v1, existingId:J
    cmp-long v3, v1, p1

    if-eqz v3, :cond_11

    .line 89
    const-string v3, "BaseImageList"

    const-string v4, "id mismatch"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_11
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_13} :catch_14

    .line 93
    .end local v1           #existingId:J
    :goto_13
    return-object v3

    .line 91
    :catch_14
    move-exception v0

    .line 93
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_13
.end method

.method protected abstract createCursor()Landroid/database/Cursor;
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 99
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_8

    .line 100
    const/4 v1, 0x0

    .line 102
    :goto_7
    return v1

    .line 101
    :cond_8
    monitor-enter p0

    .line 102
    :try_start_9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    monitor-exit p0

    goto :goto_7

    .line 103
    :catchall_f
    move-exception v1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;
    .registers 7
    .parameter "i"

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCache:Lcom/sec/android/app/camera/gallery/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/gallery/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/gallery/BaseImage;

    .line 124
    .local v1, result:Lcom/sec/android/app/camera/gallery/BaseImage;
    if-nez v1, :cond_2b

    .line 125
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 126
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_16

    .line 135
    .end local v0           #cursor:Landroid/database/Cursor;
    :goto_15
    return-object v2

    .line 128
    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_16
    monitor-enter p0

    .line 129
    :try_start_17
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/camera/gallery/BaseImage;

    move-result-object v1

    .line 132
    :goto_21
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCache:Lcom/sec/android/app/camera/gallery/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/gallery/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit p0

    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_2b
    move-object v2, v1

    .line 135
    goto :goto_15

    .restart local v0       #cursor:Landroid/database/Cursor;
    :cond_2d
    move-object v1, v2

    .line 129
    goto :goto_21

    .line 133
    :catchall_2f
    move-exception v2

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_17 .. :try_end_31} :catchall_2f

    throw v2
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/gallery/BaseImageList;->isChildImageUri(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 222
    :cond_7
    :goto_7
    return-object v3

    .line 201
    :cond_8
    :try_start_8
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_b} :catch_46

    move-result-wide v4

    .line 207
    .local v4, matchId:J
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 208
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_7

    .line 210
    monitor-enter p0

    .line 211
    const/4 v6, -0x1

    :try_start_14
    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 212
    const/4 v2, 0x0

    .local v2, i:I
    :goto_18
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_63

    .line 213
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->getImageId(Landroid/database/Cursor;)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-nez v6, :cond_60

    .line 214
    iget-object v6, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCache:Lcom/sec/android/app/camera/gallery/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/gallery/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/gallery/BaseImage;

    .line 215
    .local v3, image:Lcom/sec/android/app/camera/gallery/BaseImage;
    if-nez v3, :cond_41

    .line 216
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->loadImageFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/camera/gallery/BaseImage;

    move-result-object v3

    .line 217
    iget-object v6, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCache:Lcom/sec/android/app/camera/gallery/LruCache;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lcom/sec/android/app/camera/gallery/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_41
    monitor-exit p0

    goto :goto_7

    .line 223
    .end local v2           #i:I
    .end local v3           #image:Lcom/sec/android/app/camera/gallery/BaseImage;
    :catchall_43
    move-exception v6

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_43

    throw v6

    .line 202
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v4           #matchId:J
    :catch_46
    move-exception v1

    .line 203
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v6, "BaseImageList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to get id in: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 212
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #i:I
    .restart local v4       #matchId:J
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 222
    :cond_63
    :try_start_63
    monitor-exit p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_43

    goto :goto_7
.end method

.method protected abstract getImageId(Landroid/database/Cursor;)J
.end method

.method public getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I
    .registers 3
    .parameter "image"

    .prologue
    .line 227
    check-cast p1, Lcom/sec/android/app/camera/gallery/BaseImage;

    .end local p1
    iget v0, p1, Lcom/sec/android/app/camera/gallery/BaseImage;->mIndex:I

    return v0
.end method

.method protected invalidateCache()V
    .registers 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCache:Lcom/sec/android/app/camera/gallery/LruCache;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/gallery/LruCache;->clear()V

    .line 173
    return-void
.end method

.method protected invalidateCursor()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    .line 169
    :goto_4
    return-void

    .line 167
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mCursorDeactivated:Z

    goto :goto_4
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected abstract loadImageFromCursor(Landroid/database/Cursor;)Lcom/sec/android/app/camera/gallery/BaseImage;
.end method

.method public removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .registers 5
    .parameter "image"

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    .line 141
    check-cast p1, Lcom/sec/android/app/camera/gallery/BaseImage;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/camera/gallery/BaseImage;->onRemove()V

    .line 142
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->invalidateCursor()V

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->invalidateCache()V

    .line 144
    const/4 v0, 0x1

    .line 146
    :goto_19
    return v0

    .restart local p1
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public removeImageAt(I)Z
    .registers 3
    .parameter "i"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/gallery/BaseImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 153
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/gallery/BaseImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/gallery/BaseImageList;->removeImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v0

    .line 155
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method protected sortOrder()Ljava/lang/String;
    .registers 5

    .prologue
    .line 236
    iget v2, p0, Lcom/sec/android/app/camera/gallery/BaseImageList;->mSort:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    const-string v0, " ASC"

    .line 243
    .local v0, ascending:Ljava/lang/String;
    :goto_7
    const-string v1, "case ifnull(datetaken,0) when 0 then date_modified*1000 else datetaken end"

    .line 251
    .local v1, dateExpr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 236
    .end local v0           #ascending:Ljava/lang/String;
    .end local v1           #dateExpr:Ljava/lang/String;
    :cond_25
    const-string v0, " DESC"

    goto :goto_7
.end method
