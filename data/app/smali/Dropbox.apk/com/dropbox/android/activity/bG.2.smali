.class final Lcom/dropbox/android/activity/bG;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/bR;

.field final synthetic b:Lcom/dropbox/android/activity/TourPageFragment;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/bR;Lcom/dropbox/android/activity/TourPageFragment;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/dropbox/android/activity/bG;->a:Lcom/dropbox/android/activity/bR;

    iput-object p2, p0, Lcom/dropbox/android/activity/bG;->b:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 359
    iget-object v0, p0, Lcom/dropbox/android/activity/bG;->a:Lcom/dropbox/android/activity/bR;

    invoke-interface {v0}, Lcom/dropbox/android/activity/bR;->b()Z

    move-result v3

    .line 360
    iget-object v0, p0, Lcom/dropbox/android/activity/bG;->a:Lcom/dropbox/android/activity/bR;

    invoke-interface {v0}, Lcom/dropbox/android/activity/bR;->a()Z

    move-result v4

    .line 362
    invoke-static {}, Lcom/dropbox/android/util/h;->c()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v5, "value"

    const-string v6, "ok"

    invoke-virtual {v0, v5, v6}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 363
    invoke-static {}, Lcom/dropbox/android/util/h;->l()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v5, "cameraupload.usedataplan"

    invoke-virtual {v0, v5, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 364
    invoke-static {}, Lcom/dropbox/android/util/h;->l()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v5, "cameraupload.uploadexisting"

    invoke-virtual {v0, v5, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 366
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v5

    .line 367
    invoke-virtual {v5, v1}, Ldbxyzptlk/j/m;->e(Z)V

    .line 368
    invoke-virtual {v5, v1}, Ldbxyzptlk/j/m;->c(Z)V

    .line 369
    if-nez v3, :cond_97

    move v0, v1

    :goto_44
    invoke-virtual {v5, v0}, Ldbxyzptlk/j/m;->h(Z)V

    .line 370
    invoke-virtual {v5, v4}, Ldbxyzptlk/j/m;->f(Z)V

    .line 371
    invoke-virtual {v5, v1}, Ldbxyzptlk/j/m;->g(Z)V

    .line 372
    sget-object v0, Ldbxyzptlk/j/p;->b:Ldbxyzptlk/j/p;

    invoke-virtual {v5, v0}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/p;)V

    .line 373
    if-eqz v3, :cond_99

    sget-object v0, Ldbxyzptlk/j/o;->b:Ldbxyzptlk/j/o;

    :goto_56
    invoke-virtual {v5, v0}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/o;)V

    .line 375
    invoke-virtual {v5}, Ldbxyzptlk/j/m;->m()V

    .line 376
    invoke-virtual {v5, v2}, Ldbxyzptlk/j/m;->d(Z)V

    .line 377
    sget-object v0, Lcom/dropbox/android/util/aw;->b:Lcom/dropbox/android/util/aw;

    invoke-static {v0}, Lcom/dropbox/android/service/NotificationService;->a(Lcom/dropbox/android/util/aw;)V

    .line 378
    sget-object v0, Lcom/dropbox/android/util/aw;->c:Lcom/dropbox/android/util/aw;

    invoke-static {v0}, Lcom/dropbox/android/service/NotificationService;->a(Lcom/dropbox/android/util/aw;)V

    .line 379
    iget-object v0, p0, Lcom/dropbox/android/activity/bG;->b:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/TourPageFragment;->i()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/dropbox/android/service/CameraUploadService;->a(ZLandroid/content/Context;)V

    .line 380
    invoke-static {}, Lcom/dropbox/android/util/h;->N()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 382
    iget-object v0, p0, Lcom/dropbox/android/activity/bG;->b:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/TourPageFragment;->a(Lcom/dropbox/android/activity/TourPageFragment;)Lcom/dropbox/android/activity/bT;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 383
    iget-object v0, p0, Lcom/dropbox/android/activity/bG;->b:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/TourPageFragment;->a(Lcom/dropbox/android/activity/TourPageFragment;)Lcom/dropbox/android/activity/bT;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/bG;->b:Lcom/dropbox/android/activity/TourPageFragment;

    invoke-virtual {v1}, Lcom/dropbox/android/activity/TourPageFragment;->h()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARG_INDEX"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/dropbox/android/activity/bT;->b(I)V

    .line 385
    :cond_96
    return-void

    :cond_97
    move v0, v2

    .line 369
    goto :goto_44

    .line 373
    :cond_99
    sget-object v0, Ldbxyzptlk/j/o;->c:Ldbxyzptlk/j/o;

    goto :goto_56
.end method
