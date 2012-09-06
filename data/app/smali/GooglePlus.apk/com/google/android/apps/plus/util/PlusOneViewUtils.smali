.class public Lcom/google/android/apps/plus/util/PlusOneViewUtils;
.super Ljava/lang/Object;
.source "PlusOneViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;
    }
.end annotation


# static fields
.field private static PLUS_ONE_BUTTON_SELECTION_PADDING:I

.field private static PLUS_ONE_ICON_Y_OFFSET:I

.field private static sInitialized:Z

.field private static sPlusOneByMeIcon:Landroid/graphics/Bitmap;

.field private static sPlusOneByMePressedIcon:Landroid/graphics/Bitmap;

.field private static sPlusOneCountDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sPlusOneCountPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sPlusOneIcon:Landroid/graphics/Bitmap;

.field private static sPlusOnePaint:Landroid/text/TextPaint;

.field private static sPlusOnePressedIcon:Landroid/graphics/Bitmap;


# direct methods
.method private static initialize(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const v4, 0x7f0d0040

    const/4 v3, 0x1

    .line 37
    sget-boolean v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sInitialized:Z

    if-nez v1, :cond_82

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 40
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020041

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneIcon:Landroid/graphics/Bitmap;

    .line 41
    const v1, 0x7f020042

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOnePressedIcon:Landroid/graphics/Bitmap;

    .line 42
    const v1, 0x7f020043

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneByMeIcon:Landroid/graphics/Bitmap;

    .line 43
    const v1, 0x7f020044

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneByMePressedIcon:Landroid/graphics/Bitmap;

    .line 45
    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneCountDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 46
    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneCountPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 49
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOnePaint:Landroid/text/TextPaint;

    .line 50
    sget-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 51
    sget-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOnePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a001d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 52
    sget-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 54
    sget-object v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOnePaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 57
    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->PLUS_ONE_ICON_Y_OFFSET:I

    .line 59
    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->PLUS_ONE_BUTTON_SELECTION_PADDING:I

    .line 62
    sput-boolean v3, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sInitialized:Z

    .line 64
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_82
    return-void
.end method

.method public static setupButtons(Landroid/content/Context;Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;IIIZ)Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;
    .registers 27
    .parameter "context"
    .parameter "clickableImageButtonListener"
    .parameter "clickableButtonListener"
    .parameter "plusOneData"
    .parameter "xStart"
    .parameter "contentWidth"
    .parameter "yStart"
    .parameter "offsetUpByHeight"

    .prologue
    .line 71
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->initialize(Landroid/content/Context;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 74
    .local v17, res:Landroid/content/res/Resources;
    if-eqz p3, :cond_b4

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v13

    .line 75
    .local v13, plusOneCount:I
    :goto_d
    if-eqz p3, :cond_b7

    invoke-virtual/range {p3 .. p3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v3

    if-eqz v3, :cond_b7

    const/4 v12, 0x1

    .line 77
    .local v12, plusOneByMe:Z
    :goto_16
    if-eqz v12, :cond_ba

    sget-object v14, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneByMeIcon:Landroid/graphics/Bitmap;

    .line 78
    .local v14, plusOneIcon:Landroid/graphics/Bitmap;
    :goto_1a
    if-eqz v12, :cond_be

    sget-object v15, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneByMePressedIcon:Landroid/graphics/Bitmap;

    .line 81
    .local v15, plusOnePressedIcon:Landroid/graphics/Bitmap;
    :goto_1e
    new-instance v11, Lcom/google/android/apps/plus/views/ClickableImageButton;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v11, v0, v14, v15, v1}, Lcom/google/android/apps/plus/views/ClickableImageButton;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lcom/google/android/apps/plus/views/ClickableImageButton$ClickableImageButtonListener;)V

    .line 83
    .local v11, plusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;
    add-int v3, p4, p5

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    sget v5, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->PLUS_ONE_ICON_Y_OFFSET:I

    add-int v5, v5, p6

    invoke-virtual {v11, v3, v5}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setPosition(II)V

    .line 85
    sget v3, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->PLUS_ONE_BUTTON_SELECTION_PADDING:I

    invoke-virtual {v11, v3}, Lcom/google/android/apps/plus/views/ClickableImageButton;->setSelectionPadding(I)V

    .line 87
    const v3, 0x7f080421

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, plusOneText:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/views/ClickableButton;

    sget-object v5, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOnePaint:Landroid/text/TextPaint;

    sget-object v6, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneCountDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v7, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneCountPressedDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p2

    move/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/google/android/apps/plus/views/ClickableButton;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/drawable/NinePatchDrawable;Landroid/graphics/drawable/NinePatchDrawable;Lcom/google/android/apps/plus/views/ClickableButton$ClickableButtonListener;II)V

    .line 91
    .local v2, plusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v11}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sget v6, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->PLUS_ONE_BUTTON_SELECTION_PADDING:I

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    move/from16 v0, p6

    invoke-virtual {v3, v5, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 95
    if-eqz p7, :cond_a6

    .line 96
    invoke-virtual {v11}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 98
    .local v18, yOffset:I
    invoke-virtual {v11}, Lcom/google/android/apps/plus/views/ClickableImageButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v0, v18

    neg-int v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 99
    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableButton;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v5, 0x0

    move/from16 v0, v18

    neg-int v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 102
    .end local v18           #yOffset:I
    :cond_a6
    new-instance v16, Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;-><init>()V

    .line 103
    .local v16, plusOneViews:Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;
    move-object/from16 v0, v16

    iput-object v11, v0, Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;->mPlusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;

    .line 104
    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;->mPlusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;

    .line 105
    return-object v16

    .line 74
    .end local v2           #plusOneCountButton:Lcom/google/android/apps/plus/views/ClickableButton;
    .end local v4           #plusOneText:Ljava/lang/String;
    .end local v11           #plusOneButton:Lcom/google/android/apps/plus/views/ClickableImageButton;
    .end local v12           #plusOneByMe:Z
    .end local v13           #plusOneCount:I
    .end local v14           #plusOneIcon:Landroid/graphics/Bitmap;
    .end local v15           #plusOnePressedIcon:Landroid/graphics/Bitmap;
    .end local v16           #plusOneViews:Lcom/google/android/apps/plus/util/PlusOneViewUtils$PlusOneViews;
    :cond_b4
    const/4 v13, 0x0

    goto/16 :goto_d

    .line 75
    .restart local v13       #plusOneCount:I
    :cond_b7
    const/4 v12, 0x0

    goto/16 :goto_16

    .line 77
    .restart local v12       #plusOneByMe:Z
    :cond_ba
    sget-object v14, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOneIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_1a

    .line 78
    .restart local v14       #plusOneIcon:Landroid/graphics/Bitmap;
    :cond_be
    sget-object v15, Lcom/google/android/apps/plus/util/PlusOneViewUtils;->sPlusOnePressedIcon:Landroid/graphics/Bitmap;

    goto/16 :goto_1e
.end method
