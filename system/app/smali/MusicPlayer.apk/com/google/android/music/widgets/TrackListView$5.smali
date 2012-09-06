.class Lcom/google/android/music/widgets/TrackListView$5;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TrackListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/widgets/TrackListView;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/TrackListView;)V
    .registers 2
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$5;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 191
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$5;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 192
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$5;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mSongList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView;->access$400(Lcom/google/android/music/widgets/TrackListView;)Lcom/google/android/music/medialist/SongList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/widgets/TrackListView$5;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v2}, Lcom/google/android/music/widgets/TrackListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/medialist/SongList;->hasDifferentTrackArtists(Landroid/content/Context;)Z

    move-result v0

    .line 193
    .local v0, showTrackArtist:Z
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$5;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mShowTrackArtist:Z
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView;->access$500(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 194
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$5;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #setter for: Lcom/google/android/music/widgets/TrackListView;->mShowTrackArtist:Z
    invoke-static {v1, v0}, Lcom/google/android/music/widgets/TrackListView;->access$502(Lcom/google/android/music/widgets/TrackListView;Z)Z

    .line 195
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$5;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->postDataSetChanged()V
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView;->access$300(Lcom/google/android/music/widgets/TrackListView;)V

    .line 198
    .end local v0           #showTrackArtist:Z
    :cond_2a
    return-void
.end method
