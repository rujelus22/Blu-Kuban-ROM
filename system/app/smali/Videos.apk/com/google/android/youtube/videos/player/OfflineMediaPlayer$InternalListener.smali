.class Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;
.super Ljava/lang/Object;
.source "OfflineMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;->this$0:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;-><init>(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .parameter "mp"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;->this$0:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;

    #calls: Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->onPrepared()V
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->access$100(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer$InternalListener;->this$0:Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;

    #getter for: Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;->access$200(Lcom/google/android/youtube/videos/player/OfflineMediaPlayer;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 213
    return-void
.end method
