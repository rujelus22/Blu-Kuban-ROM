.class Lcom/google/android/music/widgets/TrackListView$7;
.super Ljava/lang/Object;
.source "TrackListView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 216
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$7;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$7;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-static {p2}, Lcom/google/android/music/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/IMusicPlaybackService;

    move-result-object v1

    #setter for: Lcom/google/android/music/widgets/TrackListView;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v0, v1}, Lcom/google/android/music/widgets/TrackListView;->access$802(Lcom/google/android/music/widgets/TrackListView;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;

    .line 219
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$7;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->updateIsNowPlaying()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$600(Lcom/google/android/music/widgets/TrackListView;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$7;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->processScrollPosition()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$900(Lcom/google/android/music/widgets/TrackListView;)V

    .line 221
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "classname"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$7;->this$0:Lcom/google/android/music/widgets/TrackListView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/widgets/TrackListView;->mPlaybackService:Lcom/google/android/music/IMusicPlaybackService;
    invoke-static {v0, v1}, Lcom/google/android/music/widgets/TrackListView;->access$802(Lcom/google/android/music/widgets/TrackListView;Lcom/google/android/music/IMusicPlaybackService;)Lcom/google/android/music/IMusicPlaybackService;

    .line 224
    return-void
.end method
