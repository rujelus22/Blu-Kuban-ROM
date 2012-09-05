.class public final Lcom/android/email/provider/ContentCacheLru$CachedCursor;
.super Landroid/database/CursorWrapper;
.source "ContentCacheLru.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCacheLru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedCursor"
.end annotation


# instance fields
.field private isClosed:Z

.field private final mCache:Lcom/android/email/provider/ContentCacheLru;

.field private mCount:I

.field private final mCursor:Landroid/database/Cursor;

.field private final mId:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCacheLru;Ljava/lang/String;)V
    .registers 5
    .parameter "cursor"
    .parameter "cache"
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    .line 301
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 293
    iput v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    .line 296
    iput v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCount:I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->isClosed:Z

    .line 302
    iput-object p1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCursor:Landroid/database/Cursor;

    .line 303
    iput-object p2, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheLru;

    .line 304
    iput-object p3, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mId:Ljava/lang/String;

    .line 306
    sget-object v0, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->add(Ljava/lang/Object;)V

    .line 307
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 317
    iget-object v2, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheLru;

    monitor-enter v2

    .line 318
    :try_start_3
    sget-object v1, Lcom/android/email/provider/ContentCacheLru;->sActiveCursors:Lcom/android/email/provider/ContentCacheLru$CounterMap;

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v3}, Lcom/android/email/provider/ContentCacheLru$CounterMap;->subtract(Ljava/lang/Object;)I

    move-result v0

    .line 319
    .local v0, count:I
    if-nez v0, :cond_20

    iget-object v1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCache:Lcom/android/email/provider/ContentCacheLru;

    #getter for: Lcom/android/email/provider/ContentCacheLru;->mLruCache:Landroid/util/LruCache;
    invoke-static {v1}, Lcom/android/email/provider/ContentCacheLru;->access$100(Lcom/android/email/provider/ContentCacheLru;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCursor:Landroid/database/Cursor;

    if-eq v1, v3, :cond_20

    .line 320
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 322
    :cond_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    .line 323
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->isClosed:Z

    .line 324
    return-void

    .line 322
    .end local v0           #count:I
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 333
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCount:I

    if-gez v0, :cond_a

    .line 334
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCount:I

    .line 336
    :cond_a
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mCount:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 368
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    return v0
.end method

.method public final isAfterLast()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 393
    iget v1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final isBeforeFirst()Z
    .registers 3

    .prologue
    .line 388
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->isClosed:Z

    return v0
.end method

.method public final isLast()Z
    .registers 3

    .prologue
    .line 383
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final move(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 373
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .registers 2

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    .prologue
    .line 358
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 3
    .parameter "pos"

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    const/4 v0, -0x1

    if-ge p1, v0, :cond_b

    .line 345
    :cond_9
    const/4 v0, 0x0

    .line 348
    :goto_a
    return v0

    .line 347
    :cond_b
    iput p1, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    .line 348
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public moveToPrevious()Z
    .registers 2

    .prologue
    .line 363
    iget v0, p0, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCacheLru$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
