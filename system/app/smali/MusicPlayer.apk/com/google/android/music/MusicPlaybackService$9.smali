.class Lcom/google/android/music/MusicPlaybackService$9;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;)V
    .registers 2
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$9;->this$0:Lcom/google/android/music/MusicPlaybackService;

    #calls: Lcom/google/android/music/MusicPlaybackService;->updateNotification()V
    invoke-static {v0}, Lcom/google/android/music/MusicPlaybackService;->access$500(Lcom/google/android/music/MusicPlaybackService;)V

    .line 759
    return-void
.end method
