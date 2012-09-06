.class Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildCursorWrapper"
.end annotation


# instance fields
.field mArtistId:J

.field mArtistIsKeptOn:Z

.field final synthetic this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;Landroid/database/Cursor;JZ)V
    .registers 6
    .parameter
    .parameter "c"
    .parameter "artistId"
    .parameter "artistIsKeptOn"

    .prologue
    .line 932
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->this$1:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    .line 933
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 934
    iput-wide p3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->mArtistId:J

    .line 935
    iput-boolean p5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->mArtistIsKeptOn:Z

    .line 936
    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    .prologue
    .line 942
    return-void
.end method

.method public deactivate()V
    .registers 1

    .prologue
    .line 946
    return-void
.end method

.method public dispose()V
    .registers 1

    .prologue
    .line 949
    invoke-super {p0}, Landroid/database/CursorWrapper;->close()V

    .line 950
    return-void
.end method
