.class Lcom/google/android/youtube/videos/honeycomb/WatchController$1;
.super Ljava/lang/Object;
.source "WatchController.java"

# interfaces
.implements Lcom/google/android/youtube/coreicecream/ui/SystemUiVisibilityHelper$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/honeycomb/WatchController;->onCreate(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

.field final synthetic val$controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/honeycomb/WatchController;Lcom/google/android/youtube/core/player/ControllerOverlay;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$1;->this$0:Lcom/google/android/youtube/videos/honeycomb/WatchController;

    iput-object p2, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$1;->val$controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationShown()V
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/videos/honeycomb/WatchController$1;->val$controllerOverlay:Lcom/google/android/youtube/core/player/ControllerOverlay;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ControllerOverlay;->showControls()V

    .line 206
    return-void
.end method
