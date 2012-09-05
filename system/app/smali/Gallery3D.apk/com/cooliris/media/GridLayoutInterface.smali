.class public final Lcom/cooliris/media/GridLayoutInterface;
.super Lcom/cooliris/media/LayoutInterface;
.source "GridLayoutInterface.java"


# instance fields
.field public mNumRows:I

.field public mSpacingX:I

.field public mSpacingY:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "numRows"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/cooliris/media/LayoutInterface;-><init>()V

    .line 23
    iput p1, p0, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 24
    const/high16 v0, 0x41a0

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    .line 25
    const/high16 v0, 0x4220

    sget v1, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    .line 26
    return-void
.end method


# virtual methods
.method public getPositionForSlotIndex(IIILcom/cooliris/media/Vector3f;)V
    .registers 10
    .parameter "slotIndex"
    .parameter "itemWidth"
    .parameter "itemHeight"
    .parameter "outPosition"

    .prologue
    .line 44
    iget v1, p0, Lcom/cooliris/media/GridLayoutInterface;->mNumRows:I

    .line 45
    .local v1, numRows:I
    move v2, p1

    .line 46
    .local v2, resultSlotIndex:I
    div-int v3, v2, v1

    iget v4, p0, Lcom/cooliris/media/GridLayoutInterface;->mSpacingX:I

    add-int/2addr v4, p2

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p4, Lcom/cooliris/media/Vector3f;->x:F

    .line 47
    rem-int v3, v2, v1

    iget v4, p0, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    add-int/2addr v4, p3

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p4, Lcom/cooliris/media/Vector3f;->y:F

    .line 48
    add-int/lit8 v3, v1, -0x1

    iget v4, p0, Lcom/cooliris/media/GridLayoutInterface;->mSpacingY:I

    add-int/2addr v4, p3

    mul-int v0, v3, v4

    .line 49
    .local v0, maxY:I
    iget v3, p4, Lcom/cooliris/media/Vector3f;->y:F

    shr-int/lit8 v4, v0, 0x1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, p4, Lcom/cooliris/media/Vector3f;->y:F

    .line 50
    const/4 v3, 0x0

    iput v3, p4, Lcom/cooliris/media/Vector3f;->z:F

    .line 51
    return-void
.end method
