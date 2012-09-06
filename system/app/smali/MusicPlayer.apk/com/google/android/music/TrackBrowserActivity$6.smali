.class Lcom/google/android/music/TrackBrowserActivity$6;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/TrackBrowserActivity;->updateShowTrackArtist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 1005
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/google/android/music/TrackBrowserActivity;->access$1600(Lcom/google/android/music/TrackBrowserActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->hasDifferentTrackArtists(Landroid/content/Context;)Z

    move-result v0

    .line 1006
    .local v0, showTrackArtist:Z
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mShowTrackArtist:Z
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1700(Lcom/google/android/music/TrackBrowserActivity;)Z

    move-result v1

    if-eq v0, v1, :cond_36

    .line 1007
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #setter for: Lcom/google/android/music/TrackBrowserActivity;->mShowTrackArtist:Z
    invoke-static {v1, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$1702(Lcom/google/android/music/TrackBrowserActivity;Z)Z

    .line 1008
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 1009
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$6;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$1800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->postInvalidate()V

    .line 1013
    .end local v0           #showTrackArtist:Z
    :cond_36
    return-void
.end method
