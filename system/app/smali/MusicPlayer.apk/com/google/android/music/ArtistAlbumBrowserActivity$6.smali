.class Lcom/google/android/music/ArtistAlbumBrowserActivity$6;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "ArtistAlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreamabilityChanged(Z)V
    .registers 4
    .parameter "isStreamable"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$602(Lcom/google/android/music/ArtistAlbumBrowserActivity;Z)Z

    .line 1129
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$6;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    new-instance v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$6$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$6$1;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1136
    return-void
.end method
