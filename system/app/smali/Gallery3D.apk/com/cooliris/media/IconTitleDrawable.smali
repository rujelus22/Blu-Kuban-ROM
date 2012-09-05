.class public final Lcom/cooliris/media/IconTitleDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "IconTitleDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/IconTitleDrawable$Config;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/cooliris/media/IconTitleDrawable$Config;

.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mTitle:Ljava/lang/String;

.field private mTitleLayout:Landroid/text/StaticLayout;

.field private final mTitleWidth:I

.field private mTitleY:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/cooliris/media/IconTitleDrawable$Config;)V
    .registers 6
    .parameter "title"
    .parameter "icon"
    .parameter "config"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cooliris/media/IconTitleDrawable;->mTitleLayout:Landroid/text/StaticLayout;

    .line 43
    iput-object p1, p0, Lcom/cooliris/media/IconTitleDrawable;->mTitle:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/cooliris/media/IconTitleDrawable;->mTitle:Ljava/lang/String;

    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mPaint:Landroid/text/TextPaint;
    invoke-static {p3}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$000(Lcom/cooliris/media/IconTitleDrawable$Config;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/cooliris/media/IconTitleDrawable;->mTitleWidth:I

    .line 45
    iput-object p2, p0, Lcom/cooliris/media/IconTitleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object p3, p0, Lcom/cooliris/media/IconTitleDrawable;->mConfig:Lcom/cooliris/media/IconTitleDrawable$Config;

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .parameter "canvas"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/cooliris/media/IconTitleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 68
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_7

    .line 69
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    :cond_7
    invoke-virtual {p0}, Lcom/cooliris/media/IconTitleDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 72
    .local v0, bounds:Landroid/graphics/Rect;
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/cooliris/media/IconTitleDrawable;->mConfig:Lcom/cooliris/media/IconTitleDrawable$Config;

    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mTitleLeft:I
    invoke-static {v5}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$100(Lcom/cooliris/media/IconTitleDrawable$Config;)I

    move-result v5

    add-int v2, v4, v5

    .line 73
    .local v2, x:I
    iget v3, p0, Lcom/cooliris/media/IconTitleDrawable;->mTitleY:I

    .line 74
    .local v3, y:I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget-object v4, p0, Lcom/cooliris/media/IconTitleDrawable;->mTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 76
    neg-int v4, v2

    int-to-float v4, v4

    neg-int v5, v3

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    return-void
.end method

.method public getIntrinsicHeight()I
    .registers 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/cooliris/media/IconTitleDrawable;->mConfig:Lcom/cooliris/media/IconTitleDrawable$Config;

    .line 58
    .local v0, config:Lcom/cooliris/media/IconTitleDrawable$Config;
    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mIconSize:I
    invoke-static {v0}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$200(Lcom/cooliris/media/IconTitleDrawable$Config;)I

    move-result v1

    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mPaint:Landroid/text/TextPaint;
    invoke-static {v0}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$000(Lcom/cooliris/media/IconTitleDrawable$Config;)Landroid/text/TextPaint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method public getIntrinsicWidth()I
    .registers 4

    .prologue
    .line 51
    iget-object v0, p0, Lcom/cooliris/media/IconTitleDrawable;->mConfig:Lcom/cooliris/media/IconTitleDrawable$Config;

    .line 52
    .local v0, config:Lcom/cooliris/media/IconTitleDrawable$Config;
    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mTitleLeft:I
    invoke-static {v0}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$100(Lcom/cooliris/media/IconTitleDrawable$Config;)I

    move-result v1

    iget v2, p0, Lcom/cooliris/media/IconTitleDrawable;->mTitleWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xf

    return v1
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, -0x3

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 26
    .parameter "bounds"

    .prologue
    .line 95
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    .line 96
    .local v21, left:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 97
    .local v23, top:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    .line 98
    .local v22, right:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v16, v3, v23

    .line 99
    .local v16, height:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/cooliris/media/IconTitleDrawable;->mConfig:Lcom/cooliris/media/IconTitleDrawable$Config;

    .line 100
    .local v15, config:Lcom/cooliris/media/IconTitleDrawable$Config;
    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mIconLeft:I
    invoke-static {v15}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$300(Lcom/cooliris/media/IconTitleDrawable$Config;)I

    move-result v3

    add-int v18, v21, v3

    .line 101
    .local v18, iconLeft:I
    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mIconSize:I
    invoke-static {v15}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$200(Lcom/cooliris/media/IconTitleDrawable$Config;)I

    move-result v19

    .line 102
    .local v19, iconSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/IconTitleDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 103
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_41

    .line 104
    sub-int v3, v16, v19

    div-int/lit8 v3, v3, 0x2

    add-int v20, v23, v3

    .line 105
    .local v20, iconY:I
    add-int v3, v18, v19

    add-int v5, v23, v19

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    .end local v20           #iconY:I
    :cond_41
    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mTitleLeft:I
    invoke-static {v15}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$100(Lcom/cooliris/media/IconTitleDrawable$Config;)I

    move-result v3

    sub-int v3, v22, v3

    sub-int v8, v3, v21

    .line 110
    .local v8, outerWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/IconTitleDrawable;->mTitle:Ljava/lang/String;

    .line 111
    .local v4, title:Ljava/lang/String;
    new-instance v3, Landroid/text/StaticLayout;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    #getter for: Lcom/cooliris/media/IconTitleDrawable$Config;->mPaint:Landroid/text/TextPaint;
    invoke-static {v15}, Lcom/cooliris/media/IconTitleDrawable$Config;->access$000(Lcom/cooliris/media/IconTitleDrawable$Config;)Landroid/text/TextPaint;

    move-result-object v7

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v10, 0x3f4ccccd

    const/4 v11, 0x0

    const/4 v12, 0x1

    sget-object v13, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move v14, v8

    invoke-direct/range {v3 .. v14}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/cooliris/media/IconTitleDrawable;->mTitleLayout:Landroid/text/StaticLayout;

    .line 113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/cooliris/media/IconTitleDrawable;->mTitleLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    sub-int v3, v16, v3

    div-int/lit8 v3, v3, 0x2

    add-int v3, v3, v23

    add-int/lit8 v3, v3, -0x5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/cooliris/media/IconTitleDrawable;->mTitleY:I

    .line 114
    return-void
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 86
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter "cf"

    .prologue
    .line 90
    return-void
.end method
