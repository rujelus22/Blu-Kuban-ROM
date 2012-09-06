.class final Lcom/dropbox/android/taskqueue/c;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/p/l;


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/CameraUploadTask;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/CameraUploadTask;)V
    .registers 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/c;->a:Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 4

    .prologue
    .line 353
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/c;->a:Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(Lcom/dropbox/android/taskqueue/CameraUploadTask;Ldbxyzptlk/j/m;Lcom/dropbox/android/service/w;)Lcom/dropbox/android/taskqueue/o;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    if-eq v0, v1, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
