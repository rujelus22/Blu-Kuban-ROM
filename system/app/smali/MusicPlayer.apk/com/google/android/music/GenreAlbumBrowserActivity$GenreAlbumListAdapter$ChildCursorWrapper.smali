.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "GenreAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildCursorWrapper"
.end annotation


# instance fields
.field mGenreId:J

.field final synthetic this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;Landroid/database/Cursor;J)V
    .registers 5
    .parameter
    .parameter "c"
    .parameter "genreId"

    .prologue
    .line 896
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->this$1:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    .line 897
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 898
    iput-wide p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->mGenreId:J

    .line 899
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 905
    return-void
.end method

.method public deactivate()V
    .registers 1

    .prologue
    .line 909
    return-void
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 912
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 913
    return-void
.end method
