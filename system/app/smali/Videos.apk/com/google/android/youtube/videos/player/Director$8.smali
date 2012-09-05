.class Lcom/google/android/youtube/videos/player/Director$8;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/player/Director;->showShortClockConfirmationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$8;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$8;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$200(Lcom/google/android/youtube/videos/player/Director;)Lcom/google/android/youtube/core/player/ControllerOverlay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showPaused()V

    .line 1021
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$8;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #getter for: Lcom/google/android/youtube/videos/player/Director;->lockFullscreenMode:Z
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$1600(Lcom/google/android/youtube/videos/player/Director;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1022
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$8;->this$0:Lcom/google/android/youtube/videos/player/Director;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->setFullscreen(Z)V

    .line 1024
    :cond_17
    return-void
.end method
