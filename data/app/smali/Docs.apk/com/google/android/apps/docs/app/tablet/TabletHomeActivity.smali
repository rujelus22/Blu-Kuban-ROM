.class public Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;
.super Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;
.source "TabletHomeActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Z
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 23
    const-string v0, "TabletHomeActivity"

    const-string v1, "in onNewIntent"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 27
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;->a:Lkc;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lkc;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 33
    :goto_22
    return-void

    .line 30
    :cond_23
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;->finish()V

    goto :goto_22
.end method
