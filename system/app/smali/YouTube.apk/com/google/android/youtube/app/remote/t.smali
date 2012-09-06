.class final Lcom/google/android/youtube/app/remote/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/n;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/n;)V
    .registers 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/t;->a:Lcom/google/android/youtube/app/remote/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/t;->a:Lcom/google/android/youtube/app/remote/n;

    monitor-enter v1

    .line 175
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/t;->a:Lcom/google/android/youtube/app/remote/n;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/n;->a(Lcom/google/android/youtube/app/remote/n;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/remote/aj;

    .line 176
    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/aj;->l()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 178
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_20
    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    return-void
.end method
