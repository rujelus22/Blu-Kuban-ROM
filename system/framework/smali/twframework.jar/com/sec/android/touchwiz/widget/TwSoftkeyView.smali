.class public Lcom/sec/android/touchwiz/widget/TwSoftkeyView;
.super Landroid/widget/LinearLayout;
.source "TwSoftkeyView.java"


# static fields
.field private static final DEFAULT_SOFTKEYITEM_PADDING_BOTTOM:F = 2.66f

.field private static final DEFAULT_SOFTKEYITEM_PADDING_SIDE:F = 3.33f

.field private static final DEFAULT_SOFTKEYITEM_PADDING_TOP:F = 6.66f

.field public static final DEFAULT_SOFTKEYVIEW_HEIGHT:F = 60.0f

.field public static final MAX_SOFTKEY_ITEM_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TwSoftkeyView"


# instance fields
.field private final debug:Z

.field private mChildLp:Landroid/widget/LinearLayout$LayoutParams;

.field private mScale:F

.field mSideMarginOneButton:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->debug:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    .line 63
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->init(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->debug:Z

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    .line 63
    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    .line 89
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setHapticFeedbackEnabled(Z)V

    .line 90
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setSoundEffectsEnabled(Z)V

    .line 92
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_65

    .line 96
    const v4, 0x4222ae14

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    .line 104
    :cond_2b
    :goto_2b
    const v4, 0x202003a

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setBackgroundResource(I)V

    .line 111
    const/high16 v4, 0x4270

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 116
    .local v3, backgroundHeight:I
    const v4, 0x40551eb8

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 121
    .local v1, FixedSidePadding:I
    const v4, 0x40d51eb8

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v2, v4

    .line 126
    .local v2, FixedTopPadding:I
    const v4, 0x402a3d71

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v0, v4

    .line 128
    .local v0, FixedBottomPadding:I
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setOrientation(I)V

    .line 131
    invoke-virtual {p0, v1, v2, v1, v0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setPadding(IIII)V

    .line 132
    const/16 v4, 0x11

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setGravity(I)V

    .line 133
    return-void

    .line 97
    .end local v0           #FixedBottomPadding:I
    .end local v1           #FixedSidePadding:I
    .end local v2           #FixedTopPadding:I
    .end local v3           #backgroundHeight:I
    :cond_65
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2b

    .line 99
    const v4, 0x4299570a

    iput v4, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    goto :goto_2b
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 137
    const-string v2, "TwSoftkeyView"

    const-string v3, "onMeasure::W E L C O M E."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_59

    .line 140
    const v2, 0x4222ae14

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    .line 145
    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v2, :cond_32

    .line 147
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    .line 149
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f80

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 150
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 153
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildCount()I

    move-result v2

    if-ne v2, v6, :cond_46

    .line 157
    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 158
    .local v0, FixedSideMargin:I
    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v0, v5, v0, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 162
    .end local v0           #FixedSideMargin:I
    :cond_46
    const/4 v1, 0x0

    .local v1, i:I
    :goto_47
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6c

    .line 163
    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mChildLp:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 141
    .end local v1           #i:I
    :cond_59
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1b

    .line 143
    const v2, 0x4299570a

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->mSideMarginOneButton:F

    goto :goto_1b

    .line 165
    .restart local v1       #i:I
    :cond_6c
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 166
    return-void
.end method

.method public setEnableSoftkeyItem(IZ)V
    .registers 4
    .parameter "index"
    .parameter "bEnable"

    .prologue
    .line 175
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildCount()I

    move-result v0

    if-le p1, v0, :cond_9

    .line 181
    :cond_8
    :goto_8
    return-void

    .line 178
    :cond_9
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 179
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_8
.end method
