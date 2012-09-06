.class public Lcom/google/android/music/widgets/TouchDelegateView;
.super Landroid/view/View;
.source "TouchDelegateView.java"


# instance fields
.field private mDelegateView:Landroid/view/View;

.field private final mDelegateViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateView:Landroid/view/View;

    .line 28
    sget-object v1, Lcom/google/android/music/R$styleable;->TouchDelagate:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 30
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateViewId:I

    .line 31
    iget v1, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateViewId:I

    if-ne v1, v2, :cond_20

    .line 32
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "must provide a delegate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_20
    return-void
.end method

.method private findDelegate()Landroid/view/View;
    .registers 7

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/music/widgets/TouchDelegateView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 44
    .local v2, viewParent:Landroid/view/ViewParent;
    :goto_4
    if-eqz v2, :cond_1b

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1b

    move-object v1, v2

    .line 45
    check-cast v1, Landroid/view/View;

    .line 46
    .local v1, parent:Landroid/view/View;
    iget v3, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateViewId:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, delegateView:Landroid/view/View;
    if-eqz v0, :cond_16

    .line 53
    .end local v0           #delegateView:Landroid/view/View;
    .end local v1           #parent:Landroid/view/View;
    :goto_15
    return-object v0

    .line 50
    .restart local v0       #delegateView:Landroid/view/View;
    .restart local v1       #parent:Landroid/view/View;
    :cond_16
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 51
    goto :goto_4

    .line 52
    .end local v0           #delegateView:Landroid/view/View;
    .end local v1           #parent:Landroid/view/View;
    :cond_1b
    const-string v3, "TouchDelegateView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find the delegateView id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateViewId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 39
    invoke-direct {p0}, Lcom/google/android/music/widgets/TouchDelegateView;->findDelegate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateView:Landroid/view/View;

    .line 40
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateView:Landroid/view/View;

    if-nez v1, :cond_d

    .line 59
    const-string v1, "TouchDelegateView"

    const-string v2, "Delegate view was null.  Not passing event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_c
    :goto_c
    return v0

    .line 62
    :cond_d
    iget-object v1, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 65
    iget-object v0, p0, Lcom/google/android/music/widgets/TouchDelegateView;->mDelegateView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c
.end method
