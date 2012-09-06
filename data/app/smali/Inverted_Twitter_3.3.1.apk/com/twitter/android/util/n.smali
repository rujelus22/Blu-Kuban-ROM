.class public final Lcom/twitter/android/util/n;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/ArrayList;

.field final b:Ljava/util/ArrayList;

.field final c:Ljava/util/HashMap;

.field final d:Landroid/os/Handler;

.field final e:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/util/n;->a:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/twitter/android/util/n;->d:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/twitter/android/util/n;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    const/high16 v2, 0x41a0

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lcom/twitter/android/util/n;->c:Ljava/util/HashMap;

    iput p1, p0, Lcom/twitter/android/util/n;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)Lcom/twitter/android/api/TweetEntities;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/util/n;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/api/TweetEntities;

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final a(Ljava/lang/Long;Lcom/twitter/android/api/TweetEntities;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/twitter/android/util/n;->a(Ljava/lang/Long;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v1, p0, Lcom/twitter/android/util/n;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/twitter/android/util/n;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/twitter/android/util/n;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_1d

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method
