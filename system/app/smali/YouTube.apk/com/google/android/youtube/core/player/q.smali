.class final Lcom/google/android/youtube/core/player/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/p;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/p;)V
    .registers 2
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 637
    iget-object v0, p0, Lcom/google/android/youtube/core/player/q;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/p;->b(Lcom/google/android/youtube/core/player/p;)V

    .line 639
    :cond_d
    return-void
.end method
