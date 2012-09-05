.class public abstract Lcom/google/android/apps/plus/phone/CursorMediaStream;
.super Ljava/lang/Object;
.source "CursorMediaStream.java"

# interfaces
.implements Lcom/google/android/apps/plus/phone/MediaStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/CursorMediaStream$MediaCursorRow;
    }
.end annotation


# instance fields
.field protected final mAppContext:Landroid/content/Context;

.field protected final mBaseContentUri:Landroid/net/Uri;

.field private final mBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/phone/MediaStream$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mHasMoreData:Z

.field protected mOffset:I

.field private final mPageSize:I

.field private mPosition:I

.field protected final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 4
    .parameter "context"
    .parameter "baseContentUri"

    .prologue
    .line 71
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/phone/CursorMediaStream;-><init>(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;I)V
    .registers 5
    .parameter "context"
    .parameter "baseContentUri"
    .parameter "pageSize"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mHasMoreData:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBuffer:Ljava/util/List;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mAppContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mResolver:Landroid/content/ContentResolver;

    .line 83
    iput-object p2, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBaseContentUri:Landroid/net/Uri;

    .line 84
    iput p3, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPageSize:I

    .line 85
    return-void
.end method

.method private getBuffered(I)Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .registers 4
    .parameter "position"

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, entry:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-ltz p1, :cond_13

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_13

    .line 176
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    check-cast v0, Lcom/google/android/apps/plus/phone/MediaStream$Row;

    .line 178
    .restart local v0       #entry:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :cond_13
    return-object v0
.end method

.method private readRows(I)V
    .registers 13
    .parameter "target"

    .prologue
    const/4 v7, 0x3

    const/4 v9, 0x0

    .line 190
    iget-boolean v5, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mHasMoreData:Z

    if-nez v5, :cond_7

    .line 231
    :cond_6
    :goto_6
    return-void

    .line 193
    :cond_7
    new-instance v5, Lcom/google/android/apps/plus/util/StopWatch;

    invoke-direct {v5}, Lcom/google/android/apps/plus/util/StopWatch;-><init>()V

    invoke-virtual {v5}, Lcom/google/android/apps/plus/util/StopWatch;->start()Lcom/google/android/apps/plus/util/StopWatch;

    move-result-object v4

    .line 196
    .local v4, watch:Lcom/google/android/apps/plus/util/StopWatch;
    add-int/lit8 v5, p1, 0x4

    iget v6, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPageSize:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPageSize:I

    div-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPageSize:I

    mul-int v2, v5, v6

    .line 197
    .local v2, newOffset:I
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_6

    .line 202
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/CursorMediaStream;->createCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 203
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_2f

    .line 205
    iput-boolean v9, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mHasMoreData:Z

    goto :goto_6

    .line 211
    :cond_2f
    :try_start_2f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    .local v1, hasData:Z
    :goto_33
    if-eqz v1, :cond_53

    .line 212
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/CursorMediaStream;->createRow(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v3

    .line 213
    .local v3, row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-nez v3, :cond_42

    .line 214
    add-int/lit8 v2, v2, -0x1

    .line 211
    :goto_3d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    goto :goto_33

    .line 217
    :cond_42
    iget-object v5, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget v5, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mOffset:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mOffset:I
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_4e

    goto :goto_3d

    .line 225
    .end local v1           #hasData:Z
    .end local v3           #row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    :catchall_4e
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 220
    .restart local v1       #hasData:Z
    :cond_53
    :try_start_53
    iget v5, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mOffset:I

    if-ge v5, v2, :cond_5a

    .line 222
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mHasMoreData:Z
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_4e

    .line 225
    :cond_5a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 227
    const-string v5, "MediaStream"

    invoke-static {v5, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 228
    const-string v5, "MediaStream"

    const-string v6, "readRows: buffered=%d; msec=%d; uri=%s"

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/StopWatch;->getElapsedMsec()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBaseContentUri:Landroid/net/Uri;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method


# virtual methods
.method protected abstract createCursor(I)Landroid/database/Cursor;
.end method

.method protected abstract createRow(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/MediaStream$Row;
.end method

.method public moveTo(I)V
    .registers 2
    .parameter "position"

    .prologue
    .line 116
    iput p1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPosition:I

    .line 117
    return-void
.end method

.method public moveToNext()V
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPosition:I

    .line 125
    return-void
.end method

.method public read()Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .registers 3

    .prologue
    .line 136
    iget v1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/CursorMediaStream;->getBuffered(I)Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v0

    .line 137
    .local v0, row:Lcom/google/android/apps/plus/phone/MediaStream$Row;
    if-nez v0, :cond_17

    .line 139
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mHasMoreData:Z

    if-eqz v1, :cond_17

    .line 140
    iget v1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/CursorMediaStream;->readRows(I)V

    .line 141
    iget v1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPosition:I

    invoke-direct {p0, v1}, Lcom/google/android/apps/plus/phone/CursorMediaStream;->getBuffered(I)Lcom/google/android/apps/plus/phone/MediaStream$Row;

    move-result-object v0

    .line 144
    :cond_17
    return-object v0
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    iput v1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mOffset:I

    .line 154
    iput v1, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mPosition:I

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/phone/CursorMediaStream;->mHasMoreData:Z

    .line 156
    return-void
.end method
