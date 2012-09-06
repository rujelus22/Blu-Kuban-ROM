.class Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$3;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Lcom/google/android/music/TouchInterceptor$RemoveListener;


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
    .line 586
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$3;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .registers 3
    .parameter "which"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter$3;->this$1:Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;

    #calls: Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->removePlaylistItem(I)V
    invoke-static {v0, p1}, Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;->access$1800(Lcom/google/android/music/widgets/TrackListView$NowPlayingListAdapter;I)V

    .line 589
    return-void
.end method
