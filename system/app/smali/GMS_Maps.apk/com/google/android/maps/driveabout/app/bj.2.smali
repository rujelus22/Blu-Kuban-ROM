.class public Lcom/google/android/maps/driveabout/app/bj;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/bC;)V
    .registers 5

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/bC;->m()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/bC;->l()Lt/M;

    move-result-object v1

    invoke-virtual {v1}, Lt/M;->o()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/maps/driveabout/vector/bC;->l()Lt/M;

    move-result-object v2

    invoke-virtual {v2}, Lt/M;->d()Lt/L;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/bj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lt/L;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lt/L;)V
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/driveabout/app/MarkerDetailsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.google.android.maps.driveabout.LAYER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.SERVER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.LAT_E6"

    invoke-virtual {p3}, Lt/L;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.google.android.maps.driveabout.LNG_E6"

    invoke-virtual {p3}, Lt/L;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2b} :catch_2c

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v1, "Could not launch internal item details"

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b
.end method
