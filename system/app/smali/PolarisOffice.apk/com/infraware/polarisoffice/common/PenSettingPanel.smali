.class public Lcom/infraware/polarisoffice/common/PenSettingPanel;
.super Landroid/widget/PopupWindow;
.source "PenSettingPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;
    }
.end annotation


# static fields
.field protected static final PENCOLOR_KEY:Ljava/lang/String; = "PENCOLOR_KEY"

.field protected static final PENSIZE_KEY:Ljava/lang/String; = "PENSIZE_KEY"

.field protected static final PEN_PROP:Ljava/lang/String; = "PEN_PROP"

.field protected static final PROGRESS_MIN_VALUE:I = 0x2


# instance fields
.field private mArrowDown:Landroid/widget/ImageView;

.field protected mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

.field private m_nCenterPosX:I

.field private m_nCircleBitmapHeight:I

.field private m_nCircleBitmapWidth:I

.field private m_nCircleCenterX:I

.field private m_nCircleCenterY:I

.field private m_nCurColor:I

.field private m_nPenSize:I

.field private m_oCanvas:Landroid/graphics/Canvas;

.field private m_oCloseBtn:Landroid/widget/ImageButton;

.field private m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;

.field private m_oGrdientColorPicker:Lcom/infraware/polarisoffice/common/GrdientColorPicker;

.field private m_oPaint:Landroid/graphics/Paint;

.field private m_oPenSizeBar:Landroid/widget/SeekBar;

.field private m_oPenSizeCircle:Landroid/widget/ImageView;

.field private m_oPopupView:Landroid/widget/FrameLayout;

.field private m_oPreview:Landroid/widget/ImageView;

.field private m_oPreviewPath:Landroid/graphics/Path;

.field private m_oProgressBarDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    .line 32
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCloseBtn:Landroid/widget/ImageButton;

    .line 33
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreview:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeBar:Landroid/widget/SeekBar;

    .line 35
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 36
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeCircle:Landroid/widget/ImageView;

    .line 37
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;

    .line 38
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oGrdientColorPicker:Lcom/infraware/polarisoffice/common/GrdientColorPicker;

    .line 39
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mArrowDown:Landroid/widget/ImageView;

    .line 42
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreviewPath:Landroid/graphics/Path;

    .line 43
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    .line 44
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCanvas:Landroid/graphics/Canvas;

    .line 49
    const/16 v0, 0xa

    iput v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    .line 50
    const/high16 v0, -0x1

    iput v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCenterPosX:I

    .line 60
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    .line 74
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initPenSettingPanel(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;

    invoke-direct {v0, p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel$1;-><init>(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    invoke-virtual {p0, v0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/infraware/polarisoffice/common/PenSettingPanel;)I
    .registers 2
    .parameter

    .prologue
    .line 49
    iget v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    return v0
.end method

.method static synthetic access$1(Lcom/infraware/polarisoffice/common/PenSettingPanel;)I
    .registers 2
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    return v0
.end method

.method static synthetic access$2(Lcom/infraware/polarisoffice/common/PenSettingPanel;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->setPenSize(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V
    .registers 1
    .parameter

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->updatePreview()V

    return-void
.end method

.method static synthetic access$4(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V
    .registers 1
    .parameter

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateCircle()V

    return-void
.end method

.method static synthetic access$5(Lcom/infraware/polarisoffice/common/PenSettingPanel;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->setCurColor(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V
    .registers 1
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateProgressColor()V

    return-void
.end method

.method static synthetic access$7(Lcom/infraware/polarisoffice/common/PenSettingPanel;)Lcom/infraware/polarisoffice/common/ColorPickerView;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;

    return-object v0
.end method

.method private initCloseButton()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    const v1, 0x7f0c011e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCloseBtn:Landroid/widget/ImageButton;

    .line 169
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCloseBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/infraware/polarisoffice/common/PenSettingPanel$2;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel$2;-><init>(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method private initColorPickerView(I)V
    .registers 4
    .parameter "initialColor"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0124

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/ColorPickerView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;

    .line 217
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/infraware/polarisoffice/common/ColorPickerView;->setColor(I)V

    .line 218
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;

    new-instance v1, Lcom/infraware/polarisoffice/common/PenSettingPanel$4;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel$4;-><init>(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/ColorPickerView;->setColorchangedListener(Lcom/infraware/polarisoffice/common/ColorPickerView$ColorChangedListener;)V

    .line 227
    return-void
.end method

.method private initControls(II)V
    .registers 3
    .parameter "initialPenSize"
    .parameter "initialPenColor"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initCloseButton()V

    .line 142
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initPreview()V

    .line 143
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initPenSizeCircle()V

    .line 144
    invoke-direct {p0, p1}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initPenSizeBar(I)V

    .line 145
    invoke-direct {p0, p2}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initColorPickerView(I)V

    .line 146
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initGrdientColorPickerView()V

    .line 147
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initPaintandCanvas()V

    .line 160
    invoke-direct {p0, p2}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->setCurColor(I)V

    .line 161
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->updatePreview()V

    .line 162
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateProgressColor()V

    .line 163
    invoke-direct {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->updateCircle()V

    .line 165
    return-void
.end method

.method private initGrdientColorPickerView()V
    .registers 3

    .prologue
    .line 230
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0125

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/infraware/polarisoffice/common/GrdientColorPicker;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oGrdientColorPicker:Lcom/infraware/polarisoffice/common/GrdientColorPicker;

    .line 231
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oGrdientColorPicker:Lcom/infraware/polarisoffice/common/GrdientColorPicker;

    new-instance v1, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;

    invoke-direct {v1, p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel$5;-><init>(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/common/GrdientColorPicker;->setGrdientColorChangedListener(Lcom/infraware/polarisoffice/common/GrdientColorPicker$GrdientColorChangedListener;)V

    .line 243
    return-void
.end method

.method private initPaintandCanvas()V
    .registers 3

    .prologue
    .line 256
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    .line 257
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 258
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 260
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCanvas:Landroid/graphics/Canvas;

    .line 261
    return-void
.end method

.method private initPenSettingPanel(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 122
    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    .line 123
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 126
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 127
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 128
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-super {p0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 130
    const-string v1, "PEN_PROP"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 131
    .local v0, oPreference:Landroid/content/SharedPreferences;
    const-string v1, "PENSIZE_KEY"

    iget v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    .line 132
    const-string v1, "PENCOLOR_KEY"

    iget v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    .line 135
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 138
    iget v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    invoke-direct {p0, v1, v2}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->initControls(II)V

    .line 139
    return-void
.end method

.method private initPenSizeBar(I)V
    .registers 5
    .parameter "initialPenSize"

    .prologue
    .line 177
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    const v2, 0x7f0c0122

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeBar:Landroid/widget/SeekBar;

    .line 178
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleBitmapWidth:I

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 179
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/infraware/polarisoffice/common/PenSettingPanel$3;

    invoke-direct {v2, p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel$3;-><init>(Lcom/infraware/polarisoffice/common/PenSettingPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 202
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 203
    .local v0, pensizebarDrawable:Landroid/graphics/drawable/LayerDrawable;
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    return-void
.end method

.method private initPenSizeCircle()V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0123

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeCircle:Landroid/widget/ImageView;

    .line 209
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleBitmapWidth:I

    .line 210
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleBitmapHeight:I

    .line 211
    iget v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleBitmapWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleCenterX:I

    .line 212
    iget v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleBitmapHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleCenterY:I

    .line 213
    return-void
.end method

.method private initPreview()V
    .registers 8

    .prologue
    .line 246
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    const v1, 0x7f0c0120

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreview:Landroid/widget/ImageView;

    .line 249
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreviewPath:Landroid/graphics/Path;

    .line 250
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreviewPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 251
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreviewPath:Landroid/graphics/Path;

    const/high16 v1, 0x42a0

    const/high16 v2, 0x422c

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 252
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreviewPath:Landroid/graphics/Path;

    const/high16 v1, 0x4348

    const/high16 v2, 0x42c8

    const/high16 v3, 0x4366

    const/high16 v4, 0x40a0

    const/high16 v5, 0x43b4

    const/high16 v6, 0x4278

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 253
    return-void
.end method

.method private setCurColor(I)V
    .registers 4
    .parameter "color"

    .prologue
    .line 300
    iput p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    .line 301
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    if-eqz v0, :cond_14

    .line 303
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    iget v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    invoke-interface {v0, v1}, Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;->onPenColorChanged(I)V

    .line 304
    :cond_14
    return-void
.end method

.method private setPenSize(I)V
    .registers 4
    .parameter "size"

    .prologue
    .line 307
    iput p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    .line 308
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 309
    return-void
.end method

.method private updateCircle()V
    .registers 7

    .prologue
    .line 290
    iget v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleBitmapWidth:I

    iget v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleBitmapHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 292
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 293
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleCenterX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCircleCenterY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 295
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 297
    return-void
.end method

.method private updatePreview()V
    .registers 5

    .prologue
    .line 271
    const/16 v1, 0x1b8

    const/16 v2, 0x6d

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 273
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 274
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 276
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 277
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreviewPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 279
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreview:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 281
    return-void
.end method

.method private updateProgressColor()V
    .registers 4

    .prologue
    .line 284
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 285
    .local v0, colorfilter:Landroid/graphics/PorterDuffColorFilter;
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 286
    iget-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 287
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    invoke-virtual {p0}, Lcom/infraware/polarisoffice/common/PenSettingPanel;->dismiss()V

    .line 100
    :cond_a
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    .line 101
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCloseBtn:Landroid/widget/ImageButton;

    .line 102
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreview:Landroid/widget/ImageView;

    .line 103
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeBar:Landroid/widget/SeekBar;

    .line 104
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPenSizeCircle:Landroid/widget/ImageView;

    .line 106
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oColorPickerView:Lcom/infraware/polarisoffice/common/ColorPickerView;

    .line 107
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oGrdientColorPicker:Lcom/infraware/polarisoffice/common/GrdientColorPicker;

    .line 110
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPreviewPath:Landroid/graphics/Path;

    .line 111
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPaint:Landroid/graphics/Paint;

    .line 112
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oCanvas:Landroid/graphics/Canvas;

    .line 114
    iput-object v1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    .line 115
    return-void
.end method

.method public getPenColor()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCurColor:I

    return v0
.end method

.method public getPenSize()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nPenSize:I

    return v0
.end method

.method public initArrowDown(I)V
    .registers 7
    .parameter "ViewPosX"

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_oPopupView:Landroid/widget/FrameLayout;

    const v3, 0x7f0c0126

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mArrowDown:Landroid/widget/ImageView;

    .line 265
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v2, v4, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 266
    iget v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCenterPosX:I

    iget-object v3, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 267
    .local v1, offset:I
    iget-object v2, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mArrowDown:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 268
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 269
    return-void
.end method

.method public setCenterPosX(I)V
    .registers 2
    .parameter "PosX"

    .prologue
    .line 312
    iput p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->m_nCenterPosX:I

    .line 313
    return-void
.end method

.method public setOnPenSettingChangeListener(Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/PenSettingPanel;->mPenSettingChangeListener:Lcom/infraware/polarisoffice/common/PenSettingPanel$OnPenSettingChangeListener;

    .line 70
    return-void
.end method
