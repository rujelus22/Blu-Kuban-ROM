.class Lcom/google/android/maps/driveabout/app/bt;
.super Lcom/google/android/maps/driveabout/app/by;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;II)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 325
    const-string v2, "__trafficview"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v6, p3

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/by;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    .line 327
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;IILcom/google/android/maps/driveabout/app/bo;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/app/bt;-><init>(Landroid/content/Context;II)V

    return-void
.end method
