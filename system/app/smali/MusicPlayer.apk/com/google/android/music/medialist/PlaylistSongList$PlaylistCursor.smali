.class public Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;
.super Lcom/google/android/music/medialist/MediaList$MediaCursor;
.source "PlaylistSongList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/PlaylistSongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PlaylistCursor"
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field mId:J

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;J)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 119
    invoke-direct {p0, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    .line 120
    iput-wide p3, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    .line 121
    iput-object p2, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    .line 123
    return-void
.end method


# virtual methods
.method public moveItem(II)V
    .registers 11
    .parameter "from"
    .parameter "to"

    .prologue
    .line 128
    if-eq p1, p2, :cond_3a

    .line 129
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 131
    .local v7, colidx:I
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 132
    const-string v0, "PlaylistSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move item. Invalid \"from\" position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Cursor size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v7           #colidx:I
    :cond_3a
    :goto_3a
    return-void

    .line 136
    .restart local v7       #colidx:I
    :cond_3b
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 138
    .local v3, itemToMoveId:J
    const-wide/16 v5, 0x0

    .line 139
    .local v5, desiredPreviousItemId:J
    if-lez p2, :cond_80

    .line 140
    if-le p1, p2, :cond_49

    .line 141
    add-int/lit8 p2, p2, -0x1

    .line 143
    :cond_49
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 144
    const-string v0, "PlaylistSongList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move item. Invalid \"to\" position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Cursor size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 148
    :cond_7a
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 150
    :cond_80
    iget-object v0, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    iget-wide v1, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    invoke-static/range {v0 .. v6}, Lcom/google/android/music/store/MusicContent$Playlists;->movePlaylistItem(Landroid/content/ContentResolver;JJJ)V

    goto :goto_3a
.end method

.method public removeItem(I)V
    .registers 9
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 157
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, colidx:I
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 159
    const-string v4, "PlaylistSongList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to remove item. Invalid position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Cursor size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_39
    return-void

    .line 163
    :cond_3a
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 164
    .local v1, itemId:J
    iget-wide v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mId:J

    invoke-static {v4, v5, v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemUri(JJ)Landroid/net/Uri;

    move-result-object v3

    .line 165
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/google/android/music/medialist/PlaylistSongList$PlaylistCursor;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_39
.end method
