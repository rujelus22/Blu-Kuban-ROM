.class final Lcom/dropbox/android/activity/q;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/p;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/p;)V
    .registers 2
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/dropbox/android/activity/q;->a:Lcom/dropbox/android/activity/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 722
    iget-object v0, p0, Lcom/dropbox/android/activity/q;->a:Lcom/dropbox/android/activity/p;

    iget-object v0, v0, Lcom/dropbox/android/activity/p;->a:Lcom/dropbox/android/activity/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 723
    iget-object v0, p0, Lcom/dropbox/android/activity/q;->a:Lcom/dropbox/android/activity/p;

    iget-object v0, v0, Lcom/dropbox/android/activity/p;->a:Lcom/dropbox/android/activity/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    return-void
.end method
