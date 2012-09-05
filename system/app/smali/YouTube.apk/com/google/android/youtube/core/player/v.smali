.class final Lcom/google/android/youtube/core/player/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/player/p;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/p;)V
    .registers 2
    .parameter

    .prologue
    .line 904
    iput-object p1, p0, Lcom/google/android/youtube/core/player/v;->a:Lcom/google/android/youtube/core/player/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 904
    iget-object v0, p0, Lcom/google/android/youtube/core/player/v;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/p;->d(Lcom/google/android/youtube/core/player/p;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 904
    check-cast p2, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/v;->a:Lcom/google/android/youtube/core/player/p;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/p;->a(Lcom/google/android/youtube/core/player/p;Lcom/google/android/youtube/core/model/LiveEvent;)V

    return-void
.end method
