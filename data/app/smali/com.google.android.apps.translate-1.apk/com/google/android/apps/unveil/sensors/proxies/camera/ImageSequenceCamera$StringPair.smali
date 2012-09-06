.class Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;
.super Landroid/util/Pair;
.source "ImageSequenceCamera.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StringPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 249
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 250
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;)I
    .registers 4
    .parameter "other"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 247
    check-cast p1, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;->compareTo(Lcom/google/android/apps/unveil/sensors/proxies/camera/ImageSequenceCamera$StringPair;)I

    move-result v0

    return v0
.end method
