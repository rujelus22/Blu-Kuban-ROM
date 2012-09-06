.class public final Lcom/dropbox/android/util/a;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/app/Activity;)V
    .registers 3
    .parameter

    .prologue
    .line 13
    invoke-static {}, Lcom/dropbox/android/util/bb;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 14
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 16
    :cond_e
    return-void
.end method
