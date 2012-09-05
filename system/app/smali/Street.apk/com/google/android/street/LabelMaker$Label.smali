.class Lcom/google/android/street/LabelMaker$Label;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/street/LabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Label"
.end annotation


# instance fields
.field public final baseline:F

.field public final grid:Lcom/google/android/street/Grid;

.field public final height:F

.field public final mCrop:[I

.field public final width:F


# direct methods
.method public constructor <init>(Lcom/google/android/street/Grid;FFFIIII)V
    .registers 11
    .parameter "grid"
    .parameter "width"
    .parameter "height"
    .parameter "baseLine"
    .parameter "cropU"
    .parameter "cropV"
    .parameter "cropW"
    .parameter "cropH"

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    iput-object p1, p0, Lcom/google/android/street/LabelMaker$Label;->grid:Lcom/google/android/street/Grid;

    .line 471
    iput p2, p0, Lcom/google/android/street/LabelMaker$Label;->width:F

    .line 472
    iput p3, p0, Lcom/google/android/street/LabelMaker$Label;->height:F

    .line 473
    iput p4, p0, Lcom/google/android/street/LabelMaker$Label;->baseline:F

    .line 474
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 475
    .local v0, crop:[I
    const/4 v1, 0x0

    aput p5, v0, v1

    .line 476
    const/4 v1, 0x1

    aput p6, v0, v1

    .line 477
    const/4 v1, 0x2

    aput p7, v0, v1

    .line 478
    const/4 v1, 0x3

    aput p8, v0, v1

    .line 479
    iput-object v0, p0, Lcom/google/android/street/LabelMaker$Label;->mCrop:[I

    .line 480
    return-void
.end method
