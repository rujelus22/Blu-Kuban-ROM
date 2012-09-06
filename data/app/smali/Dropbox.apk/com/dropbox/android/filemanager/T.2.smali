.class public final Lcom/dropbox/android/filemanager/T;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/dropbox/android/filemanager/U;
    .registers 2
    .parameter

    .prologue
    .line 9
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->b()Z

    move-result v0

    .line 10
    if-eqz v0, :cond_11

    sget-object v0, Lcom/dropbox/android/filemanager/U;->d:Lcom/dropbox/android/filemanager/U;

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/dropbox/android/filemanager/U;->c:Lcom/dropbox/android/filemanager/U;

    goto :goto_10
.end method

.method public static b(Landroid/content/Context;)Lcom/dropbox/android/filemanager/U;
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->b()Z

    move-result v0

    .line 21
    if-eqz v0, :cond_11

    sget-object v0, Lcom/dropbox/android/filemanager/U;->d:Lcom/dropbox/android/filemanager/U;

    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/dropbox/android/filemanager/U;->c:Lcom/dropbox/android/filemanager/U;

    goto :goto_10
.end method

.method public static c(Landroid/content/Context;)Lcom/dropbox/android/filemanager/U;
    .registers 2
    .parameter

    .prologue
    .line 25
    sget-object v0, Lcom/dropbox/android/filemanager/U;->d:Lcom/dropbox/android/filemanager/U;

    return-object v0
.end method
