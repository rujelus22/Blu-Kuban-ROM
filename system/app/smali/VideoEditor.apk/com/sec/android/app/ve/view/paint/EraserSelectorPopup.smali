.class public Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;
.super Landroid/widget/PopupWindow;
.source "EraserSelectorPopup.java"


# static fields
.field private static final ERASER_THICKNESS_THRESHOLD:I = 0x59

.field private static myObject:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;


# instance fields
.field private clearall:Landroid/widget/Button;

.field private eraserSizeCircle:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mEraserThicknessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPrimaryView:Landroid/view/View;

.field private nThickness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 11
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object v7, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->eraserSizeCircle:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    .line 36
    iput-object v7, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->clearall:Landroid/widget/Button;

    .line 126
    new-instance v4, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$1;-><init>(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;)V

    iput-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mEraserThicknessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 45
    sput-object p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->myObject:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    .line 46
    iput-object p1, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mContext:Landroid/content/Context;

    .line 47
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mContext:Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 49
    .local v1, layoutInflater:Landroid/view/LayoutInflater;
    if-eqz v1, :cond_39

    .line 51
    const v4, 0x7f030010

    invoke-virtual {v1, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mPrimaryView:Landroid/view/View;

    .line 52
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 54
    .local v2, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mPrimaryView:Landroid/view/View;

    if-nez v4, :cond_3a

    .line 56
    const-string v4, "EraserSelectorPopup: Could not inflate our Layout"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 121
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_39
    :goto_39
    return-void

    .line 59
    .restart local v2       #res:Landroid/content/res/Resources;
    :cond_3a
    if-nez v2, :cond_42

    .line 61
    const-string v4, "EraserSelectorPopup: Could not get a reference to Resources object"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_39

    .line 65
    :cond_42
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v5, 0x7f0b003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    iput-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->eraserSizeCircle:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    .line 66
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v5, 0x7f0b003c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->clearall:Landroid/widget/Button;

    .line 67
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v5, 0x7f0b0038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mCloseButton:Landroid/widget/ImageView;

    .line 68
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mCloseButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$2;-><init>(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->clearall:Landroid/widget/Button;

    new-instance v5, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup$3;-><init>(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const/16 v4, 0x1dd

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->setWidth(I)V

    .line 89
    const/16 v4, 0x138

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->setHeight(I)V

    .line 90
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mPrimaryView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->setContentView(Landroid/view/View;)V

    .line 93
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->setOutsideTouchable(Z)V

    .line 94
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->setFocusable(Z)V

    .line 97
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mPrimaryView:Landroid/view/View;

    const v5, 0x7f0b0039

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    .line 102
    .local v3, thicknessSeekBar:Landroid/widget/SeekBar;
    if-nez v3, :cond_b1

    .line 104
    const-string v4, "EraserSelectorPopup: Could not get a handle to Seekbar"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_39

    .line 113
    :cond_b1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 114
    .local v0, colDrawable:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->mEraserThicknessListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 117
    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->nThickness:I

    .line 119
    iget-object v4, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->eraserSizeCircle:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->invalidate()V

    goto/16 :goto_39
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->nThickness:I

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;)Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->eraserSizeCircle:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;
    .registers 2
    .parameter "context"

    .prologue
    .line 154
    sget-object v0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->myObject:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    return-object v0
.end method


# virtual methods
.method public getEraserThickness()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->nThickness:I

    return v0
.end method

.method public show(Landroid/view/View;IIII)V
    .registers 7
    .parameter "parent"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "anchorX"
    .parameter "anchorY"

    .prologue
    .line 165
    const/16 v0, 0x35

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->showAtLocation(Landroid/view/View;III)V

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->eraserSizeCircle:Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/DrawSizeCircle;->invalidate()V

    .line 177
    return-void
.end method

.method public terminate()V
    .registers 2

    .prologue
    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->myObject:Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    .line 160
    return-void
.end method
