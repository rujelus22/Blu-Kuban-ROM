.class Lcom/google/android/youtube/videos/player/Director$9;
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
    .line 1010
    iput-object p1, p0, Lcom/google/android/youtube/videos/player/Director$9;->this$0:Lcom/google/android/youtube/videos/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$9;->this$0:Lcom/google/android/youtube/videos/player/Director;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/youtube/videos/player/Director;->userConfirmedShortClockActivation:Z
    invoke-static {v0, v1}, Lcom/google/android/youtube/videos/player/Director;->access$2302(Lcom/google/android/youtube/videos/player/Director;Z)Z

    .line 1013
    iget-object v0, p0, Lcom/google/android/youtube/videos/player/Director$9;->this$0:Lcom/google/android/youtube/videos/player/Director;

    #calls: Lcom/google/android/youtube/videos/player/Director;->warnAndPlayVideo()V
    invoke-static {v0}, Lcom/google/android/youtube/videos/player/Director;->access$2400(Lcom/google/android/youtube/videos/player/Director;)V

    .line 1014
    return-void
.end method
