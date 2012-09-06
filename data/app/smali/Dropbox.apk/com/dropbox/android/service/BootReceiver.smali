.class public Lcom/dropbox/android/service/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-static {p0, p2}, Lcom/dropbox/android/util/h;->a(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 15
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/m;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 16
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/dropbox/android/service/CameraUploadService;->c(ZLandroid/content/Context;)V

    .line 18
    :cond_15
    return-void
.end method
