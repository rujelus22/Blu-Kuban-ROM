.class final Lcom/dropbox/android/activity/Z;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/ae;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/dropbox/android/activity/Z;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/dropbox/android/activity/Z;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/GalleryActivity;->a(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/Z;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/GalleryActivity;->b(Lcom/dropbox/android/activity/GalleryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/dropbox/android/activity/Z;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/GalleryActivity;->f_()V

    .line 205
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/dropbox/android/activity/Z;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/GalleryActivity;->a(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/Z;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/GalleryActivity;->b(Lcom/dropbox/android/activity/GalleryActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 211
    iget-object v0, p0, Lcom/dropbox/android/activity/Z;->a:Lcom/dropbox/android/activity/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->a(Lcom/dropbox/android/activity/GalleryActivity;Z)V

    .line 212
    return-void
.end method
