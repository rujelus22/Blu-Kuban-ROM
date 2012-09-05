.class final Lcom/google/android/youtube/core/async/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/android/youtube/core/async/g;

.field final synthetic c:Lcom/google/android/youtube/core/async/b;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/b;Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/youtube/core/async/c;->c:Lcom/google/android/youtube/core/async/b;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/c;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/c;->b:Lcom/google/android/youtube/core/async/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/c;->c:Lcom/google/android/youtube/core/async/b;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/b;->a(Lcom/google/android/youtube/core/async/b;)Lcom/google/android/youtube/core/async/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/c;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/c;->b:Lcom/google/android/youtube/core/async/g;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ad;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/g;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 44
    :goto_d
    return-void

    .line 40
    :catch_e
    move-exception v0

    .line 41
    const-string v1, "target requester should catch exception and pass to callback.onError"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/google/android/youtube/core/async/c;->b:Lcom/google/android/youtube/core/async/g;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/c;->a:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_d
.end method
