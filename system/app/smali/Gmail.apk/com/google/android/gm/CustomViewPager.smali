.class public Lcom/google/android/gm/CustomViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "CustomViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 7
    .parameter "v"
    .parameter "checkV"
    .parameter "dx"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 28
    instance-of v0, p1, Lcom/google/android/gm/CustomWebView;

    if-eqz v0, :cond_13

    .line 29
    if-eqz p2, :cond_11

    check-cast p1, Lcom/google/android/gm/CustomWebView;

    .end local p1
    neg-int v0, p3

    invoke-virtual {p1, v0}, Lcom/google/android/gm/CustomWebView;->canScroll(I)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 32
    :goto_10
    return v0

    .line 29
    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    .line 32
    .restart local p1
    :cond_13
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    goto :goto_10
.end method
