.class public Lcom/swype/android/widget/HorizontalChoiceViewContainer;
.super Landroid/widget/LinearLayout;
.source "HorizontalChoiceViewContainer.java"


# instance fields
.field private availableWidth:I

.field private choiceListOffsetX:I

.field private containerWidth:I

.field public isAddWordQuery:Z

.field public isTipShownInHWCL:Z

.field private mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;


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
.method public getChoiceView()Lcom/swype/android/widget/HorizontalChoiceView;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    return-object v0
.end method

.method public initViews(Lcom/swype/android/inputmethod/SwypeInputMethod;IIILcom/swype/android/jni/SwypeCore;)V
    .registers 9
    .parameter "ime"
    .parameter "width"
    .parameter "container_width"
    .parameter "choiceListOffsetX"
    .parameter "core"

    .prologue
    .line 41
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    if-nez v2, :cond_23

    .line 42
    invoke-virtual {p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    .line 43
    .local v0, app:Lcom/swype/android/inputmethod/SwypeApplication;
    new-instance v1, Lcom/swype/android/widget/HwclTheme;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/swype/android/widget/HwclTheme;-><init>(Lcom/swype/android/jni/SwypeCore;)V

    .line 44
    .local v1, theme:Lcom/swype/android/widget/HwclTheme;
    const v2, 0x7f0d0002

    invoke-virtual {p0, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/swype/android/widget/HorizontalChoiceView;

    iput-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    .line 45
    iget-object v2, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v2, p0, p1, v1, p5}, Lcom/swype/android/widget/HorizontalChoiceView;->setIME(Lcom/swype/android/widget/HorizontalChoiceViewContainer;Lcom/swype/android/widget/HorizontalViewClickListener;Lcom/swype/android/widget/HwclTheme;Lcom/swype/android/jni/SwypeCore;)V

    .line 47
    .end local v0           #app:Lcom/swype/android/inputmethod/SwypeApplication;
    .end local v1           #theme:Lcom/swype/android/widget/HwclTheme;
    :cond_23
    iput p2, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->availableWidth:I

    .line 48
    iput p3, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->containerWidth:I

    .line 49
    iput p4, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->choiceListOffsetX:I

    .line 50
    return-void
.end method

.method public requestLayout()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    if-eqz v0, :cond_1f

    .line 91
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->availableWidth:I

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/HorizontalChoiceView;->setChoiceWidth(I)V

    .line 92
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->containerWidth:I

    iget v1, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->availableWidth:I

    if-ne v0, v1, :cond_23

    .line 93
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->choiceListOffsetX:I

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setPadding(IIII)V

    .line 94
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/swype/android/widget/HorizontalChoiceView;->setPadding(IIII)V

    .line 95
    invoke-virtual {p0, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setBackgroundColor(I)V

    .line 103
    :cond_1f
    :goto_1f
    invoke-super {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 104
    return-void

    .line 98
    :cond_23
    iget v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->choiceListOffsetX:I

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setPadding(IIII)V

    .line 100
    const v0, -0x777778

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setBackgroundColor(I)V

    goto :goto_1f
.end method

.method public setChoiceListOffsetX(I)V
    .registers 2
    .parameter "choiceListOffsetX"

    .prologue
    .line 61
    iput p1, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->choiceListOffsetX:I

    .line 62
    return-void
.end method

.method public setChoiceListWidth(I)V
    .registers 2
    .parameter "choiceListWidth"

    .prologue
    .line 53
    iput p1, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->availableWidth:I

    .line 54
    return-void
.end method

.method public setContainerWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 71
    iput p1, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->containerWidth:I

    .line 72
    return-void
.end method

.method public setListOfWords(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, words:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .local p2, properties:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    if-eqz v0, :cond_9

    .line 81
    iget-object v0, p0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->mChoiceView:Lcom/swype/android/widget/HorizontalChoiceView;

    invoke-virtual {v0, p1, p2}, Lcom/swype/android/widget/HorizontalChoiceView;->setListOfWords(Ljava/util/List;Ljava/util/List;)V

    .line 83
    :cond_9
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->requestLayout()V

    .line 84
    invoke-virtual {p0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->invalidate()V

    .line 85
    return-void
.end method
