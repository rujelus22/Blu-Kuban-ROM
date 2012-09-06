.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;
.super Lcom/google/android/music/dl/IStreamabilityChangeListener$Stub;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .registers 2
    .parameter

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

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
    .line 1875
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$2000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z

    move-result v0

    if-eq v0, p1, :cond_20

    .line 1876
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #setter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z
    invoke-static {v0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$2002(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Z)Z

    .line 1877
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$13;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1879
    :cond_20
    return-void
.end method
