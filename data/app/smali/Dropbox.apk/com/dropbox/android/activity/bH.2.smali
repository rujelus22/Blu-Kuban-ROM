.class final Lcom/dropbox/android/activity/bH;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/TourPageFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/TourPageFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/dropbox/android/activity/bH;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 390
    invoke-static {}, Lcom/dropbox/android/util/h;->c()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "value"

    const-string v2, "cancel"

    invoke-virtual {v0, v1, v2}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 391
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 393
    iget-object v1, p0, Lcom/dropbox/android/activity/bH;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/TourPageFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "INTRO_TOUR"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 394
    invoke-static {}, Lcom/dropbox/android/util/h;->P()Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 396
    :cond_2d
    invoke-virtual {v0, v3}, Ldbxyzptlk/j/m;->a(Z)V

    .line 397
    iget-object v0, p0, Lcom/dropbox/android/activity/bH;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/TourPageFragment;->a(Lcom/dropbox/android/activity/TourPageFragment;)Lcom/dropbox/android/activity/bT;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 398
    iget-object v0, p0, Lcom/dropbox/android/activity/bH;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/TourPageFragment;->a(Lcom/dropbox/android/activity/TourPageFragment;)Lcom/dropbox/android/activity/bT;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/bH;->a:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/TourPageFragment;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARG_INDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/bT;->b(I)V

    .line 400
    :cond_4d
    return-void
.end method
