.class Lcom/google/android/music/widgets/TrackListView$4;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "TrackListView.java"


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
    .line 179
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$4;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 3
    .parameter "isStreamable"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$4;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsStreamingEnabled:Z
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$200(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v0

    if-eq v0, p1, :cond_12

    .line 183
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$4;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #setter for: Lcom/google/android/music/widgets/TrackListView;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/widgets/TrackListView;->access$202(Lcom/google/android/music/widgets/TrackListView;Z)Z

    .line 184
    iget-object v0, p0, Lcom/google/android/music/widgets/TrackListView$4;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->postDataSetChanged()V
    invoke-static {v0}, Lcom/google/android/music/widgets/TrackListView;->access$300(Lcom/google/android/music/widgets/TrackListView;)V

    .line 186
    :cond_12
    return-void
.end method
