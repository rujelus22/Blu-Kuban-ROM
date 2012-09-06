.class final Lcom/dropbox/android/activity/U;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/dropbox/android/activity/U;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 134
    iget-object v1, p0, Lcom/dropbox/android/activity/U;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v1}, Lcom/dropbox/android/activity/GalleryActivity;->a(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/U;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v2}, Lcom/dropbox/android/activity/GalleryActivity;->b(Lcom/dropbox/android/activity/GalleryActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 135
    iget-object v1, p0, Lcom/dropbox/android/activity/U;->a:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v1, v0}, Lcom/dropbox/android/activity/GalleryActivity;->a(Lcom/dropbox/android/activity/GalleryActivity;Z)V

    .line 136
    instance-of v1, p1, Landroid/widget/Button;

    if-nez v1, :cond_1d

    instance-of v1, p1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1e

    .line 137
    :cond_1d
    const/4 v0, 0x0

    .line 140
    :cond_1e
    return v0
.end method
