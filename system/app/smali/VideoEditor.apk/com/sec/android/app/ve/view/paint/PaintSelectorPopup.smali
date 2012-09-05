.class public Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
.super Landroid/widget/PopupWindow;
.source "PaintSelectorPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    }
.end annotation


# static fields
.field private static final DEFAULT_HIGHLIGHTER_OPACITY:I = 0x64

.field private static final DEFAULT_HIGHLIGHTER_THICKNESS:I = 0x18

.field private static final DEFAULT_PEN_THICKNESS:I = 0x8

.field private static final MAX_OPACITY:I = 0xfe

.field public static final MAX_STROKE_THICKNESS:I = 0x48

.field public static final ONE_LEVEL:F = 0.36f

.field private static final POPUP_HEIGHT_AFTER_EXPAND:I = 0x29e

.field private static final POPUP_WIDTH_AFTER_EXPAND:I = 0x217

.field private static final THICKNESS_UNIFORM_LIMIT:I = 0x18

.field public static final THUMB_MAX_TOP_MARGIN:I = 0x1c4

.field public static final THUMB_MIN_TOP_MARGIN:I = 0x21

.field private static final TITLE_WIDTH_BEFORE_EXPAND:I = 0x1e0

.field private static myObject:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;


# instance fields
.field private FountainPen:Landroid/widget/RadioButton;

.field private PaintBrush:Landroid/widget/RadioButton;

.field private Pen:Landroid/widget/RadioButton;

.field private Pencil:Landroid/widget/RadioButton;

.field private bExpanded:Z

.field private bottomLayout:Landroid/widget/ImageView;

.field public colorSelected:[I

.field private inTouch:Z

.field private insideScroll:Landroid/widget/LinearLayout;

.field private mAnchorImage:Landroid/widget/ImageView;

.field private mBottomContainer:Landroid/view/View;

.field private mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

.field private mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

.field private mContext:Landroid/content/Context;

.field private mExpandButton:Landroid/widget/ImageButton;

.field private mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

.field private mPreviewBmp:Landroid/graphics/Bitmap;

.field private mPreviewCanvas:Landroid/graphics/Canvas;

.field private mPrimaryView:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mScrollThumb:Landroid/widget/ImageView;

.field private mScrollTouchListener:Landroid/view/View$OnTouchListener;

.field private mScrollView:Landroid/widget/RelativeLayout;

.field private mScrollableArea:Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

.field private mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSpriteTypes:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field private mStrokePreview:Landroid/widget/ImageView;

.field private mThicknessIndicator:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

.field private mThicknessSeekBar:Landroid/widget/SeekBar;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mTransparencySeekBar:Landroid/widget/SeekBar;

.field private mTransparencyShadow:Landroid/widget/ImageView;

.field private nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

.field private opaPreView:Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;

.field public opaSize:[I

.field private opa_area:Landroid/widget/RelativeLayout;

.field public penSize:[I

.field public penTypeIndex:I

.field private settingTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v2, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 76
    iput v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    .line 80
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    .line 81
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    .line 82
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    .line 83
    new-array v1, v2, [Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Solid:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v2, v1, v5

    .line 84
    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Brush:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v2, v1, v6

    .line 85
    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Pencil:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v2, v1, v7

    .line 86
    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Hightlighter:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    aput-object v2, v1, v8

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mSpriteTypes:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    .line 258
    new-instance v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$1;-><init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 290
    new-instance v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$2;-><init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    .line 308
    new-instance v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$3;-><init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 358
    new-instance v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$4;-><init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 379
    new-instance v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$5;-><init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollTouchListener:Landroid/view/View$OnTouchListener;

    .line 115
    sput-object p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->myObject:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 116
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mContext:Landroid/content/Context;

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 119
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    if-eqz v0, :cond_78

    .line 122
    const v1, 0x7f030024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mResources:Landroid/content/res/Resources;

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    if-nez v1, :cond_79

    .line 127
    const-string v1, "PaintSelectorPopup: Could not inflate our Layout"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 253
    :cond_78
    :goto_78
    return-void

    .line 131
    :cond_79
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_83

    .line 133
    const-string v1, "PaintSelectorPopup: Could not get a handle to Resources"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_78

    .line 138
    :cond_83
    const/16 v1, 0x217

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setWidth(I)V

    .line 139
    const/16 v1, 0x29e

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setHeight(I)V

    .line 140
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setContentView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setOutsideTouchable(Z)V

    .line 144
    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setFocusable(Z)V

    .line 147
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v5, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    const/16 v2, 0x18

    aput v2, v1, v8

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    const/16 v4, 0x8

    aput v4, v3, v5

    aput v4, v2, v6

    aput v4, v1, v7

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    const/16 v4, 0xff

    aput v4, v3, v5

    aput v4, v2, v6

    aput v4, v1, v7

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    const/16 v2, 0x64

    aput v2, v1, v8

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    const/high16 v4, -0x100

    aput v4, v3, v5

    aput v4, v2, v6

    aput v4, v1, v7

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    const/16 v2, -0x100

    aput v2, v1, v8

    .line 155
    iput v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mAnchorImage:Landroid/widget/ImageView;

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mAnchorImage:Landroid/widget/ImageView;

    if-nez v1, :cond_f9

    .line 160
    const-string v1, "PaintSelectorPopup: Could not get a handle to Anchor"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_78

    .line 164
    :cond_f9
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessSeekBar:Landroid/widget/SeekBar;

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessSeekBar:Landroid/widget/SeekBar;

    if-nez v1, :cond_111

    .line 167
    const-string v1, "PaintSelectorPopup: Could not get a handle to Seekbar"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 170
    :cond_111
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    if-nez v1, :cond_129

    .line 173
    const-string v1, "PaintSelectorPopup: Could not get a handle to Transparency Seekbar"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 177
    :cond_129
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessIndicator:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessIndicator:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    if-nez v1, :cond_141

    .line 181
    const-string v1, "PaintSelectorPopup: Could not get a handle to Thickness Indicator"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 186
    :cond_141
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b008a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    if-nez v1, :cond_16c

    .line 192
    const-string v1, "PaintSelectorPopup: Could not get a handle to Color Picker"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 195
    :cond_16c
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setColorchangedListener(Lcom/sec/android/app/ve/view/paint/ColorChangedListener;)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->initializeSettingFlag()V

    .line 198
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b008b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    .line 199
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    if-nez v1, :cond_190

    .line 201
    const-string v1, "PaintSelectorPopup: Could not get a handle to Gradient Color Picker"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 204
    :cond_190
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->setColorchangedListener(Lcom/sec/android/app/ve/view/paint/ColorChangedListener;)V

    .line 206
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b007c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mStrokePreview:Landroid/widget/ImageView;

    .line 207
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mStrokePreview:Landroid/widget/ImageView;

    if-nez v1, :cond_1af

    .line 209
    const-string v1, "PaintSelectorPopup: Could not get a handle to Stroke ImageView"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 213
    :cond_1af
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b008f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    if-nez v1, :cond_1c7

    .line 216
    const-string v1, "PaintSelectorPopup: Could not get a handle to Expand button"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_78

    .line 219
    :cond_1c7
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollView:Landroid/widget/RelativeLayout;

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b008d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 227
    const/16 v1, 0x1b3

    const/16 v2, 0x78

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    .line 228
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewCanvas:Landroid/graphics/Canvas;

    .line 229
    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->FOUNTAIN_PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    const v2, 0x7f02014e

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setPenObjectType(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;I)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setStrokeColor(I)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setPenThickness(I)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b007e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->FountainPen:Landroid/widget/RadioButton;

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->PaintBrush:Landroid/widget/RadioButton;

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->Pencil:Landroid/widget/RadioButton;

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->Pen:Landroid/widget/RadioButton;

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->FountainPen:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->PaintBrush:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->Pencil:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->Pen:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollableArea:Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0078

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mCloseButton:Landroid/widget/ImageView;

    .line 243
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mCloseButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b007b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->insideScroll:Landroid/widget/LinearLayout;

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0084

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opa_area:Landroid/widget/RelativeLayout;

    .line 246
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0088

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaPreView:Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->bottomLayout:Landroid/widget/ImageView;

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0077

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->settingTitle:Landroid/widget/TextView;

    .line 249
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b008e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mBottomContainer:Landroid/view/View;

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v2, 0x7f0b0089

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencyShadow:Landroid/widget/ImageView;

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencyShadow:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_78
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setPenThickness(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setPenTransparency(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/ColorChangedListener;
    .registers 2
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorChangedListener:Lcom/sec/android/app/ve/view/paint/ColorChangedListener;

    return-object v0
.end method

.method static synthetic access$11(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    return-object v0
.end method

.method static synthetic access$12(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/ColorPickerView;
    .registers 2
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 434
    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setStrokeColor(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V
    .registers 1
    .parameter

    .prologue
    .line 507
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->expand()V

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    return-void
.end method

.method static synthetic access$5(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mBottomContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Landroid/widget/ImageView;
    .registers 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->inTouch:Z

    return-void
.end method

.method static synthetic access$8(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Z
    .registers 2
    .parameter

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->inTouch:Z

    return v0
.end method

.method static synthetic access$9(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)Lcom/sec/android/app/ve/view/paint/PalleteScrollView;
    .registers 2
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollableArea:Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

    return-object v0
.end method

.method private expand()V
    .registers 14

    .prologue
    const/16 v12, 0x26b

    const/16 v11, 0x228

    const/16 v10, 0x1e0

    const/16 v9, 0x8

    const/4 v7, 0x0

    .line 509
    iget-boolean v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->bExpanded:Z

    if-eqz v6, :cond_b6

    move v6, v7

    :goto_e
    iput-boolean v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->bExpanded:Z

    .line 510
    iget-boolean v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->bExpanded:Z

    if-eqz v6, :cond_b9

    .line 512
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->insideScroll:Landroid/widget/LinearLayout;

    const v8, 0x7f020053

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 513
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->setVisibility(I)V

    .line 514
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opa_area:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 515
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 516
    .local v0, p:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0xa

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 517
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    iget-object v8, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    iget v9, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 520
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaPreView:Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->invalidate()V

    .line 522
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    const v8, 0x7f020085

    invoke-virtual {v6, v8}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 523
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 524
    .local v1, p1:Landroid/widget/RelativeLayout$LayoutParams;
    iput v12, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 525
    const/16 v6, 0xe2

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 527
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->bottomLayout:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 530
    .local v3, p3:Landroid/widget/RelativeLayout$LayoutParams;
    iput v12, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 531
    const/4 v6, -0x1

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 532
    const/16 v6, 0x221

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 533
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->bottomLayout:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->settingTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 536
    .local v4, p4:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x219

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 537
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->settingTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollableArea:Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 540
    .local v2, p2:Landroid/view/ViewGroup$LayoutParams;
    const/16 v6, 0x21d

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 541
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollableArea:Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 544
    .local v5, p5:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x1c5

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 545
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 548
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->bringToFront()V

    .line 602
    :goto_b5
    return-void

    .line 509
    .end local v0           #p:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #p1:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #p2:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #p3:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v4           #p4:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #p5:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_b6
    const/4 v6, 0x1

    goto/16 :goto_e

    .line 568
    :cond_b9
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->setVisibility(I)V

    .line 569
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opa_area:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 570
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 571
    .restart local v0       #p:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x19

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 572
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    invoke-virtual {v6, v0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->insideScroll:Landroid/widget/LinearLayout;

    const v8, 0x7f020052

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 575
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->bottomLayout:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 576
    .restart local v3       #p3:Landroid/widget/RelativeLayout$LayoutParams;
    iput v11, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 577
    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 578
    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 579
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->bottomLayout:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    const v7, 0x7f020084

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 582
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 583
    .restart local v1       #p1:Landroid/widget/RelativeLayout$LayoutParams;
    iput v11, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 584
    const/16 v6, 0xe6

    iput v6, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 585
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mExpandButton:Landroid/widget/ImageButton;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->bringToFront()V

    .line 588
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollableArea:Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 589
    .restart local v2       #p2:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x2

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 590
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollableArea:Lcom/sec/android/app/ve/view/paint/PalleteScrollView;

    invoke-virtual {v6, v2}, Lcom/sec/android/app/ve/view/paint/PalleteScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 592
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->settingTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 593
    .restart local v4       #p4:Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 594
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->settingTitle:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 597
    .restart local v5       #p5:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x18f

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 598
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    iget-object v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_b5
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;
    .registers 1

    .prologue
    .line 661
    sget-object v0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->myObject:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    return-object v0
.end method

.method private setPenObjectType(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;I)V
    .registers 3
    .parameter "penType"
    .parameter "strokeResId"

    .prologue
    .line 427
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    .line 428
    return-void
.end method

.method private setPenThickness(I)V
    .registers 4
    .parameter "nProgress"

    .prologue
    .line 451
    const/16 v0, 0x18

    if-le p1, v0, :cond_a

    .line 453
    add-int/lit8 v0, p1, -0x18

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 p1, v0, 0x18

    .line 456
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PenThickness = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aput p1, v0, v1

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessIndicator:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->invalidate()V

    .line 459
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->updateStrokePreview()V

    .line 460
    return-void
.end method

.method private setPenTransparency(I)V
    .registers 4
    .parameter "progress"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aput p1, v0, v1

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaPreView:Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/DrawOpaCircle;->invalidate()V

    .line 467
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->updateTransparency()V

    .line 468
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    .line 470
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->updateStrokePreview()V

    .line 472
    :cond_16
    return-void
.end method

.method private setStrokeColor(I)V
    .registers 5
    .parameter "newColor"

    .prologue
    .line 436
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aput p1, v1, v2

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessIndicator:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->invalidate()V

    .line 438
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->updateTransparency()V

    .line 439
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x102000d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    .local v0, sizeDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v1, v1, v2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->invalidate()V

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->updateStrokePreview()V

    .line 443
    return-void
.end method

.method private updateTransparency()V
    .registers 8

    .prologue
    .line 478
    iget v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_47

    .line 480
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v3, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v4, v4, v5

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v5, v5, v6

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 486
    .local v1, realColor:I
    :goto_2d
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x102000d

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 487
    .local v0, alphaDrawable:Landroid/graphics/drawable/Drawable;
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 488
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->invalidate()V

    .line 489
    return-void

    .line 484
    .end local v0           #alphaDrawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #realColor:I
    :cond_47
    const/4 v1, 0x0

    .restart local v1       #realColor:I
    goto :goto_2d
.end method


# virtual methods
.method public changeColor()V
    .registers 5

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$6;-><init>(Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;)V

    .line 504
    const-wide/16 v2, 0x0

    .line 492
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method

.method public getColorPickerView()Lcom/sec/android/app/ve/view/paint/ColorPickerView;
    .registers 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    return-object v0
.end method

.method public getColorSelected()I
    .registers 3

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getOpaSize()I
    .registers 3

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    sget-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;->PEN:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v0, v0, v1

    :goto_c
    return v0

    :cond_d
    const/16 v0, 0x3c

    goto :goto_c
.end method

.method public getPenAlpha()I
    .registers 3

    .prologue
    .line 726
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getPenColor()I
    .registers 3

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getPenSize()I
    .registers 3

    .prologue
    .line 738
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getPenThickness()I
    .registers 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getPenType()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->nPenType:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup$PaintObjectType;

    return-object v0
.end method

.method public getPenTypeIndex()I
    .registers 2

    .prologue
    .line 750
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    return v0
.end method

.method public refreshStrokeType()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 767
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->getColorIndex()I

    move-result v0

    .line 768
    .local v0, colorIndex:I
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    sget-object v1, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_68

    sget-object v1, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->COLORS:[I

    aget v1, v1, v0

    :goto_18
    aput v1, v4, v5

    .line 771
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->setStrokeColor(I)V

    .line 772
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mThicknessSeekBar:Landroid/widget/SeekBar;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    iget v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 773
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v5, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v4, v4, v5

    invoke-virtual {v1, v4}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->setColor(I)V

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->invalidate()V

    .line 775
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    if-ne v1, v7, :cond_6f

    move v1, v2

    :goto_45
    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 776
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencyShadow:Landroid/widget/ImageView;

    iget v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    if-ne v4, v7, :cond_71

    :goto_4e
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 777
    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mTransparencySeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    if-ne v1, v7, :cond_73

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v1, v1, v3

    :goto_5d
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 778
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->updatePenIcon()V

    .line 779
    return-void

    .line 769
    :cond_68
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v6, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v1, v1, v6

    goto :goto_18

    :cond_6f
    move v1, v3

    .line 775
    goto :goto_45

    :cond_71
    move v2, v3

    .line 776
    goto :goto_4e

    .line 777
    :cond_73
    const/16 v1, 0xfe

    goto :goto_5d
.end method

.method public setScrollThumbY(I)V
    .registers 4
    .parameter "y"

    .prologue
    .line 744
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 745
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 746
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mScrollThumb:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    return-void
.end method

.method public show(Landroid/view/View;IIII)V
    .registers 7
    .parameter "parent"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    .line 688
    const/16 v0, 0x35

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->showAtLocation(Landroid/view/View;III)V

    .line 698
    return-void
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 665
    sput-object v1, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->myObject:Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    .line 666
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mContext:Landroid/content/Context;

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_10

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 670
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    .line 672
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    if-eqz v0, :cond_1b

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/ColorPickerView;->clear()V

    .line 675
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mColorPicker:Lcom/sec/android/app/ve/view/paint/ColorPickerView;

    .line 678
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    if-eqz v0, :cond_26

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;->clear()V

    .line 681
    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mGradientColorPicker:Lcom/sec/android/app/ve/view/paint/GrdientColorPicker;

    .line 683
    :cond_26
    return-void
.end method

.method public toExpand()V
    .registers 1

    .prologue
    .line 754
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->expand()V

    .line 755
    return-void
.end method

.method public updateStrokePreview()V
    .registers 16

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 654
    :goto_4
    return-void

    .line 611
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 612
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_11f

    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->opaSize:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v1, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v2, v2, v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v3, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    .line 615
    .local v5, strokeColor:I
    :goto_37
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mSpriteTypes:[Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    iget v2, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget-object v1, v1, v2

    .line 616
    sget-object v2, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->Constant:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    move-result-object v2

    .line 617
    sget-object v3, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->lookup(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    move-result-object v3

    .line 618
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penSize:[I

    iget v7, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v4, v4, v7

    int-to-float v4, v4

    .line 615
    invoke-interface/range {v0 .. v5}, Lcom/sec/android/framework/draw/sprites/ISpriteFactory;->createStrokeSprite(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;FI)Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    move-result-object v6

    .line 621
    .local v6, mPreviewStrokeSprite:Lcom/sec/android/framework/draw/sprites/StrokeSprite;
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getHandSpeedParameter()[F

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setSpeedParameters([F)V

    .line 622
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getHandPressureParameter()[F

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setPressureParameters([F)V

    .line 624
    const/4 v0, 0x5

    new-array v13, v0, [Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    .line 625
    .local v13, p:[Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    const/4 v0, 0x0

    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    const/high16 v2, 0x4298

    const/high16 v3, 0x4220

    invoke-direct {v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    aput-object v1, v13, v0

    .line 626
    const/4 v0, 0x1

    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    const/high16 v2, 0x432c

    const/high16 v3, 0x42aa

    invoke-direct {v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    aput-object v1, v13, v0

    .line 627
    const/4 v0, 0x2

    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    const/high16 v2, 0x4386

    const/high16 v3, 0x41d0

    invoke-direct {v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    aput-object v1, v13, v0

    .line 628
    const/4 v0, 0x3

    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    const/high16 v2, 0x43b6

    const/high16 v3, 0x428a

    invoke-direct {v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    aput-object v1, v13, v0

    .line 629
    const/4 v0, 0x4

    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    const v2, 0x43b68000

    const/high16 v3, 0x428c

    invoke-direct {v1, v2, v3}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    aput-object v1, v13, v0

    .line 631
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_ed

    .line 633
    const/4 v0, 0x0

    aget-object v0, v13, v0

    const/high16 v1, -0x3ea0

    const/high16 v2, -0x3fc0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 634
    const/4 v0, 0x1

    aget-object v0, v13, v0

    const/high16 v1, -0x3ea0

    const/high16 v2, -0x3fc0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 635
    const/4 v0, 0x2

    aget-object v0, v13, v0

    const/high16 v1, -0x3ea0

    const/high16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 636
    const/4 v0, 0x3

    aget-object v0, v13, v0

    const/high16 v1, -0x3ea0

    const/high16 v2, -0x3eb0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 637
    const/4 v0, 0x4

    aget-object v0, v13, v0

    const/high16 v1, -0x3ea0

    const/high16 v2, -0x3eb0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->offset(FF)V

    .line 640
    :cond_ed
    const/4 v12, 0x0

    .local v12, i:I
    :goto_ee
    array-length v0, v13

    if-lt v12, v0, :cond_127

    .line 647
    invoke-virtual {v6}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->endStroke()Landroid/graphics/RectF;

    .line 648
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->markStrokeEnded(Z)V

    .line 649
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v7, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v1, v2, v3, v4, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v6, v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mStrokePreview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->mPreviewBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 652
    const/4 v13, 0x0

    check-cast v13, [Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    .line 653
    const/4 v6, 0x0

    .line 654
    goto/16 :goto_4

    .line 613
    .end local v5           #strokeColor:I
    .end local v6           #mPreviewStrokeSprite:Lcom/sec/android/framework/draw/sprites/StrokeSprite;
    .end local v12           #i:I
    .end local v13           #p:[Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    :cond_11f
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->colorSelected:[I

    iget v1, p0, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->penTypeIndex:I

    aget v5, v0, v1

    goto/16 :goto_37

    .line 641
    .restart local v5       #strokeColor:I
    .restart local v6       #mPreviewStrokeSprite:Lcom/sec/android/framework/draw/sprites/StrokeSprite;
    .restart local v12       #i:I
    .restart local v13       #p:[Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    :cond_127
    aget-object v14, v13, v12

    .line 642
    .local v14, point:Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    const/high16 v9, 0x437f

    .line 643
    .local v9, pressure:F
    const-wide/16 v10, 0x1

    .line 644
    .local v10, time:J
    iget v7, v14, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iget v8, v14, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->addPoint(FFFJ)Z

    move-result v0

    if-eqz v0, :cond_13b

    .line 645
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->strokeLineSegment(Z)Landroid/graphics/RectF;

    .line 640
    :cond_13b
    add-int/lit8 v12, v12, 0x1

    goto :goto_ee
.end method
