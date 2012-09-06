.class final Lcom/google/android/youtube/core/player/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/youtube/core/player/bl;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/bl;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bm;->c:Lcom/google/android/youtube/core/player/bl;

    iput p2, p0, Lcom/google/android/youtube/core/player/bm;->a:I

    iput p3, p0, Lcom/google/android/youtube/core/player/bm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 748
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bm;->c:Lcom/google/android/youtube/core/player/bl;

    iget-object v0, v0, Lcom/google/android/youtube/core/player/bl;->a:Lcom/google/android/youtube/core/player/bi;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bi;->j(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/bm;->a:I

    iget v2, p0, Lcom/google/android/youtube/core/player/bm;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/player/PlayerView;->setVideoSize(II)V

    .line 749
    return-void
.end method
