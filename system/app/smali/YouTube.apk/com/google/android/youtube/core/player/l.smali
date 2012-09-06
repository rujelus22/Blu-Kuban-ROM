.class final Lcom/google/android/youtube/core/player/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/f;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/f;)V
    .registers 2
    .parameter

    .prologue
    .line 548
    iput-object p1, p0, Lcom/google/android/youtube/core/player/l;->a:Lcom/google/android/youtube/core/player/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 550
    const-string v0, "delayed short seek"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/core/player/l;->a:Lcom/google/android/youtube/core/player/f;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/l;->a:Lcom/google/android/youtube/core/player/f;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/f;->getCurrentPosition()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/f;->seekTo(I)V

    .line 552
    return-void
.end method
