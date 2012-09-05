.class Lcom/google/android/youtube/core/player/YouTubePlayer$3;
.super Ljava/lang/Object;
.source "YouTubePlayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/YouTubePlayer;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/YouTubePlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$3;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/youtube/core/player/YouTubePlayer$3;->this$0:Lcom/google/android/youtube/core/player/YouTubePlayer;

    const/16 v1, 0xb

    #calls: Lcom/google/android/youtube/core/player/YouTubePlayer;->notifyListeners(I)V
    invoke-static {v0, v1}, Lcom/google/android/youtube/core/player/YouTubePlayer;->access$300(Lcom/google/android/youtube/core/player/YouTubePlayer;I)V

    .line 259
    const/4 v0, 0x1

    return v0
.end method
