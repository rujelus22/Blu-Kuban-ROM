.class final Lcom/google/android/youtube/core/async/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/a/c;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/a/c;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p2, p0, Lcom/google/android/youtube/core/async/a/d;->b:I

    .line 137
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 131
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    invoke-static {v0, p1, p2}, Lcom/google/android/youtube/core/async/a/c;->a(Lcom/google/android/youtube/core/async/a/c;Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 131
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    check-cast p2, Lcom/google/android/youtube/core/model/Video;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/a/c;->a(Lcom/google/android/youtube/core/async/a/c;)[Lcom/google/android/youtube/core/model/Video;

    move-result-object v0

    iget v2, p0, Lcom/google/android/youtube/core/async/a/d;->b:I

    aput-object p2, v0, v2

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/a/c;->b(Lcom/google/android/youtube/core/async/a/c;)[Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v0

    iget v2, p0, Lcom/google/android/youtube/core/async/a/d;->b:I

    aput-object p1, v0, v2

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/a/c;->c(Lcom/google/android/youtube/core/async/a/c;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/a/c;->a(Lcom/google/android/youtube/core/async/a/c;Z)Z

    iget-object v0, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    iget-object v2, p0, Lcom/google/android/youtube/core/async/a/d;->a:Lcom/google/android/youtube/core/async/a/c;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/a/c;->d(Lcom/google/android/youtube/core/async/a/c;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/async/a/c;->a(Lcom/google/android/youtube/core/async/a/c;I)V

    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_36

    return-void

    :catchall_36
    move-exception v0

    monitor-exit v1

    throw v0
.end method
