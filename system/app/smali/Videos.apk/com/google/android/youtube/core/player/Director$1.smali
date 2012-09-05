.class Lcom/google/android/youtube/core/player/Director$1;
.super Ljava/lang/Object;
.source "Director.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/Director;->maybeSkipVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/google/android/youtube/core/player/Director$1;->this$0:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$1;->this$0:Lcom/google/android/youtube/core/player/Director;

    #getter for: Lcom/google/android/youtube/core/player/Director;->stopped:Z
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$000(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 697
    iget-object v0, p0, Lcom/google/android/youtube/core/player/Director$1;->this$0:Lcom/google/android/youtube/core/player/Director;

    #calls: Lcom/google/android/youtube/core/player/Director;->onNextInternal()V
    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->access$100(Lcom/google/android/youtube/core/player/Director;)V

    .line 699
    :cond_d
    return-void
.end method
