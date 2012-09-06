.class final Lcom/dropbox/android/taskqueue/L;
.super Ljava/lang/Thread;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/G;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/G;)V
    .registers 2
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/L;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 495
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/L;->a:Lcom/dropbox/android/taskqueue/G;

    monitor-enter v1

    .line 496
    :try_start_3
    invoke-static {}, Lcom/dropbox/android/util/h;->D()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 497
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/L;->a:Lcom/dropbox/android/taskqueue/G;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/dropbox/android/taskqueue/G;->a(Lcom/dropbox/android/taskqueue/G;Z)Z

    .line 498
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/L;->a:Lcom/dropbox/android/taskqueue/G;

    invoke-static {v0}, Lcom/dropbox/android/taskqueue/G;->a(Lcom/dropbox/android/taskqueue/G;)V

    .line 499
    monitor-exit v1

    .line 500
    return-void

    .line 499
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method
