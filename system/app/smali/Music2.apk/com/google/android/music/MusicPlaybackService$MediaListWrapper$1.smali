.class Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;
.super Landroid/database/ContentObserver;
.source "MusicPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "selfChange"

    .prologue
    .line 662
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    #calls: Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->refresh()I
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->access$1100(Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;)I

    move-result v0

    .line 663
    .local v0, refreshResult:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 665
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v1, v1, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v3, v3, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-virtual {v3}, Lcom/google/android/music/MusicPlaybackService;->isPlaying()Z

    move-result v3

    #calls: Lcom/google/android/music/MusicPlaybackService;->openCurrent(ZZ)V
    invoke-static {v1, v2, v3}, Lcom/google/android/music/MusicPlaybackService;->access$1200(Lcom/google/android/music/MusicPlaybackService;ZZ)V

    .line 672
    :cond_19
    :goto_19
    return-void

    .line 666
    :cond_1a
    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    .line 668
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v1, v1, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v1}, Lcom/google/android/music/MusicPlaybackService;->access$800(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 669
    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v1, v1, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v2, p0, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper$1;->this$1:Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;

    iget-object v2, v2, Lcom/google/android/music/MusicPlaybackService$MediaListWrapper;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #getter for: Lcom/google/android/music/MusicPlaybackService;->mAudioId:Lcom/google/android/music/dl/ContentIdentifier;
    invoke-static {v2}, Lcom/google/android/music/MusicPlaybackService;->access$800(Lcom/google/android/music/MusicPlaybackService;)Lcom/google/android/music/dl/ContentIdentifier;

    move-result-object v2

    #calls: Lcom/google/android/music/MusicPlaybackService;->refreshCursor(Lcom/google/android/music/dl/ContentIdentifier;)Z
    invoke-static {v1, v2}, Lcom/google/android/music/MusicPlaybackService;->access$1300(Lcom/google/android/music/MusicPlaybackService;Lcom/google/android/music/dl/ContentIdentifier;)Z

    goto :goto_19
.end method
