.class Lcom/google/android/music/MusicPlaybackService$11;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->addToRecentAsync(Lcom/google/android/music/medialist/SongList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$songList:Lcom/google/android/music/medialist/SongList;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;Landroid/content/Context;Lcom/google/android/music/medialist/SongList;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$11;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$songList:Lcom/google/android/music/medialist/SongList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$11;->val$songList:Lcom/google/android/music/medialist/SongList;

    invoke-static {v0, v1}, Lcom/google/android/music/store/RecentItemsManager;->addRecentlyPlayedItem(Landroid/content/Context;Lcom/google/android/music/medialist/SongList;)Z

    .line 1323
    return-void
.end method
