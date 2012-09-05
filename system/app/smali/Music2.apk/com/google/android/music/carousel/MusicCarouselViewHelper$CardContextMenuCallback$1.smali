.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSongCount:I

.field final synthetic this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;

.field final synthetic val$playlistId:J

.field final synthetic val$playlistName:Ljava/lang/String;

.field final synthetic val$songList:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;Lcom/google/android/music/medialist/SongList;JLjava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;

    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->val$songList:Lcom/google/android/music/medialist/SongList;

    iput-wide p3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->val$playlistId:J

    iput-object p5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->val$playlistName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .registers 5

    .prologue
    .line 950
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->val$songList:Lcom/google/android/music/medialist/SongList;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;

    iget-object v1, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->val$playlistId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/medialist/SongList;->appendToPlaylist(Landroid/content/ContentResolver;J)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->mSongCount:I

    .line 952
    return-void
.end method

.method public taskCompleted()V
    .registers 4

    .prologue
    .line 955
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->this$1:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    #getter for: Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v0

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->mSongCount:I

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardContextMenuCallback$1;->val$playlistName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->showSongsAddedToPlaylistToast(Landroid/content/Context;ILjava/lang/String;)V

    .line 957
    return-void
.end method
