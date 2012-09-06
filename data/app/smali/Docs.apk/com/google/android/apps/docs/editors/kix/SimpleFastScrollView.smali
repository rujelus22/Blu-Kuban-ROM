.class public abstract Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;
.super Landroid/widget/FrameLayout;
.source "SimpleFastScrollView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "LwS",
        "<TT;>;U:",
        "Lyr",
        "<TT;>;>",
        "Landroid/widget/FrameLayout;",
        "Landroid/view/ViewGroup$OnHierarchyChangeListener;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private a:Lyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Landroid/content/Context;

    .line 50
    invoke-virtual {p0, p0}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->setWillNotDraw(Z)V

    .line 52
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/view/View;)Lyr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)TU;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Lyr;

    invoke-virtual {v0, p1}, Lyr;->a(Landroid/graphics/Canvas;)V

    .line 58
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 68
    instance-of v0, p2, LwS;

    if-eqz v0, :cond_19

    .line 70
    iput-object p2, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a(Landroid/content/Context;Landroid/view/View;)Lyr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Lyr;

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Landroid/view/View;

    check-cast v0, LwS;

    iget-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Lyr;

    invoke-interface {v0, v1}, LwS;->setFastScroller(Lyr;)V

    .line 74
    :cond_19
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Landroid/view/View;

    if-ne p2, v0, :cond_e

    .line 79
    iput-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Lyr;

    invoke-virtual {v0}, Lyr;->a()V

    .line 81
    iput-object v1, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Lyr;

    .line 83
    :cond_e
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Lyr;

    invoke-virtual {v0, p1}, Lyr;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Lyr;

    invoke-virtual {v0, p1, p2, p3, p4}, Lyr;->a(IIII)V

    .line 64
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/docs/editors/kix/SimpleFastScrollView;->a:Lyr;

    invoke-virtual {v0, p1}, Lyr;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 93
    if-eqz v0, :cond_a

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method
