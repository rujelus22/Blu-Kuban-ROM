.class public Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;
.super Lcom/google/android/apps/plus/phone/CursorMediaStream;
.source "MediaStoreMediaStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$1;,
        Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;,
        Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreQuery;,
        Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$CorrectedMediaStoreColumn;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3
    .parameter "context"
    .parameter "baseContentUri"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/CursorMediaStream;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 153
    return-void
.end method


# virtual methods
.method protected createCursor(I)Landroid/database/Cursor;
    .registers 8
    .parameter "newOffset"

    .prologue
    .line 160
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mOffset:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mOffset:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 162
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mBaseContentUri:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "corrected_date_taken desc limit ?,?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected createRow(Landroid/database/Cursor;)Lcom/google/android/apps/plus/phone/MediaStream$Row;
    .registers 13
    .parameter "cursor"

    .prologue
    const/4 v8, 0x0

    .line 175
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 176
    .local v2, id:J
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, title:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 178
    .local v5, dateTaken:J
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mBaseContentUri:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 179
    .local v9, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->toVideoData(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/wireless/tacotruck/proto/Data$VideoData;

    move-result-object v10

    .line 180
    .local v10, videoData:Lcom/google/wireless/tacotruck/proto/Data$VideoData;
    if-nez v10, :cond_26

    move-object v7, v8

    .line 181
    .local v7, videoDataBytes:[B
    :goto_1f
    new-instance v0, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/apps/plus/phone/MediaStoreMediaStream$MediaStoreRow;-><init>(Lcom/google/android/apps/plus/phone/MediaStoreMediaStream;JLjava/lang/String;J[BLcom/google/android/apps/plus/phone/MediaStoreMediaStream$1;)V

    return-object v0

    .line 180
    .end local v7           #videoDataBytes:[B
    :cond_26
    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$VideoData;->toByteArray()[B

    move-result-object v7

    goto :goto_1f
.end method
