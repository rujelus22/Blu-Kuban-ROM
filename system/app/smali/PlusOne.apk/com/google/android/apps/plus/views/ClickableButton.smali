.class public Lcom/google/android/apps/plus/views/ClickableButton;
.super Ljava/lang/Object;
.source "ClickableButton.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ClickableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;
    }
.end annotation


# static fields
.field private static HORIZONTAL_SPACING:I

.field private static VERTICAL_SPACING:I

.field private static sInitialized:Z


# instance fields
.field private mClicked:Z

.field private mClickedBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mDefaultBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

.field private mRect:Landroid/graphics/Rect;

.field private mTextLayout:Landroid/text/StaticLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 23
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/apps/plus/views/ClickableButton;->sInitialized:Z

    .line 24
    sput v1, Lcom/google/android/apps/plus/views/ClickableButton;->HORIZONTAL_SPACING:I

    .line 25
    sput v1, Lcom/google/android/apps/plus/views/ClickableButton;->VERTICAL_SPACING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V
    .registers 21
    .parameter "context"
    .parameter "text"
    .parameter "textPaint"
    .parameter "defaultBackground"
    .parameter "clickedBackground"
    .parameter "listener"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mDefaultBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 63
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClickedBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 64
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

    .line 66
    sget-boolean v2, Lcom/google/android/apps/plus/views/ClickableButton;->sInitialized:Z

    if-nez v2, :cond_2e

    .line 67
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/android/apps/plus/views/ClickableButton;->sInitialized:Z

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 69
    .local v11, resources:Landroid/content/res/Resources;
    const v2, 0x7f0c0037

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/ClickableButton;->HORIZONTAL_SPACING:I

    .line 71
    const v2, 0x7f0c0038

    invoke-virtual {v11, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/ClickableButton;->VERTICAL_SPACING:I

    .line 75
    .end local v11           #resources:Landroid/content/res/Resources;
    :cond_2e
    invoke-virtual {p3, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/ClickableButton;->HORIZONTAL_SPACING:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v5, v2

    .line 76
    .local v5, width:I
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f80

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    .line 78
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v2}, Landroid/text/StaticLayout;->getHeight()I

    move-result v2

    sget v3, Lcom/google/android/apps/plus/views/ClickableButton;->VERTICAL_SPACING:I

    mul-int/lit8 v3, v3, 0x2

    add-int v10, v2, v3

    .line 79
    .local v10, height:I
    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p7, v5

    add-int v4, p8, v10

    move/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    .line 80
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .parameter "canvas"

    .prologue
    .line 88
    iget-boolean v3, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    if-eqz v3, :cond_30

    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClickedBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 89
    .local v0, background:Landroid/graphics/drawable/NinePatchDrawable;
    :goto_6
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/google/android/apps/plus/views/ClickableButton;->HORIZONTAL_SPACING:I

    add-int v1, v3, v4

    .line 93
    .local v1, deltaX:I
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/google/android/apps/plus/views/ClickableButton;->VERTICAL_SPACING:I

    add-int v2, v3, v4

    .line 94
    .local v2, deltaY:I
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 96
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    return-void

    .line 88
    .end local v0           #background:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v1           #deltaX:I
    .end local v2           #deltaY:I
    :cond_30
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mDefaultBackground:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_6
.end method

.method public getRect()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public handleEvent(III)Z
    .registers 7
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 111
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    .line 112
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    .line 142
    :goto_7
    return v0

    .line 116
    :cond_8
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_16

    .line 117
    if-ne p3, v0, :cond_14

    .line 118
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    :cond_14
    move v0, v1

    .line 120
    goto :goto_7

    .line 123
    :cond_16
    packed-switch p3, :pswitch_data_2e

    goto :goto_7

    .line 125
    :pswitch_1a
    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    goto :goto_7

    .line 130
    :pswitch_1d
    iget-boolean v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    if-eqz v2, :cond_2a

    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

    if-eqz v2, :cond_2a

    .line 131
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mListener:Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;->onClickableButtonListenerClick(Lcom/google/android/apps/plus/views/ClickableButton;)V

    .line 133
    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/apps/plus/views/ClickableButton;->mClicked:Z

    goto :goto_7

    .line 123
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method
