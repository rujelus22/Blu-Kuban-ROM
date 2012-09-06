.class Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;
.super Ljava/lang/Object;
.source "AlbumArtUtils.java"

# interfaces
.implements Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/utils/AlbumArtUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaylistMemberCursorIterator"
.end annotation


# instance fields
.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mPosition:I

    .line 263
    iput-object p1, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mCursor:Landroid/database/Cursor;

    .line 264
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mCount:I

    .line 265
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 283
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 268
    iget v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mPosition:I

    iget v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mCount:I

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
    .line 272
    iget v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mPosition:I

    iget v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mCount:I

    if-lt v0, v1, :cond_c

    .line 273
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 275
    :cond_c
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mPosition:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mPosition:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 276
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 278
    :cond_20
    iget-object v0, p0, Lcom/google/android/music/utils/AlbumArtUtils$PlaylistMemberCursorIterator;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
