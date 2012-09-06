.class Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    iget-object v1, v1, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v1}, Lcom/google/android/music/widgets/TrackListView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_11

    .line 573
    :cond_10
    :goto_10
    return-void

    .line 566
    :cond_11
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    iget-object v1, v1, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-virtual {v1, p1}, Lcom/google/android/music/widgets/TrackListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 567
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 570
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1600(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 571
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    iget-object v1, v1, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->this$0:Lcom/google/android/music/widgets/TrackListView;

    iget-object v2, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$1;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v2}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1600(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v2

    #calls: Lcom/google/android/music/widgets/TrackListView;->createListItemContextMusicMenu(Lcom/google/android/music/medialist/MediaList$MediaCursor;Landroid/view/View;I)V
    invoke-static {v1, v2, p1, v0}, Lcom/google/android/music/widgets/TrackListView;->access$1700(Lcom/google/android/music/widgets/TrackListView;Lcom/google/android/music/medialist/MediaList$MediaCursor;Landroid/view/View;I)V

    goto :goto_10
.end method
