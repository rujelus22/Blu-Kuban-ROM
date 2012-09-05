.class final Lcom/google/android/youtube/core/player/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/youtube/core/player/at;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/at;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    iput-object p1, p0, Lcom/google/android/youtube/core/player/au;->c:Lcom/google/android/youtube/core/player/at;

    iput p2, p0, Lcom/google/android/youtube/core/player/au;->a:I

    iput p3, p0, Lcom/google/android/youtube/core/player/au;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 697
    iget-object v0, p0, Lcom/google/android/youtube/core/player/au;->c:Lcom/google/android/youtube/core/player/at;

    iget-object v0, v0, Lcom/google/android/youtube/core/player/at;->a:Lcom/google/android/youtube/core/player/aq;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/aq;->j(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/PlayerView;

    move-result-object v0

    iget v1, p0, Lcom/google/android/youtube/core/player/au;->a:I

    iget v2, p0, Lcom/google/android/youtube/core/player/au;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/player/PlayerView;->a(II)V

    .line 698
    return-void
.end method
