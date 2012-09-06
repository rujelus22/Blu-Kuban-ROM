.class abstract Lcom/dropbox/android/service/g;
.super Ljava/util/TimerTask;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/service/CameraUploadService;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/dropbox/android/service/CameraUploadService;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 967
    iput-object p1, p0, Lcom/dropbox/android/service/g;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 968
    iput p2, p0, Lcom/dropbox/android/service/g;->b:I

    .line 969
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .registers 4
    .parameter

    .prologue
    .line 987
    iget-object v0, p0, Lcom/dropbox/android/service/g;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->i(Lcom/dropbox/android/service/CameraUploadService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 988
    :try_start_7
    invoke-virtual {p0}, Lcom/dropbox/android/service/g;->b()Z

    move-result v0

    if-nez v0, :cond_10

    .line 989
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 991
    :cond_10
    monitor-exit v1

    .line 992
    return-void

    .line 991
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected final b()Z
    .registers 4

    .prologue
    .line 995
    iget-object v0, p0, Lcom/dropbox/android/service/g;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->i(Lcom/dropbox/android/service/CameraUploadService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 996
    :try_start_7
    iget v0, p0, Lcom/dropbox/android/service/g;->b:I

    iget-object v2, p0, Lcom/dropbox/android/service/g;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v2}, Lcom/dropbox/android/service/CameraUploadService;->g(Lcom/dropbox/android/service/CameraUploadService;)I

    move-result v2

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/dropbox/android/service/g;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->f(Lcom/dropbox/android/service/CameraUploadService;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    monitor-exit v1

    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1a

    .line 997
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public final run()V
    .registers 2

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/dropbox/android/service/g;->b()Z

    move-result v0

    if-nez v0, :cond_9

    .line 976
    invoke-virtual {p0}, Lcom/dropbox/android/service/g;->a()V

    .line 978
    :cond_9
    return-void
.end method
