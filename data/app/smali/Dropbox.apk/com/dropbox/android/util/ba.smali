.class public final Lcom/dropbox/android/util/ba;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a()V
    .registers 2

    .prologue
    .line 12
    invoke-static {}, Lcom/dropbox/android/util/h;->t()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 15
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.dropbox.android.filemanager.ApiManager.ACTION_UNLINKED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/dropbox/android/a;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldbxyzptlk/a/g;->a(Landroid/content/Context;)Ldbxyzptlk/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Ldbxyzptlk/a/g;->b(Landroid/content/Intent;)V

    .line 17
    return-void
.end method
