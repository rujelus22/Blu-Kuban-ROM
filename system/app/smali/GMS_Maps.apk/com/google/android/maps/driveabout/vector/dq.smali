.class Lcom/google/android/maps/driveabout/vector/dq;
.super Lcom/google/android/maps/driveabout/vector/dg;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/maps/driveabout/vector/dr;)V
    .registers 3
    .parameter

    .prologue
    .line 890
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/dg;-><init>(Lcom/google/android/maps/driveabout/vector/dk;Lcom/google/android/maps/driveabout/vector/dh;)V

    .line 891
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/vector/dr;Lcom/google/android/maps/driveabout/vector/dh;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 866
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/dq;-><init>(Lcom/google/android/maps/driveabout/vector/dr;)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 3

    .prologue
    .line 883
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 884
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LayerTileType does not support disk caches."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lac/p;Landroid/content/Context;Ljava/util/Locale;Ljava/io/File;ZZ)Lr/aH;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 871
    new-instance v0, Lr/T;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/db;->a(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-direct {v0, p1, v1, p3, p4}, Lr/T;-><init>(Lac/p;ILjava/util/Locale;Ljava/io/File;)V

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 866
    check-cast p1, Lcom/google/android/maps/driveabout/vector/dg;

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/dg;->a(Lcom/google/android/maps/driveabout/vector/dg;)I

    move-result v0

    return v0
.end method

.method public l()Lr/aB;
    .registers 2

    .prologue
    .line 878
    const/4 v0, 0x0

    return-object v0
.end method
