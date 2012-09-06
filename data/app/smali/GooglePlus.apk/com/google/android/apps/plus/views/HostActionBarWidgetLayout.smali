.class public Lcom/google/android/apps/plus/views/HostActionBarWidgetLayout;
.super Landroid/widget/FrameLayout;
.source "HostActionBarWidgetLayout.java"


# instance fields
.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/HostActionBarWidgetLayout;->parseAttr(Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/views/HostActionBarWidgetLayout;->parseAttr(Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method private parseAttr(Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBarWidgetLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x101011f

    aput v3, v2, v4

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 35
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/HostActionBarWidgetLayout;->mMaxWidth:I

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 48
    iget v1, p0, Lcom/google/android/apps/plus/views/HostActionBarWidgetLayout;->mMaxWidth:I

    invoke-static {v1, p1}, Lcom/google/android/apps/plus/views/HostActionBarWidgetLayout;->resolveSize(II)I

    move-result v0

    .line 49
    .local v0, maxWidth:I
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/HostActionBarWidgetLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_1d

    .line 50
    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 54
    :cond_1d
    return-void
.end method
