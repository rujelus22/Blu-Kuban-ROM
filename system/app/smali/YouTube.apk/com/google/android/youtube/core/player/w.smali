.class final Lcom/google/android/youtube/core/player/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/Director;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/Director;)V
    .registers 2
    .parameter

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/Director;->c(Lcom/google/android/youtube/core/player/Director;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1074
    check-cast p2, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/w;->a:Lcom/google/android/youtube/core/player/Director;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/Director;->a(Lcom/google/android/youtube/core/player/Director;Lcom/google/android/youtube/core/model/LiveEvent;)V

    return-void
.end method
