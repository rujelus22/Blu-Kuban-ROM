.class public Landroid/support/v4/app/ActivityCompat;
.super Ljava/lang/Object;
.source "ActivityCompat.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static invalidateOptionsMenu(Landroid/app/Activity;)Z
    .registers 3
    .parameter

    .prologue
    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    .line 62
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 63
    const/4 v0, 0x1

    .line 65
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static startActivities(Landroid/app/Activity;[Landroid/content/Intent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_b

    .line 95
    invoke-static {p0, p1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->startActivities(Landroid/app/Activity;[Landroid/content/Intent;)V

    .line 96
    const/4 v0, 0x1

    .line 98
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
