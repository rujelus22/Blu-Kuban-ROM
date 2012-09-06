.class final Lcom/twitter/android/util/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/util/p;

.field private final b:J


# direct methods
.method constructor <init>(Lcom/twitter/android/util/p;J)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/util/t;->a:Lcom/twitter/android/util/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/twitter/android/util/t;->b:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/util/t;->a:Lcom/twitter/android/util/p;

    iget-object v1, v0, Lcom/twitter/android/util/p;->g:[I

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Lcom/twitter/android/util/t;->a:Lcom/twitter/android/util/p;

    iget-object v0, v0, Lcom/twitter/android/util/p;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_11

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_22

    :goto_10
    return-void

    :cond_11
    monitor-exit v1

    new-instance v0, Lcom/twitter/android/util/r;

    iget-object v1, p0, Lcom/twitter/android/util/t;->a:Lcom/twitter/android/util/p;

    iget-wide v2, p0, Lcom/twitter/android/util/t;->b:J

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/util/r;-><init>(Lcom/twitter/android/util/p;J)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/twitter/android/util/r;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_10

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method
