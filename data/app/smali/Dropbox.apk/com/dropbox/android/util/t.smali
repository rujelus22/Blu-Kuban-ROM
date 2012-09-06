.class public final Lcom/dropbox/android/util/t;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 2
    .parameter

    .prologue
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method
