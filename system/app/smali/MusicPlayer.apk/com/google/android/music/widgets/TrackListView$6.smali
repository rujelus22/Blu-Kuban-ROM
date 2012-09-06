.class Lcom/google/android/music/widgets/TrackListView$6;
.super Landroid/content/BroadcastReceiver;
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
    .line 201
    iput-object p1, p0, Lcom/google/android/music/widgets/TrackListView$6;->this$0:Lcom/google/android/music/widgets/TrackListView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 205
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.music.queuechanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 207
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$6;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->updateIsNowPlaying()V
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView;->access$600(Lcom/google/android/music/widgets/TrackListView;)V

    .line 213
    :cond_11
    :goto_11
    return-void

    .line 208
    :cond_12
    const-string v1, "com.android.music.metachanged"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 209
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$6;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #getter for: Lcom/google/android/music/widgets/TrackListView;->mIsNowPlaying:Z
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView;->access$700(Lcom/google/android/music/widgets/TrackListView;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 210
    iget-object v1, p0, Lcom/google/android/music/widgets/TrackListView$6;->this$0:Lcom/google/android/music/widgets/TrackListView;

    #calls: Lcom/google/android/music/widgets/TrackListView;->postDataSetChanged()V
    invoke-static {v1}, Lcom/google/android/music/widgets/TrackListView;->access$300(Lcom/google/android/music/widgets/TrackListView;)V

    goto :goto_11
.end method
