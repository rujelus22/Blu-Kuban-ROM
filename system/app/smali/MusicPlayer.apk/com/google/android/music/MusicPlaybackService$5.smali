.class Lcom/google/android/music/MusicPlaybackService$5;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/MusicPlaybackService;

.field final synthetic val$rating:I


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$5;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iput p2, p0, Lcom/google/android/music/MusicPlaybackService$5;->val$rating:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$5;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget v1, p0, Lcom/google/android/music/MusicPlaybackService$5;->val$rating:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->setRating(I)V

    .line 398
    return-void
.end method
