.class Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onDestroy()V
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
    .line 327
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearTopLevelCursor()V
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #calls: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V

    .line 331
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;->this$0:Lcom/google/android/music/albumwall/MusicAlbumWallCallback;

    #getter for: Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackHelper:Lcom/google/android/music/utils/MusicCallbackHelper;
    invoke-static {v0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->access$200(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/utils/MusicCallbackHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/utils/MusicCallbackHelper;->onDestroy()V

    .line 332
    return-void
.end method
