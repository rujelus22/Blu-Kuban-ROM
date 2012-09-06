.class public Lcom/google/android/apps/plus/views/PositionedStaticLayout;
.super Landroid/text/StaticLayout;
.source "PositionedStaticLayout.java"


# instance fields
.field protected mContentArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 9
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->mContentArea:Landroid/graphics/Rect;

    .line 21
    return-void
.end method


# virtual methods
.method public getBottom()I
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->mContentArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getLeft()I
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->mContentArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getRight()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->mContentArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getTop()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->mContentArea:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public setPosition(II)V
    .registers 6
    .parameter "left"
    .parameter "top"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->mContentArea:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PositionedStaticLayout;->getHeight()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    return-void
.end method
