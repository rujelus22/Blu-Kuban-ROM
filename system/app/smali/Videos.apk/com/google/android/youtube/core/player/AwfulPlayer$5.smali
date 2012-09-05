.class Lcom/google/android/youtube/core/player/AwfulPlayer$5;
.super Ljava/lang/Object;
.source "AwfulPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/player/AwfulPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/AwfulPlayer;)V
    .registers 2
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$5;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 530
    const-string v0, "delayed short seek"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$5;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$5;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/AwfulPlayer;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/AwfulPlayer;->seekTo(I)V

    .line 532
    return-void
.end method
