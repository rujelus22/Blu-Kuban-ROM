.class public final Lcom/dropbox/android/util/aT;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/content/Context;II)Landroid/widget/Toast;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/dropbox/android/util/aT;->a(Landroid/widget/Toast;)V

    .line 25
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/dropbox/android/util/aT;->a(Landroid/widget/Toast;)V

    .line 19
    return-object v0
.end method

.method public static a(Landroid/widget/Toast;)V
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 29
    const/16 v0, 0x31

    invoke-virtual {p0, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 30
    return-void
.end method
