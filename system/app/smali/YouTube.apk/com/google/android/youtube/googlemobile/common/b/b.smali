.class public final Lcom/google/android/youtube/googlemobile/common/b/b;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/common/b/a;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/googlemobile/common/b/a;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->a:Lcom/google/android/youtube/googlemobile/common/b/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    invoke-static {p1}, Lcom/google/android/youtube/googlemobile/common/b/a;->a(Lcom/google/android/youtube/googlemobile/common/b/a;)V

    iput-object p2, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->a:Lcom/google/android/youtube/googlemobile/common/b/a;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/b/a;->b(Lcom/google/android/youtube/googlemobile/common/b/a;)V

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_10

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->a:Lcom/google/android/youtube/googlemobile/common/b/a;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/b/a;->c(Lcom/google/android/youtube/googlemobile/common/b/a;)V

    :goto_f
    return-void

    :catch_10
    move-exception v0

    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_1a

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->a:Lcom/google/android/youtube/googlemobile/common/b/a;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/b/a;->c(Lcom/google/android/youtube/googlemobile/common/b/a;)V

    goto :goto_f

    :catchall_1a
    move-exception v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->a:Lcom/google/android/youtube/googlemobile/common/b/a;

    invoke-static {v1}, Lcom/google/android/youtube/googlemobile/common/b/a;->c(Lcom/google/android/youtube/googlemobile/common/b/a;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/youtube/googlemobile/common/b/b;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
