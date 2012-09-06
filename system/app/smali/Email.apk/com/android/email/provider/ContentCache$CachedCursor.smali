.class public final Lcom/android/email/provider/ContentCache$CachedCursor;
.super Landroid/database/CursorWrapper;
.source "ContentCache.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CachedCursor"
.end annotation


# instance fields
.field private isClosed:Z

.field private final mCache:Lcom/android/email/provider/ContentCache;

.field private mCount:I

.field private final mCursor:Landroid/database/Cursor;

.field private final mId:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Lcom/android/email/provider/ContentCache;Ljava/lang/String;)V
    .registers 5
    .parameter "cursor"
    .parameter "cache"
    .parameter "id"

    .prologue
    const/4 v0, -0x1

    .line 293
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 287
    iput v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    .line 289
    iput v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->isClosed:Z

    .line 294
    iput-object p1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    .line 295
    iput-object p2, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCache:Lcom/android/email/provider/ContentCache;

    .line 296
    iput-object p3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mId:Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    invoke-virtual {v0, p1}, Lcom/android/email/provider/ContentCache$CounterMap;->add(Ljava/lang/Object;)V

    .line 299
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 308
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCache:Lcom/android/email/provider/ContentCache;

    monitor-enter v2

    .line 309
    :try_start_3
    sget-object v1, Lcom/android/email/provider/ContentCache;->sActiveCursors:Lcom/android/email/provider/ContentCache$CounterMap;

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v3}, Lcom/android/email/provider/ContentCache$CounterMap;->subtract(Ljava/lang/Object;)I

    move-result v0

    .line 310
    .local v0, count:I
    if-nez v0, :cond_20

    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCache:Lcom/android/email/provider/ContentCache;

    #getter for: Lcom/android/email/provider/ContentCache;->mLruCache:Landroid/util/LruCache;
    invoke-static {v1}, Lcom/android/email/provider/ContentCache;->access$100(Lcom/android/email/provider/ContentCache;)Landroid/util/LruCache;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    if-eq v1, v3, :cond_20

    .line 311
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 313
    :cond_20
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_25

    .line 314
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->isClosed:Z

    .line 315
    return-void

    .line 313
    .end local v0           #count:I
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 4
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 395
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    if-gez v0, :cond_a

    .line 325
    invoke-super {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    .line 327
    :cond_a
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCount:I

    return v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mCursor:Landroid/database/Cursor;

    check-cast v0, Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0
.end method

.method public final isAfterLast()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 384
    iget v1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

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
    .line 379
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

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
    .line 319
    iget-boolean v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->isClosed:Z

    return v0
.end method

.method public final isLast()Z
    .registers 3

    .prologue
    .line 374
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

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
    .line 364
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .registers 2

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    .prologue
    .line 349
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 3
    .parameter "pos"

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/android/email/provider/ContentCache$CachedCursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_9

    const/4 v0, -0x1

    if-ge p1, v0, :cond_b

    .line 336
    :cond_9
    const/4 v0, 0x0

    .line 339
    :goto_a
    return v0

    .line 338
    :cond_b
    iput p1, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    .line 339
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public moveToPrevious()Z
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/android/email/provider/ContentCache$CachedCursor;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/email/provider/ContentCache$CachedCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .registers 4
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method
