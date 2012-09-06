.class final Lcom/dropbox/android/activity/t;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/CameraUploadGridFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/CameraUploadGridFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/dropbox/android/activity/t;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/android/activity/t;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->a(Lcom/dropbox/android/activity/CameraUploadGridFragment;Z)Z

    .line 78
    iget-object v0, p0, Lcom/dropbox/android/activity/t;->a:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->a(Lcom/dropbox/android/activity/CameraUploadGridFragment;)V

    .line 79
    return-void
.end method
