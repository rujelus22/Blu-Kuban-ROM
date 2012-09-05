.class public Lcom/android/inputmethod/latin/CandidateViewContainer;
.super Landroid/widget/LinearLayout;
.source "CandidateViewContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mButtonLeft:Landroid/view/View;

.field private mButtonLeftLayout:Landroid/view/View;

.field private mButtonRight:Landroid/view/View;

.field private mButtonRightLayout:Landroid/view/View;

.field private mCandidates:Lcom/android/inputmethod/latin/CandidateView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "screen"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mCandidates:Lcom/android/inputmethod/latin/CandidateView;

    if-nez v0, :cond_45

    .line 42
    const v0, 0x7f0f0012

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonLeftLayout:Landroid/view/View;

    .line 43
    const v0, 0x7f0f0013

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonLeft:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonLeft:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 45
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonLeft:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 47
    :cond_1f
    const v0, 0x7f0f0015

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonRightLayout:Landroid/view/View;

    .line 48
    const v0, 0x7f0f0016

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonRight:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonRight:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 50
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonRight:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52
    :cond_3a
    const v0, 0x7f0f0014

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/CandidateView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mCandidates:Lcom/android/inputmethod/latin/CandidateView;

    .line 54
    :cond_45
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "v"
    .parameter "event"

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_f

    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonRight:Landroid/view/View;

    if-ne p1, v0, :cond_11

    .line 77
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mCandidates:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->scrollNext()V

    .line 82
    :cond_f
    :goto_f
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_11
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonLeft:Landroid/view/View;

    if-ne p1, v0, :cond_f

    .line 79
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mCandidates:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/CandidateView;->scrollPrev()V

    goto :goto_f
.end method

.method public requestLayout()V
    .registers 10

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 58
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mCandidates:Lcom/android/inputmethod/latin/CandidateView;

    if-eqz v6, :cond_38

    .line 59
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mCandidates:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView;->getWidth()I

    move-result v0

    .line 60
    .local v0, availableWidth:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mCandidates:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView;->computeHorizontalScrollRange()I

    move-result v2

    .line 61
    .local v2, neededWidth:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mCandidates:Lcom/android/inputmethod/latin/CandidateView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v4

    .line 62
    .local v4, x:I
    if-lez v4, :cond_3c

    move v1, v3

    .line 63
    .local v1, leftVisible:Z
    :goto_1d
    add-int v6, v4, v0

    if-ge v6, v2, :cond_3e

    .line 64
    .local v3, rightVisible:Z
    :goto_21
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonLeftLayout:Landroid/view/View;

    if-eqz v6, :cond_2d

    .line 65
    iget-object v8, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonLeftLayout:Landroid/view/View;

    if-eqz v1, :cond_40

    move v6, v5

    :goto_2a
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 67
    :cond_2d
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonRightLayout:Landroid/view/View;

    if-eqz v6, :cond_38

    .line 68
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateViewContainer;->mButtonRightLayout:Landroid/view/View;

    if-eqz v3, :cond_42

    :goto_35
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .end local v0           #availableWidth:I
    .end local v1           #leftVisible:Z
    .end local v2           #neededWidth:I
    .end local v3           #rightVisible:Z
    .end local v4           #x:I
    :cond_38
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 72
    return-void

    .restart local v0       #availableWidth:I
    .restart local v2       #neededWidth:I
    .restart local v4       #x:I
    :cond_3c
    move v1, v5

    .line 62
    goto :goto_1d

    .restart local v1       #leftVisible:Z
    :cond_3e
    move v3, v5

    .line 63
    goto :goto_21

    .restart local v3       #rightVisible:Z
    :cond_40
    move v6, v7

    .line 65
    goto :goto_2a

    :cond_42
    move v5, v7

    .line 68
    goto :goto_35
.end method
