.class final Lcom/dropbox/android/activity/u;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/quickactions/a;

.field final synthetic b:Lcom/dropbox/android/activity/CameraUploadGridFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/CameraUploadGridFragment;Lcom/dropbox/android/widget/quickactions/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/dropbox/android/activity/u;->b:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    iput-object p2, p0, Lcom/dropbox/android/activity/u;->a:Lcom/dropbox/android/widget/quickactions/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/dropbox/android/activity/u;->a:Lcom/dropbox/android/widget/quickactions/a;

    iget-object v1, p0, Lcom/dropbox/android/activity/u;->b:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/u;->b:Lcom/dropbox/android/activity/CameraUploadGridFragment;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/CameraUploadGridFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/widget/quickactions/a;->a(Landroid/app/Activity;Landroid/content/Context;)V

    .line 245
    const/4 v0, 0x1

    return v0
.end method
