.class Lcom/google/android/maps/driveabout/app/bu;
.super Lcom/google/android/maps/driveabout/app/by;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 271
    const-string v2, "__satellite"

    const v0, 0x7f0d003a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f020121

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v7, v4

    move v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/maps/driveabout/app/by;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZIZI)V

    .line 273
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/bo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bu;-><init>(Landroid/content/Context;)V

    return-void
.end method
