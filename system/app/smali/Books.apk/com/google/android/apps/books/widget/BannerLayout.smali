.class public Lcom/google/android/apps/books/widget/BannerLayout;
.super Landroid/view/ViewGroup;
.source "BannerLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/google/android/apps/books/util/AccessibilityUtils;->dispatchPopulateAccessibiltyEvent(Landroid/view/ViewGroup;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 45
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/BannerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 49
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/BannerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1a

    .line 51
    sub-int v1, p5, p3

    .line 52
    .local v1, height:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v2, v1, v3

    .line 53
    .local v2, top:I
    invoke-virtual {v0, p2, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 57
    .end local v1           #height:I
    .end local v2           #top:I
    :cond_1a
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/BannerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_24

    .line 59
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 61
    :cond_24
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/books/widget/BannerLayout;->measureChildren(II)V

    .line 36
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/widget/BannerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 38
    .local v2, width:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 39
    .local v1, height:I
    invoke-virtual {p0, v2, v1}, Lcom/google/android/apps/books/widget/BannerLayout;->setMeasuredDimension(II)V

    .line 40
    return-void
.end method
