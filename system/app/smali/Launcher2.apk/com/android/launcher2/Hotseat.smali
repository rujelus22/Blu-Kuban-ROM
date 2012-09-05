.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Hotseat"

.field private static final sAllAppsButtonRank:I = 0x2


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mContent:Lcom/android/launcher2/CellLayout;

.field private mIsLandscape:Z

.field private mLauncher:Lcom/android/launcher2/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v3, Lcom/android/launcher/R$styleable;->Hotseat:[I

    invoke-virtual {p1, p2, v3, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    .line 55
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    :goto_25
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    .line 58
    return-void

    :cond_28
    move v1, v2

    .line 56
    goto :goto_25
.end method

.method static synthetic access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/Launcher;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method public static isAllAppsButtonRank(I)Z
    .registers 2
    .parameter "rank"

    .prologue
    .line 81
    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method


# virtual methods
.method getCellXFromOrder(I)I
    .registers 3
    .parameter "rank"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    .end local p1
    :cond_5
    return p1
.end method

.method getCellYFromOrder(I)I
    .registers 4
    .parameter "rank"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method getLayout()Lcom/android/launcher2/CellLayout;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1
    :cond_d
    return p1
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 86
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 87
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    if-gez v0, :cond_d

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    .line 88
    :cond_d
    iget v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    if-gez v0, :cond_17

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    .line 89
    :cond_17
    const v0, 0x7f060017

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    .line 90
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    iget v1, p0, Lcom/android/launcher2/Hotseat;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/Hotseat;->mCellCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setGridSize(II)V

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 93
    return-void
.end method

.method resetLayout()V
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 96
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->removeAllViewsInLayout()V

    .line 99
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 100
    .local v6, context:Landroid/content/Context;
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 101
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030002

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BubbleTextView;

    .line 103
    .local v1, allAppsButton:Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x7f02

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v4, v0, v4, v4}, Lcom/android/launcher2/BubbleTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 106
    const v0, 0x7f0c001e

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher2/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v0, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher2/BubbleTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    new-instance v0, Lcom/android/launcher2/Hotseat$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$2;-><init>(Lcom/android/launcher2/Hotseat;)V

    invoke-virtual {v1, v0}, Lcom/android/launcher2/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p0, v10}, Lcom/android/launcher2/Hotseat;->getCellXFromOrder(I)I

    move-result v8

    .line 130
    .local v8, x:I
    invoke-virtual {p0, v10}, Lcom/android/launcher2/Hotseat;->getCellYFromOrder(I)I

    move-result v9

    .line 131
    .local v9, y:I
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayout;

    const/4 v2, -0x1

    new-instance v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v4, v8, v9, v5, v5}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    .line 133
    return-void
.end method

.method public setup(Lcom/android/launcher2/Launcher;)V
    .registers 3
    .parameter "launcher"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 62
    new-instance v0, Lcom/android/launcher2/HotseatIconKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher2/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 63
    return-void
.end method
