.class Lcom/google/android/maps/driveabout/app/br;
.super Lcom/google/android/maps/driveabout/app/bx;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 11

    const/4 v4, 0x0

    const-string v2, "__trafficview"

    const v0, 0x7f0b0038

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0200ff

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/bx;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bl;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/br;-><init>(Landroid/content/Context;)V

    return-void
.end method
