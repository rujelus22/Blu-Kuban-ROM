.class final Lcom/google/android/youtube/app/remote/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/youtube/app/remote/n;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/n;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/s;->b:Lcom/google/android/youtube/app/remote/n;

    iput p2, p0, Lcom/google/android/youtube/app/remote/s;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 162
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/s;->b:Lcom/google/android/youtube/app/remote/n;

    monitor-enter v1

    .line 163
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/s;->b:Lcom/google/android/youtube/app/remote/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/n;->b(Lcom/google/android/youtube/app/remote/n;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/ao;

    .line 164
    iget v3, p0, Lcom/google/android/youtube/app/remote/s;->a:I

    invoke-interface {v0, v3}, Lcom/google/android/youtube/app/remote/ao;->a(I)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1f

    goto :goto_d

    .line 166
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
