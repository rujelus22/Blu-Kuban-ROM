.class final Lcom/google/android/youtube/app/remote/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/youtube/app/remote/n;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/n;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/u;->b:Lcom/google/android/youtube/app/remote/n;

    iput-boolean p2, p0, Lcom/google/android/youtube/app/remote/u;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 186
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/u;->b:Lcom/google/android/youtube/app/remote/n;

    monitor-enter v1

    .line 187
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/u;->b:Lcom/google/android/youtube/app/remote/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/n;->a(Lcom/google/android/youtube/app/remote/n;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/aj;

    .line 188
    iget-boolean v3, p0, Lcom/google/android/youtube/app/remote/u;->a:Z

    invoke-interface {v0, v3}, Lcom/google/android/youtube/app/remote/aj;->a(Z)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    goto :goto_d

    .line 190
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_1f

    return-void
.end method
