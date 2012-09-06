.class Lcom/google/android/music/PlaylistBrowserActivity$1;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 4
    .parameter "isStreamable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mAdapter:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
    invoke-static {v0}, Lcom/google/android/music/PlaylistBrowserActivity;->access$000(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 99
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #setter for: Lcom/google/android/music/PlaylistBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$102(Lcom/google/android/music/PlaylistBrowserActivity;Z)Z

    .line 100
    iget-object v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$1;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    new-instance v1, Lcom/google/android/music/PlaylistBrowserActivity$1$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/PlaylistBrowserActivity$1$1;-><init>(Lcom/google/android/music/PlaylistBrowserActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/PlaylistBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 108
    :cond_17
    return-void
.end method
