.class final Lcom/dropbox/android/service/d;
.super Landroid/database/ContentObserver;
.source "panda.py"


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/dropbox/android/service/CameraUploadService;


# direct methods
.method constructor <init>(Lcom/dropbox/android/service/CameraUploadService;Landroid/os/Handler;Landroid/net/Uri;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 230
    iput-object p1, p0, Lcom/dropbox/android/service/d;->b:Lcom/dropbox/android/service/CameraUploadService;

    iput-object p3, p0, Lcom/dropbox/android/service/d;->a:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .registers 6
    .parameter

    .prologue
    .line 233
    iget-object v0, p0, Lcom/dropbox/android/service/d;->b:Lcom/dropbox/android/service/CameraUploadService;

    iget-object v1, p0, Lcom/dropbox/android/service/d;->a:Landroid/net/Uri;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v1, v2, v3}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;Landroid/net/Uri;J)V

    .line 234
    return-void
.end method
