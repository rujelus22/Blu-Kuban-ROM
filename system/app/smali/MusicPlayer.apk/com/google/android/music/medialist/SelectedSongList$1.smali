.class Lcom/google/android/music/medialist/SelectedSongList$1;
.super Ljava/lang/Object;
.source "SelectedSongList.java"

# interfaces
.implements Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIteratorFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/medialist/SelectedSongList;->getImage(Landroid/content/Context;II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/medialist/SelectedSongList;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/music/medialist/SelectedSongList;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/android/music/medialist/SelectedSongList$1;->this$0:Lcom/google/android/music/medialist/SelectedSongList;

    iput-object p2, p0, Lcom/google/android/music/medialist/SelectedSongList$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createIterator()Lcom/google/android/music/utils/AlbumArtUtils$AlbumIdIterator;
    .registers 4

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;

    iget-object v1, p0, Lcom/google/android/music/medialist/SelectedSongList$1;->this$0:Lcom/google/android/music/medialist/SelectedSongList;

    iget-object v2, p0, Lcom/google/android/music/medialist/SelectedSongList$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/medialist/SelectedSongList$SelectedSongListAlbumIdIterator;-><init>(Lcom/google/android/music/medialist/SelectedSongList;Landroid/content/Context;)V

    return-object v0
.end method
