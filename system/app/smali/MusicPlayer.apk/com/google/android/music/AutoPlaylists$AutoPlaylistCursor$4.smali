.class Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$4;
.super Ljava/lang/Object;
.source "AutoPlaylists.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
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
    .line 235
    iput-object p1, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$4;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor$4;->this$0:Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;

    #calls: Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->refreshData()V
    invoke-static {v0}, Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;->access$000(Lcom/google/android/music/AutoPlaylists$AutoPlaylistCursor;)V

    .line 238
    return-void
.end method
