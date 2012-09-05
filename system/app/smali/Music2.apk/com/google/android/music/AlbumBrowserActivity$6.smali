.class Lcom/google/android/music/AlbumBrowserActivity$6;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 828
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$6;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

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
    .line 832
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$6;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mAdapter:Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$500(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 833
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$6;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #setter for: Lcom/google/android/music/AlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/AlbumBrowserActivity;->access$902(Lcom/google/android/music/AlbumBrowserActivity;Z)Z

    .line 834
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$6;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    new-instance v1, Lcom/google/android/music/AlbumBrowserActivity$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/AlbumBrowserActivity$6$1;-><init>(Lcom/google/android/music/AlbumBrowserActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/AlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 840
    :cond_17
    return-void
.end method
