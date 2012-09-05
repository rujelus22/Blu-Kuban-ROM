.class final Lcom/google/android/youtube/app/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/g;

.field final synthetic b:Lcom/google/android/youtube/app/i;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/i;Lcom/google/android/youtube/core/async/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/app/i;

    iput-object p2, p0, Lcom/google/android/youtube/app/m;->a:Lcom/google/android/youtube/core/async/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 135
    iget-object v1, p0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/app/i;

    monitor-enter v1

    .line 136
    :try_start_3
    iget-object v0, p0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/app/i;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;Z)Z

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v0}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/app/i;

    iget-object v3, p0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v3}, Lcom/google/android/youtube/app/i;->b(Lcom/google/android/youtube/app/i;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/youtube/app/i;->a(Lcom/google/android/youtube/app/i;Landroid/content/SharedPreferences;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 140
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_34

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/m;->a:Lcom/google/android/youtube/core/async/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/app/m;->b:Lcom/google/android/youtube/app/i;

    invoke-static {v2}, Lcom/google/android/youtube/app/i;->c(Lcom/google/android/youtube/app/i;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    return-void

    .line 140
    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0
.end method
