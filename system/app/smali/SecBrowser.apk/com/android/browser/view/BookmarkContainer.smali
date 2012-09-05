.class public Lcom/android/browser/view/BookmarkContainer;
.super Landroid/widget/RelativeLayout;
.source "BookmarkContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->init()V

    .line 49
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/widget/RelativeLayout;->drawableStateChanged()V

    .line 69
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->isPressed()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/BookmarkContainer;->updateTransitionDrawable(Z)V

    .line 70
    return-void
.end method

.method init()V
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/view/BookmarkContainer;->setFocusable(Z)V

    .line 53
    invoke-super {p0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 89
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/view/BookmarkContainer;->updateTransitionDrawable(Z)V

    .line 91
    const v1, 0x7f0d00ea

    invoke-virtual {p0, v1}, Lcom/android/browser/view/BookmarkContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 92
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_18

    .line 93
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v1

    if-nez v1, :cond_18

    .line 94
    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 98
    :cond_18
    iget-object v1, p0, Lcom/android/browser/view/BookmarkContainer;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_21

    .line 99
    iget-object v1, p0, Lcom/android/browser/view/BookmarkContainer;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 101
    :cond_21
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "d"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/browser/view/BookmarkContainer;->mClickListener:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method

.method updateTransitionDrawable(Z)V
    .registers 6
    .parameter "pressed"

    .prologue
    .line 73
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    .line 74
    .local v1, longPressTimeout:I
    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 75
    .local v2, selector:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_27

    instance-of v3, v2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_27

    .line 76
    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    .end local v2           #selector:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 77
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_27

    instance-of v3, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v3, :cond_27

    .line 78
    if-eqz p1, :cond_28

    invoke-virtual {p0}, Lcom/android/browser/view/BookmarkContainer;->isLongClickable()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 79
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 85
    :cond_27
    :goto_27
    return-void

    .line 81
    .restart local v0       #d:Landroid/graphics/drawable/Drawable;
    :cond_28
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_27
.end method
