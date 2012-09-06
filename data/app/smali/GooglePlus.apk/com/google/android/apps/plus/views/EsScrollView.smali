.class public Lcom/google/android/apps/plus/views/EsScrollView;
.super Landroid/widget/ScrollView;
.source "EsScrollView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 34
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 35
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_10

    .line 36
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 40
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_10
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "ev"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsScrollView;->getScrollY()I

    move-result v0

    .line 46
    .local v0, oldScrollY:I
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 47
    .local v2, result:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsScrollView;->getScrollY()I

    move-result v3

    if-eq v3, v0, :cond_18

    .line 49
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/EsScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 50
    .local v1, parent:Landroid/view/ViewParent;
    if-eqz v1, :cond_18

    .line 51
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 54
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_18
    return v2
.end method
