.class public Lcom/sec/android/app/ve/activity/PenDrawActivity;
.super Landroid/app/Activity;
.source "PenDrawActivity.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$android$app$ve$view$paint$PaintSelectorPopup$PaintObjectType:[I = null

.field public static final BITMAP_HEIGHT:I = 0x1e0

.field public static final BITMAP_WIDTH:I = 0x320

.field private static final DEFAULT_DRAWING_DUR:I = 0x3

.field private static final MSG_SAVE_DRAWING:I = 0x5

.field private static final ULINE_THICKNESS:I = 0x6

.field private static final ULINE_WIDTH:I = 0x1e

.field private static final UPDATE_CURRENT_FRAME:I = 0x2

.field private static _instance:Lcom/sec/android/app/ve/activity/PenDrawActivity;


# instance fields
.field private bPenActive:Z

.field public canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

.field private drawPenButton:Landroid/widget/RadioButton;

.field private eraserButton:Landroid/widget/RadioButton;

.field private mAddMediaTitleBar:Landroid/widget/LinearLayout;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

.field private mEditTitlebar:Landroid/widget/LinearLayout;

.field public mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

.field private mEraserPopupDismissed:Landroid/widget/PopupWindow$OnDismissListener;

.field mHandler:Landroid/os/Handler;

.field public mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

.field private mPaintPopupDismissed:Landroid/widget/PopupWindow$OnDismissListener;

.field private mPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mRedoButton:Landroid/widget/Button;

.field private mThemeTitlebar:Landroid/widget/LinearLayout;

.field private mUnderLineView:Landroid/widget/ImageView;

.field private mUndoButton:Landroid/widget/Button;

.field private nDialogId:I

.field private pendrawActivityParent:Landroid/view/View;


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$android$app$ve$view$paint$PaintSelectorPopup$PaintObjectType()[I
    .registers 3

    .prologue
    .line 48
    sget-object v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->$SWITCH_TABLE$com$sec$android$app$ve$view$paint$PaintSelectorPopup$PaintObjectType:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->values()[Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->FOUNTAIN_PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PAINT_BRUSH:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PENCIL:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->$SWITCH_TABLE$com$sec$android$app$ve$view$paint$PaintSelectorPopup$PaintObjectType:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEditTitlebar:Landroid/widget/LinearLayout;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z

    .line 236
    new-instance v0, Lcom/sec/android/app/ve/activity/PenDrawActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity$1;-><init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopupDismissed:Landroid/widget/PopupWindow$OnDismissListener;

    .line 247
    new-instance v0, Lcom/sec/android/app/ve/activity/PenDrawActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity$2;-><init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopupDismissed:Landroid/widget/PopupWindow$OnDismissListener;

    .line 313
    new-instance v0, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity$3;-><init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 486
    new-instance v0, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity$4;-><init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    .line 48
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/activity/PenDrawActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->setupPaint(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Z
    .registers 2
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z

    return v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/activity/PenDrawActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->bPenActive:Z

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/activity/PenDrawActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->drawUnderLine(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/activity/PenDrawActivity;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/activity/PenDrawActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 411
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->showSaveDialog(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/activity/PenDrawActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 71
    iput p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->nDialogId:I

    return-void
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->closeActivity()V

    return-void
.end method

.method private closeActivity()V
    .registers 5

    .prologue
    .line 383
    iget v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->nDialogId:I

    packed-switch v0, :pswitch_data_56

    .line 406
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->finish()V

    .line 409
    :cond_8
    :goto_8
    return-void

    .line 386
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->finish()V

    .line 387
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 388
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchThemes()V

    goto :goto_8

    .line 391
    :pswitch_1a
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->finish()V

    .line 392
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 393
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchAddMedia()V

    goto :goto_8

    .line 396
    :pswitch_2b
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 398
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 399
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    .line 400
    invoke-virtual {v0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 401
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 402
    invoke-static {}, Lcom/sec/android/app/ve/view/OperationViewGroup;->getInstance()Lcom/sec/android/app/ve/view/OperationViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/OperationViewGroup;->launchTrimSection()V

    goto :goto_8

    .line 383
    nop

    :pswitch_data_56
    .packed-switch 0x7f0b0025
        :pswitch_9
        :pswitch_1a
        :pswitch_2b
    .end packed-switch
.end method

.method private drawUnderLine(I)V
    .registers 5
    .parameter "color"

    .prologue
    .line 704
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 705
    .local v0, rect:Landroid/graphics/drawable/ShapeDrawable;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 706
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 707
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 708
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mUnderLineView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 709
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mUnderLineView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2d

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mUnderLineView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 711
    :cond_2d
    const/4 v0, 0x0

    .line 712
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;
    .registers 1

    .prologue
    .line 217
    sget-object v0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->_instance:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    return-object v0
.end method

.method private setTitleBarClicks()V
    .registers 3

    .prologue
    .line 221
    const v0, 0x7f0b0025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mThemeTitlebar:Landroid/widget/LinearLayout;

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mThemeTitlebar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_16

    .line 223
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mThemeTitlebar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_16
    const v0, 0x7f0b0026

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mAddMediaTitleBar:Landroid/widget/LinearLayout;

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mAddMediaTitleBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2c

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mAddMediaTitleBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    :cond_2c
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEditTitlebar:Landroid/widget/LinearLayout;

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEditTitlebar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_42

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEditTitlebar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_42
    return-void
.end method

.method private setupPaint(Z)V
    .registers 7
    .parameter "bSetupEraser"

    .prologue
    const v4, 0xffffff

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    if-nez v2, :cond_c

    .line 311
    :cond_b
    :goto_b
    return-void

    .line 265
    :cond_c
    const/4 v1, 0x0

    .line 266
    .local v1, paintColor:I
    const/16 v0, 0xff

    .line 268
    .local v0, paintAlpha:I
    if-nez p1, :cond_93

    .line 269
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenType()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    .line 270
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->$SWITCH_TABLE$com$sec$android$app$ve$view$paint$PaintSelectorPopup$PaintObjectType()[I

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_ac

    .line 288
    :goto_28
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 289
    sget-object v3, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Pressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeParameter(Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;)V

    .line 291
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenColor()I

    move-result v1

    .line 292
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenAlpha()I

    move-result v0

    .line 293
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    sget-object v3, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    if-ne v2, v3, :cond_86

    .line 294
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    and-int v3, v1, v4

    shl-int/lit8 v4, v0, 0x18

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeColor(I)V

    .line 300
    :goto_4f
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 301
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenThickness()I

    move-result v3

    int-to-float v3, v3

    .line 300
    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeWidth(F)V

    goto :goto_b

    .line 272
    :pswitch_5e
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 273
    sget-object v3, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Solid:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeType(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V

    goto :goto_28

    .line 276
    :pswitch_68
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 277
    sget-object v3, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeType(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V

    goto :goto_28

    .line 280
    :pswitch_72
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 281
    sget-object v3, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Pencil:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeType(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V

    goto :goto_28

    .line 284
    :pswitch_7c
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 285
    sget-object v3, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeType(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V

    goto :goto_28

    .line 297
    :cond_86
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    and-int v3, v1, v4

    const/high16 v4, -0x100

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeColor(I)V

    goto :goto_4f

    .line 305
    :cond_93
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    iget-object v3, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    .line 306
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->getEraserThickness()I

    move-result v3

    int-to-float v3, v3

    .line 305
    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeWidth(F)V

    .line 307
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    .line 308
    sget-object v3, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    invoke-virtual {v2, v3}, Lcom/sec/android/framework/draw/Setting;->setStrokeType(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V

    goto/16 :goto_b

    .line 270
    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_7c
        :pswitch_68
        :pswitch_72
    .end packed-switch
.end method

.method private showSaveDialog(I)V
    .registers 7
    .parameter "nDialog"

    .prologue
    .line 413
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 414
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 415
    .local v1, res:Landroid/content/res/Resources;
    iput p1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->nDialogId:I

    .line 416
    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 418
    const/4 v2, -0x1

    const v3, 0x7f08000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/ve/activity/PenDrawActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity$6;-><init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 428
    const/4 v2, -0x2

    const v3, 0x7f08000c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/ve/activity/PenDrawActivity$7;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity$7;-><init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 439
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 440
    return-void
.end method


# virtual methods
.method public getARGBBufferfromBitmap()[B
    .registers 7

    .prologue
    .line 651
    const/4 v1, 0x0

    check-cast v1, [B

    .line 653
    .local v1, tempArray:[B
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    iget-boolean v3, v3, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEmpty:Z

    if-nez v3, :cond_3a

    .line 655
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    const/16 v4, 0x320

    const/16 v5, 0x1e0

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/ve/view/paint/CanvasView;->expandRealSize(II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    .line 656
    const/4 v0, 0x0

    .line 657
    .local v0, bitmap565:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq v3, v4, :cond_3b

    .line 658
    iget-object v3, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 664
    :goto_29
    const v3, 0x177000

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 665
    .local v2, tempBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 666
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 667
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 669
    .end local v0           #bitmap565:Landroid/graphics/Bitmap;
    .end local v2           #tempBuffer:Ljava/nio/ByteBuffer;
    :cond_3a
    return-object v1

    .line 661
    .restart local v0       #bitmap565:Landroid/graphics/Bitmap;
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    goto :goto_29
.end method

.method init()V
    .registers 4

    .prologue
    .line 173
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/paint/CanvasView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    .line 174
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;

    .line 175
    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mUndoButton:Landroid/widget/Button;

    .line 176
    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mRedoButton:Landroid/widget/Button;

    .line 177
    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mUnderLineView:Landroid/widget/ImageView;

    .line 179
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->drawPenButton:Landroid/widget/RadioButton;

    .line 180
    const v0, 0x7f0b002b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->eraserButton:Landroid/widget/RadioButton;

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->drawPenButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->eraserButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mUndoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mRedoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 188
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    sput-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    .line 191
    :cond_77
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getInstance()Lcom/sec/android/app/ve/view/paint/DrawingHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/DrawingHolder;->getDrawingClipartparams()Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-eqz v0, :cond_db

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v2, v2, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "save.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/CanvasView;->setSaveFilePath(Ljava/lang/String;)V

    .line 199
    :goto_a1
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->setTitleBarClicks()V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    if-nez v0, :cond_af

    .line 202
    new-instance v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 203
    :cond_af
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    if-eqz v0, :cond_ba

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopupDismissed:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 206
    :cond_ba
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    if-nez v0, :cond_c5

    .line 207
    new-instance v0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    .line 208
    :cond_c5
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    if-eqz v0, :cond_d0

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopupDismissed:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 211
    :cond_d0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->setupPaint(Z)V

    .line 212
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->updateUndoRedoButtons()V

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->updatePenIcon()V

    .line 214
    return-void

    .line 197
    :cond_db
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/CanvasView;->setSaveFilePath(Ljava/lang/String;)V

    goto :goto_a1
.end method

.method public isEraser()Z
    .registers 3

    .prologue
    .line 445
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getStrokeType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Eraser:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    iget-boolean v0, v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEdited:Z

    if-eqz v0, :cond_b

    .line 530
    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->showSaveDialog(I)V

    .line 536
    :goto_a
    return-void

    .line 533
    :cond_b
    iput v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->nDialogId:I

    .line 534
    invoke-direct {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->closeActivity()V

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    sput-object p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->_instance:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->setCurrentframe()V

    .line 87
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->init()V

    .line 89
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 474
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 476
    :try_start_3
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->pendrawActivityParent:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_25

    .line 480
    :goto_12
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->terminate()V

    .line 481
    iget-object v1, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mEraserPopup:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->terminate()V

    .line 482
    const/4 v1, 0x0

    sput-object v1, Lcom/sec/android/app/ve/activity/PenDrawActivity;->_instance:Lcom/sec/android/app/ve/activity/PenDrawActivity;

    .line 483
    const-string v1, "DrawActivity onDestroy"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 484
    return-void

    .line 477
    :catch_25
    move-exception v0

    .line 478
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 462
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_terminate()V

    .line 463
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 455
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 456
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 457
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 450
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    return-object v0
.end method

.method protected onStop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 469
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 470
    return-void
.end method

.method public saveDrawingData(Z)V
    .registers 17
    .parameter "aRefresh"

    .prologue
    .line 540
    const v11, 0x7f080002

    invoke-virtual {p0, v11}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, p0}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 542
    invoke-virtual {p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getARGBBufferfromBitmap()[B

    move-result-object v0

    .line 544
    .local v0, ArgbBuff:[B
    if-eqz v0, :cond_fc

    .line 546
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-nez v11, :cond_3c

    .line 548
    const/4 v8, 0x0

    .local v8, mDrawingTime:F
    const/4 v10, 0x0

    .local v10, totaltime:F
    const/4 v1, 0x0

    .line 549
    .local v1, currettime:F
    invoke-static {}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->get_instance()Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;

    move-result-object v11

    .line 550
    invoke-virtual {v11}, Lcom/sec/android/app/ve/ui/VideoClipProgressBarView;->getmTotalDuration()D

    move-result-wide v11

    double-to-float v10, v11

    .line 551
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v11

    .line 552
    invoke-virtual {v11}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTimeInSec()F

    move-result v1

    .line 553
    sub-float v11, v10, v1

    const/high16 v12, 0x4040

    cmpl-float v11, v11, v12

    if-ltz v11, :cond_ee

    const/high16 v8, 0x4040

    .line 555
    :goto_32
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->addDrawing(F)Lcom/samsung/app/video/editor/external/ClipartParams;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 559
    .end local v1           #currettime:F
    .end local v8           #mDrawingTime:F
    .end local v10           #totaltime:F
    :cond_3c
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    iget-boolean v11, v11, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEdited:Z

    if-eqz v11, :cond_4c

    .line 561
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 562
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v11}, Lcom/samsung/app/video/editor/external/ClipartParams;->createFile()V

    .line 564
    :cond_4c
    const-string v11, "Starting to save Drawing data"

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 567
    new-instance v3, Ljava/io/File;

    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v11, v11, Lcom/samsung/app/video/editor/external/ClipartParams;->Filepath:Ljava/lang/String;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 568
    .local v3, fdata:Ljava/io/File;
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "save.png"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/android/app/ve/view/paint/CanvasView;->saveDrawing(Ljava/lang/String;)V

    .line 570
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    const/16 v12, 0x500

    iput v12, v11, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_height:I

    .line 571
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    const/16 v12, 0x500

    iput v12, v11, Lcom/samsung/app/video/editor/external/ClipartParams;->clipart_width:I

    .line 576
    const/4 v4, 0x0

    .line 577
    .local v4, fosdata:Ljava/io/FileOutputStream;
    :try_start_83
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_88} :catch_f2

    .line 578
    .end local v4           #fosdata:Ljava/io/FileOutputStream;
    .local v5, fosdata:Ljava/io/FileOutputStream;
    :try_start_88
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 579
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 580
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_91} :catch_116

    .line 592
    .end local v5           #fosdata:Ljava/io/FileOutputStream;
    :goto_91
    :try_start_91
    new-instance v6, Ljava/io/FileOutputStream;

    .line 593
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 592
    invoke-direct {v6, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 594
    .local v6, fosdata1:Ljava/io/FileOutputStream;
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->canvasView:Lcom/sec/android/app/ve/view/paint/CanvasView;

    if-eqz v11, :cond_d1

    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_d1

    .line 598
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    const/16 v12, 0x258

    const/16 v13, 0x154

    const/4 v14, 0x0

    .line 597
    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 600
    .local v7, lBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_d1

    .line 602
    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x64

    invoke-virtual {v7, v11, v12, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 604
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 605
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 609
    .end local v7           #lBitmap:Landroid/graphics/Bitmap;
    :cond_d1
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 610
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_d7} :catch_f7

    .line 619
    .end local v6           #fosdata1:Ljava/io/FileOutputStream;
    :goto_d7
    if-eqz p1, :cond_e5

    .line 621
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 624
    :cond_e5
    const-string v11, "Drawing data saved."

    invoke-static {v11}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 643
    .end local v3           #fdata:Ljava/io/File;
    :cond_ea
    :goto_ea
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 644
    return-void

    .line 554
    .restart local v1       #currettime:F
    .restart local v8       #mDrawingTime:F
    .restart local v10       #totaltime:F
    :cond_ee
    sub-float v8, v10, v1

    goto/16 :goto_32

    .line 583
    .end local v1           #currettime:F
    .end local v8           #mDrawingTime:F
    .end local v10           #totaltime:F
    .restart local v3       #fdata:Ljava/io/File;
    .restart local v4       #fosdata:Ljava/io/FileOutputStream;
    :catch_f2
    move-exception v2

    .line 585
    .local v2, ex:Ljava/lang/Exception;
    :goto_f3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_91

    .line 614
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #fosdata:Ljava/io/FileOutputStream;
    :catch_f7
    move-exception v2

    .line 616
    .restart local v2       #ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d7

    .line 633
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #fdata:Ljava/io/File;
    :cond_fc
    iget-object v11, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-eqz v11, :cond_ea

    .line 635
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v9

    .line 634
    check-cast v9, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 636
    .local v9, mVideoClipViewGroup:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    if-eqz v9, :cond_ea

    .line 637
    invoke-virtual {v9}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v11

    .line 638
    iget-object v12, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 637
    invoke-virtual {v11, v12}, Lcom/samsung/app/video/editor/external/Element;->removeTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    goto :goto_ea

    .line 583
    .end local v9           #mVideoClipViewGroup:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .restart local v3       #fdata:Ljava/io/File;
    .restart local v5       #fosdata:Ljava/io/FileOutputStream;
    :catch_116
    move-exception v2

    move-object v4, v5

    .end local v5           #fosdata:Ljava/io/FileOutputStream;
    .restart local v4       #fosdata:Ljava/io/FileOutputStream;
    goto :goto_f3
.end method

.method setCurrentframe()V
    .registers 3

    .prologue
    .line 92
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->_native_initfimc()V

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/ve/activity/PenDrawActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/activity/PenDrawActivity$5;-><init>(Lcom/sec/android/app/ve/activity/PenDrawActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 167
    .local v0, lThread:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    return-void
.end method

.method public updatePenIcon()V
    .registers 5

    .prologue
    .line 680
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getPenType()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    move-result-object v0

    .line 681
    .local v0, penType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    const v1, 0x7f020167

    .line 682
    .local v1, resId:I
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->$SWITCH_TABLE$com$sec$android$app$ve$view$paint$PaintSelectorPopup$PaintObjectType()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_36

    .line 698
    :goto_16
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->drawPenButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 699
    iget-object v2, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mPaintPopup:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getColorSelected()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->drawUnderLine(I)V

    .line 700
    return-void

    .line 685
    :pswitch_25
    const v1, 0x7f020167

    .line 686
    goto :goto_16

    .line 688
    :pswitch_29
    const v1, 0x7f020163

    .line 689
    goto :goto_16

    .line 691
    :pswitch_2d
    const v1, 0x7f020170

    .line 692
    goto :goto_16

    .line 694
    :pswitch_31
    const v1, 0x7f020057

    .line 695
    goto :goto_16

    .line 682
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_25
        :pswitch_31
        :pswitch_29
        :pswitch_2d
    .end packed-switch
.end method

.method public updateUndoRedoButtons()V
    .registers 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mUndoButton:Landroid/widget/Button;

    sget-object v1, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->isUndoable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/sec/android/app/ve/activity/PenDrawActivity;->mRedoButton:Landroid/widget/Button;

    sget-object v1, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->isRedoable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 676
    return-void
.end method
