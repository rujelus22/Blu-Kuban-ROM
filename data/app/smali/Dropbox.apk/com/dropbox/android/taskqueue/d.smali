.class final Lcom/dropbox/android/taskqueue/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/service/v;


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/CameraUploadTask;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/CameraUploadTask;)V
    .registers 2
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/d;->a:Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/dropbox/android/service/w;)V
    .registers 5
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/d;->a:Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/CameraUploadTask;Ldbxyzptlk/j/m;Lcom/dropbox/android/service/w;)Lcom/dropbox/android/taskqueue/o;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    if-eq v0, v1, :cond_21

    .line 507
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dropbox/android/taskqueue/e;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/d;->a:Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-static {v2}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/CameraUploadTask;)Ldbxyzptlk/p/D;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/android/taskqueue/e;-><init>(Ldbxyzptlk/p/D;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 509
    :cond_21
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method
