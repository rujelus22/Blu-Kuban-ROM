.class public LCK;
.super Ljava/lang/Object;
.source "TabletUtil.java"


# static fields
.field private static a:Landroid/content/res/Resources;

.field private static a:Z


# direct methods
.method public static declared-synchronized a(Landroid/content/res/Resources;)Z
    .registers 4
    .parameter

    .prologue
    .line 30
    const-class v1, LCK;

    monitor-enter v1

    :try_start_3
    sget-object v0, LCK;->a:Landroid/content/res/Resources;

    if-eq v0, p0, :cond_1d

    .line 31
    sput-object p0, LCK;->a:Landroid/content/res/Resources;

    .line 33
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x3

    if-le v0, v2, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_21

    const/4 v0, 0x1

    :goto_1b
    sput-boolean v0, LCK;->a:Z

    .line 39
    :cond_1d
    sget-boolean v0, LCK;->a:Z
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_23

    monitor-exit v1

    return v0

    .line 33
    :cond_21
    const/4 v0, 0x0

    goto :goto_1b

    .line 30
    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0
.end method
