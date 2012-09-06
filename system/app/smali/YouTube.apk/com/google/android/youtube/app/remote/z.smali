.class final Lcom/google/android/youtube/app/remote/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/l;

.field final synthetic b:Lcom/google/android/youtube/app/remote/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/remote/v;Lcom/google/android/youtube/core/async/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    iput-object p2, p0, Lcom/google/android/youtube/app/remote/z;->a:Lcom/google/android/youtube/core/async/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 153
    iget-object v1, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    monitor-enter v1

    .line 154
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->b(Lcom/google/android/youtube/app/remote/v;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Z)Z

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v0}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/v;->c(Lcom/google/android/youtube/app/remote/v;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_3a

    .line 160
    iget-object v0, p0, Lcom/google/android/youtube/app/remote/z;->a:Lcom/google/android/youtube/core/async/l;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    iget-object v3, p0, Lcom/google/android/youtube/app/remote/z;->b:Lcom/google/android/youtube/app/remote/v;

    invoke-static {v3}, Lcom/google/android/youtube/app/remote/v;->d(Lcom/google/android/youtube/app/remote/v;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/remote/v;->a(Lcom/google/android/youtube/app/remote/v;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    return-void

    .line 158
    :catchall_3a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
