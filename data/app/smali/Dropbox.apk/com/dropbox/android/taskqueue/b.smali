.class final Lcom/dropbox/android/taskqueue/b;
.super Lcom/dropbox/android/util/ak;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/taskqueue/CameraUploadTask;


# direct methods
.method constructor <init>(Lcom/dropbox/android/taskqueue/CameraUploadTask;)V
    .registers 2
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/b;->a:Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-direct {p0}, Lcom/dropbox/android/util/ak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/b;->a:Lcom/dropbox/android/taskqueue/CameraUploadTask;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dropbox/android/taskqueue/CameraUploadTask;->a(JJ)V

    .line 318
    return-void
.end method
