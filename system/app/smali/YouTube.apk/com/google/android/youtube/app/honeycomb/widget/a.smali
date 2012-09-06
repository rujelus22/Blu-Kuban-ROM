.class public final Lcom/google/android/youtube/app/honeycomb/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.youtube.action.widget_update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method
