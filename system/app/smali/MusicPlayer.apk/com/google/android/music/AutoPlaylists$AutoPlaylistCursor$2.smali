.class Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$2;
.super Ljava/lang/Object;
.source "AutoPlaylists.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;-><init>(Landroid/content/Context;[Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;


# direct methods
.method constructor <init>(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$2;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$2;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    #calls: Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->refreshData()V
    invoke-static {v0}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->access$000(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)V

    .line 186
    return-void
.end method
