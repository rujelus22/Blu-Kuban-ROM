.class public Lcom/google/android/apps/plus/views/EventDetailsLayout;
.super Lcom/google/android/apps/plus/views/ExactLayout;
.source "EventDetailsLayout.java"


# static fields
.field private static sAvatarOverlap:I

.field private static sAvatarSize:I

.field private static sInitialized:Z

.field private static sSecondaryPadding:I

.field private static sTwoSpanLayoutDividerPercentage:F


# instance fields
.field private mEventTheme:Lcom/google/android/apps/plus/views/EventThemeView;

.field private mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

.field private mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ExactLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    sget-boolean v1, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sInitialized:Z

    if-nez v1, :cond_37

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 49
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sAvatarSize:I

    .line 50
    sget v1, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sAvatarSize:I

    int-to-float v1, v1

    const v2, 0x7f0d010c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sAvatarOverlap:I

    .line 53
    const v1, 0x7f0d0112

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sSecondaryPadding:I

    .line 55
    const v1, 0x7f0d0113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sTwoSpanLayoutDividerPercentage:F

    .line 57
    const/4 v1, 0x1

    sput-boolean v1, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sInitialized:Z

    .line 60
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_37
    new-instance v1, Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventThemeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mEventTheme:Lcom/google/android/apps/plus/views/EventThemeView;

    .line 61
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mEventTheme:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->addView(Landroid/view/View;)V

    .line 63
    new-instance v1, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->addView(Landroid/view/View;)V

    .line 66
    new-instance v1, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    .line 67
    iget-object v1, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->addView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v11, 0x0

    const/high16 v12, 0x4000

    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/views/ExactLayout;->onMeasure(II)V

    .line 74
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 75
    .local v9, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 77
    .local v2, height:I
    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mEventTheme:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-static {v10, v9, v12, v2, v11}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->measure(Landroid/view/View;IIII)V

    .line 78
    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mEventTheme:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-static {v10, v11, v11}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->setCorner(Landroid/view/View;II)V

    .line 80
    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mEventTheme:Lcom/google/android/apps/plus/views/EventThemeView;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/views/EventThemeView;->getMeasuredHeight()I

    move-result v1

    .line 81
    .local v1, eventThemeHeight:I
    move v0, v1

    .line 85
    .local v0, eventThemeBottom:I
    int-to-float v10, v9

    sget v11, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sTwoSpanLayoutDividerPercentage:F

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 86
    .local v7, mainLayoutWidth:I
    sub-int v10, v9, v7

    sget v11, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sSecondaryPadding:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v8, v10, v11

    .line 88
    .local v8, secondLayoutWidth:I
    sub-int v3, v2, v1

    .line 90
    .local v3, layoutHeight:I
    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    sget v11, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sAvatarOverlap:I

    add-int/2addr v11, v3

    invoke-static {v10, v7, v12, v11, v12}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->measure(Landroid/view/View;IIII)V

    .line 93
    const/4 v4, 0x0

    .line 94
    .local v4, mainLayoutLeft:I
    sget v10, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sAvatarOverlap:I

    sub-int v6, v0, v10

    .line 95
    .local v6, mainLayoutTop:I
    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-virtual {v10}, Lcom/google/android/apps/plus/views/EventDetailsMainLayout;->getMeasuredWidth()I

    move-result v10

    add-int v5, v4, v10

    .line 97
    .local v5, mainLayoutRight:I
    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mMainLayout:Lcom/google/android/apps/plus/views/EventDetailsMainLayout;

    invoke-static {v10, v4, v6}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->setCorner(Landroid/view/View;II)V

    .line 100
    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    sget v11, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sSecondaryPadding:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v3, v11

    invoke-static {v10, v8, v12, v11, v12}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->measure(Landroid/view/View;IIII)V

    .line 102
    iget-object v10, p0, Lcom/google/android/apps/plus/views/EventDetailsLayout;->mSecondaryLayout:Lcom/google/android/apps/plus/views/EventDetailsSecondaryLayout;

    sget v11, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sSecondaryPadding:I

    add-int/2addr v11, v5

    sget v12, Lcom/google/android/apps/plus/views/EventDetailsLayout;->sSecondaryPadding:I

    add-int/2addr v12, v0

    invoke-static {v10, v11, v12}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->setCorner(Landroid/view/View;II)V

    .line 105
    invoke-virtual {p0, v9, v2}, Lcom/google/android/apps/plus/views/EventDetailsLayout;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method
