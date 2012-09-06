.class public Lcom/google/android/apps/docs/app/BaseDialogFragment;
.super Lcom/google/android/apps/docs/view/RoboDialogFragment;
.source "BaseDialogFragment.java"


# instance fields
.field protected a:LIi;

.field public a:LIk;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field public a:LdQ;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/apps/docs/view/RoboDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()LIC;
    .registers 4

    .prologue
    .line 51
    new-instance v1, Lej;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-direct {v1, v2, v0}, Lej;-><init>(Landroid/app/Activity;LdL;)V

    return-object v1
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->a(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 40
    instance-of v1, v0, Lcom/google/android/apps/docs/app/BaseActivity;

    if-eqz v1, :cond_1a

    .line 41
    check-cast v0, Lcom/google/android/apps/docs/app/BaseActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/app/BaseActivity;->a()LIi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:LIi;

    .line 46
    :goto_13
    const/4 v0, 0x0

    sget v1, LcZ;->CakemixTheme_Dialog:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(II)V

    .line 47
    return-void

    .line 43
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:LIk;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a()LIC;

    move-result-object v2

    invoke-interface {v0, v1, v2}, LIk;->a(Landroid/app/Activity;LIC;)LIi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:LIi;

    goto :goto_13
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a:LIi;

    invoke-interface {v0, p1}, LIi;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-super {p0, p1}, Lcom/google/android/apps/docs/view/RoboDialogFragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_17
    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
