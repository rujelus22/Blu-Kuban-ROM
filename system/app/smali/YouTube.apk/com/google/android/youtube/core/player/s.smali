.class final Lcom/google/android/youtube/core/player/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/google/android/youtube/core/player/s;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/google/android/youtube/core/player/s;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/Director;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 766
    iget-object v0, p0, Lcom/google/android/youtube/core/player/s;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/Director;->b(Lcom/google/android/youtube/core/player/Director;)V

    .line 768
    :cond_d
    return-void
.end method
