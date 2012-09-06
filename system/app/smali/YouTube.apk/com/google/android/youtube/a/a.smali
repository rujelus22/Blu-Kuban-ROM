.class public final Lcom/google/android/youtube/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    move-object v0, p1

    .line 18
    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_10

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_10

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    :cond_10
    instance-of v1, v0, Landroid/support/v4/app/FragmentActivity;

    if-nez v1, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The MediaRouteButton\'s Context is not an FragmentActivity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->d()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/athome/picker/media/k;->a(Ljava/lang/Object;Landroid/support/v4/app/i;)V

    .line 19
    return-void
.end method
