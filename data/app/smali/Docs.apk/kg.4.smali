.class public Lkg;
.super Ljava/lang/Object;
.source "TabletUtil.java"


# static fields
.field private static a:Landroid/content/res/Resources;

.field private static a:Z


# direct methods
.method public static a()Z
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Lkg;->b()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/res/Resources;)Z
    .registers 5
    .parameter

    .prologue
    .line 30
    const-class v1, Lkg;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lkg;->a:Landroid/content/res/Resources;

    if-eq v0, p0, :cond_1e

    .line 31
    sput-object p0, Lkg;->a:Landroid/content/res/Resources;

    .line 34
    invoke-static {p0}, Lkg;->d(Landroid/content/res/Resources;)Z

    move-result v0

    .line 35
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    const/16 v3, 0xb

    if-lt v2, v3, :cond_15

    if-nez v0, :cond_1b

    :cond_15
    invoke-static {p0}, Lkg;->b(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1b
    const/4 v0, 0x1

    :goto_1c
    sput-boolean v0, Lkg;->a:Z

    .line 40
    :cond_1e
    sget-boolean v0, Lkg;->a:Z
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_24

    monitor-exit v1

    return v0

    .line 36
    :cond_22
    const/4 v0, 0x0

    goto :goto_1c

    .line 30
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()Z
    .registers 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(Landroid/content/res/Resources;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 49
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_19

    .line 50
    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-gt v2, v3, :cond_19

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_19

    const/4 v0, 0x1

    .line 54
    :cond_19
    return v0
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static c(Landroid/content/res/Resources;)Z
    .registers 3
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static d(Landroid/content/res/Resources;)Z
    .registers 3
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
