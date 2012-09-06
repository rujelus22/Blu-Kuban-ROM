.class public Lcom/google/android/maps/driveabout/app/bl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/cI;Ln/m;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    if-eqz p1, :cond_8

    .line 41
    const v0, 0x7f0d006e

    invoke-interface {p1, v0}, Lcom/google/android/maps/driveabout/app/cI;->a(I)V

    .line 43
    :cond_8
    instance-of v0, p2, Ln/q;

    if-eqz v0, :cond_2e

    .line 45
    new-instance v0, Lcom/google/googlenav/layer/p;

    const-string v1, "TrafficIncident"

    invoke-virtual {p2}, Ln/m;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/google/android/maps/driveabout/app/bm;

    invoke-direct {v3, p1, p0}, Lcom/google/android/maps/driveabout/app/bm;-><init>(Lcom/google/android/maps/driveabout/app/cI;Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/layer/p;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/layer/q;)V

    .line 76
    new-instance v1, LA/g;

    const-string v2, "addRequest"

    invoke-direct {v1, v2, v0}, LA/g;-><init>(Ljava/lang/String;Lac/g;)V

    invoke-static {v1}, LA/f;->b(LA/j;)V

    .line 78
    invoke-static {}, Lac/h;->b()Lac/p;

    move-result-object v1

    invoke-interface {v1, v0}, Lac/p;->c(Lac/g;)V

    .line 91
    :goto_2d
    return-void

    .line 81
    :cond_2e
    invoke-virtual {p2}, Ln/m;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/K;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 83
    const-string v0, "com.google.android.apps.maps"

    const-string v2, "com.google.android.maps.MapsActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 86
    :try_start_4d
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_50
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_2d

    .line 87
    :catch_51
    move-exception v0

    .line 88
    const-string v1, "Could not launch internal item details"

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2d
.end method
