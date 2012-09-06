.class final Lcom/dropbox/android/service/b;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/service/CameraUploadService;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/CameraUploadService;)V
    .registers 2
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/dropbox/android/service/b;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-static {}, Lcom/dropbox/android/util/h;->w()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 145
    iget-object v0, p0, Lcom/dropbox/android/service/b;->a:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    iget-object v0, p0, Lcom/dropbox/android/service/b;->a:Lcom/dropbox/android/service/CameraUploadService;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;J)V

    .line 147
    return-void
.end method
