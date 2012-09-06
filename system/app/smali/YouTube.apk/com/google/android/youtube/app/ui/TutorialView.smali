.class public Lcom/google/android/youtube/app/ui/TutorialView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/youtube/app/ui/o;


# instance fields
.field private a:Lcom/google/android/youtube/app/ui/ClingView;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/google/android/youtube/app/ui/dg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/ui/TutorialView;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 108
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/TutorialView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->e:Lcom/google/android/youtube/app/ui/dg;

    invoke-interface {v0}, Lcom/google/android/youtube/app/ui/dg;->a()V

    .line 110
    return-void
.end method

.method public final a(Landroid/graphics/Rect;)V
    .registers 5
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/TutorialView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 125
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 126
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 127
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/TutorialView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 129
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/TutorialView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->b:Landroid/view/View;

    if-ne p1, v0, :cond_7

    .line 98
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/TutorialView;->a()V

    .line 100
    :cond_7
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f080108

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->b:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f080107

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/ClingView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->a:Lcom/google/android/youtube/app/ui/ClingView;

    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->a:Lcom/google/android/youtube/app/ui/ClingView;

    invoke-virtual {v0, p0}, Lcom/google/android/youtube/app/ui/ClingView;->setHighlightBoundsListener(Lcom/google/android/youtube/app/ui/o;)V

    .line 56
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->c:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f080109

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/TutorialView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->d:Landroid/widget/LinearLayout;

    .line 58
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->a:Lcom/google/android/youtube/app/ui/ClingView;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/ClingView;->a()Landroid/graphics/Rect;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1f

    .line 65
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/TutorialView;->a()V

    .line 67
    :cond_1f
    const/4 v0, 0x0

    .line 69
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x1

    goto :goto_20
.end method

.method public setDismissListener(Lcom/google/android/youtube/app/ui/dg;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/TutorialView;->e:Lcom/google/android/youtube/app/ui/dg;

    .line 47
    return-void
.end method

.method public setTargetView(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->a:Lcom/google/android/youtube/app/ui/ClingView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/ui/ClingView;->setViewToCling(Landroid/view/View;Landroid/view/View;)V

    .line 104
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/TutorialView;->postInvalidate()V

    .line 105
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/TutorialView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    return-void
.end method

.method public setVisibility(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/TutorialView;->getVisibility()I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 94
    :goto_a
    return-void

    .line 77
    :cond_b
    if-nez p1, :cond_30

    const/4 v0, 0x1

    .line 79
    :goto_e
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_32

    move v4, v3

    :goto_13
    if-eqz v0, :cond_34

    :goto_15
    invoke-direct {v5, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 80
    if-eqz v0, :cond_36

    const-wide/16 v2, 0x3e8

    :goto_1c
    invoke-virtual {v5, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 81
    new-instance v2, Lcom/google/android/youtube/app/ui/df;

    invoke-direct {v2, p0, p1}, Lcom/google/android/youtube/app/ui/df;-><init>(Lcom/google/android/youtube/app/ui/TutorialView;I)V

    invoke-virtual {v5, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 90
    if-eqz v0, :cond_2c

    .line 91
    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 93
    :cond_2c
    invoke-virtual {p0, v5}, Lcom/google/android/youtube/app/ui/TutorialView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_a

    :cond_30
    move v0, v1

    .line 77
    goto :goto_e

    :cond_32
    move v4, v2

    .line 79
    goto :goto_13

    :cond_34
    move v2, v3

    goto :goto_15

    .line 80
    :cond_36
    const-wide/16 v2, 0x1f4

    goto :goto_1c
.end method
