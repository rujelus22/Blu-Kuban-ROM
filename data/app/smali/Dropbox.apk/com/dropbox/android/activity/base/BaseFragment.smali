.class public Lcom/dropbox/android/activity/base/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "create.view"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 34
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 15
    const-string v0, "attach"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 16
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 17
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 27
    const-string v0, "create"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 28
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 45
    const-string v0, "start"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 46
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->c()V

    .line 47
    return-void
.end method

.method public d()V
    .registers 2

    .prologue
    .line 63
    const-string v0, "stop"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 64
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->d()V

    .line 65
    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    const-string v0, "activity.created"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 40
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 69
    const-string v0, "destroy.view"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 70
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->e()V

    .line 71
    return-void
.end method

.method public o()V
    .registers 2

    .prologue
    .line 51
    const-string v0, "resume"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 52
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->o()V

    .line 53
    return-void
.end method

.method public final p()V
    .registers 2

    .prologue
    .line 57
    const-string v0, "pause"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 58
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->p()V

    .line 59
    return-void
.end method

.method public final q()V
    .registers 2

    .prologue
    .line 75
    const-string v0, "destroy"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 76
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->q()V

    .line 77
    return-void
.end method

.method public s()V
    .registers 2

    .prologue
    .line 21
    const-string v0, "detach"

    invoke-static {v0, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/support/v4/app/Fragment;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 22
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s()V

    .line 23
    return-void
.end method
