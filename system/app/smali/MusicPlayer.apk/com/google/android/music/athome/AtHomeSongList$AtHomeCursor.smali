.class Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;
.super Lcom/google/android/music/medialist/MediaList$MediaCursor;
.source "AtHomeSongList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeSongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AtHomeCursor"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 4
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    .line 91
    iput-object p2, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mResolver:Landroid/content/ContentResolver;

    .line 93
    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .registers 10
    .parameter "from"
    .parameter "to"

    .prologue
    .line 98
    if-eq p1, p2, :cond_2d

    .line 99
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    const-string v6, "_id"

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 101
    .local v2, idIndex:I
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 102
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 104
    .local v3, itemToMoveId:J
    const-wide/16 v0, 0x0

    .line 105
    .local v0, desiredPreviousItemId:J
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 106
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 107
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3, v4, v0, v1}, Lcom/google/android/music/athome/AtHomeContentProvider;->moveSong(Landroid/content/ContentResolver;JJ)Z

    .line 112
    .end local v0           #desiredPreviousItemId:J
    .end local v2           #idIndex:I
    .end local v3           #itemToMoveId:J
    :cond_2d
    return-void
.end method

.method public removeItem(I)V
    .registers 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 116
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, idIndex:I
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 118
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 119
    .local v1, itemId:J
    invoke-static {v1, v2}, Lcom/google/android/music/athome/AtHomeContentProvider;->getSongUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 120
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeSongList$AtHomeCursor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 122
    .end local v1           #itemId:J
    .end local v3           #uri:Landroid/net/Uri;
    :cond_20
    return-void
.end method
