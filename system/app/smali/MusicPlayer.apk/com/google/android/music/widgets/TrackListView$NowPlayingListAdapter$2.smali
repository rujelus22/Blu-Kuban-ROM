.class Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$2;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Lcom/google/android/music/TouchInterceptor$DropListener;


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
    .line 577
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$2;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .registers 4
    .parameter "from"
    .parameter "to"

    .prologue
    .line 579
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$2;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1600(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 580
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$2;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #getter for: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->mTrackCursor:Lcom/google/android/music/medialist/MediaList$MediaCursor;
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1600(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/music/medialist/MediaList$MediaCursor;->moveItem(II)V

    .line 582
    :cond_11
    return-void
.end method
