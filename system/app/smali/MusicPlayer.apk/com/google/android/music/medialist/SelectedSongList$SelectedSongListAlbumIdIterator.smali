.class Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;
.super Ljava/lang/Object;
.source "SelectedSongList.java"

# interfaces
.implements Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/medialist/SelectedSongList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectedSongListAlbumIdIterator"
.end annotation


# instance fields
.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mPosition:I

.field final synthetic this$0:Lcom/google/android/music/medialist/SelectedSongList;


# direct methods
.method public constructor <init>(Lcom/google/android/music/medialist/SelectedSongList;Landroid/content/Context;)V
    .registers 9
    .parameter
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 40
    iput-object p1, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->this$0:Lcom/google/android/music/medialist/SelectedSongList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1, p2}, Lcom/google/android/music/medialist/SelectedSongList;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/music/medialist/SelectedSongList;->access$000()[Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mCursor:Landroid/database/Cursor;

    .line 44
    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mCount:I

    .line 45
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 63
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mPosition:I

    iget v1, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mCount:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public next()J
    .registers 4

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mPosition:I

    iget v1, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mCount:I

    if-lt v0, v1, :cond_c

    .line 53
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 55
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 56
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 58
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
