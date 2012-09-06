.class final Lcom/dropbox/android/activity/ai;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/ah;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/ah;)V
    .registers 2
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dropbox/android/activity/ai;->a:Lcom/dropbox/android/activity/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 277
    iget-object v0, p0, Lcom/dropbox/android/activity/ai;->a:Lcom/dropbox/android/activity/ah;

    iget-object v0, v0, Lcom/dropbox/android/activity/ah;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 278
    iget-object v0, p0, Lcom/dropbox/android/activity/ai;->a:Lcom/dropbox/android/activity/ah;

    iget-object v0, v0, Lcom/dropbox/android/activity/ah;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/GalleryPickerFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->d_()Landroid/support/v4/app/w;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/android/activity/ai;->a:Lcom/dropbox/android/activity/ah;

    iget-object v3, v3, Lcom/dropbox/android/activity/ah;->a:Lcom/dropbox/android/activity/GalleryPickerFragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/w;->b(ILandroid/os/Bundle;Landroid/support/v4/app/x;)Ldbxyzptlk/a/d;

    .line 280
    :cond_1f
    return-void
.end method
