.class Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$1;
.super Landroid/database/ContentObserver;
.source "AutoPlaylists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;


# direct methods
.method constructor <init>(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$1;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .parameter "selfChange"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$1;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    #calls: Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->refreshData()V
    invoke-static {v0}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->access$000(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)V

    .line 169
    return-void
.end method
