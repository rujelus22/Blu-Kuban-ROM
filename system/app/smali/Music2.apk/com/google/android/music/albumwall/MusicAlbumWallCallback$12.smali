.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;
.super Landroid/database/ContentObserver;
.source "MusicAlbumWallCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;


# direct methods
.method constructor <init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .parameter "selfChange"

    .prologue
    .line 1579
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 1580
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v0

    .line 1581
    .local v0, state:Lcom/google/android/music/albumwall/AlbumWallView$ViewState;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->updateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1582
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$12;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;
    invoke-static {v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/music/albumwall/AlbumWallView;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1583
    return-void
.end method
