.class final Lcom/google/android/youtube/core/async/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/google/android/youtube/core/async/l;

.field final synthetic c:Lcom/google/android/youtube/core/async/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/d;Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/android/youtube/core/async/e;->c:Lcom/google/android/youtube/core/async/d;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/e;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/youtube/core/async/e;->b:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/e;->c:Lcom/google/android/youtube/core/async/d;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/d;->a(Lcom/google/android/youtube/core/async/d;)Lcom/google/android/youtube/core/async/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/e;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/e;->b:Lcom/google/android/youtube/core/async/l;

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/ar;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/l;)V
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
    iget-object v1, p0, Lcom/google/android/youtube/core/async/e;->b:Lcom/google/android/youtube/core/async/l;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/e;->a:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_d
.end method
