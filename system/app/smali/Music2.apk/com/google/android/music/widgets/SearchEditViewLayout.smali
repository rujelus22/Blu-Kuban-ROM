.class public Lcom/google/android/music/widgets/SearchEditViewLayout;
.super Landroid/widget/RelativeLayout;
.source "SearchEditViewLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHintView:[Landroid/view/View;

.field private final mMaxWidth:I

.field private mSearchClearButton:Landroid/view/View;

.field private mSearchField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    sget-object v1, Lcom/google/android/music/R$styleable;->MaxSize:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 32
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mMaxWidth:I

    .line 33
    return-void
.end method

.method private static setVisibility([Landroid/view/View;I)V
    .registers 6
    .parameter "views"
    .parameter "visibility"

    .prologue
    .line 64
    move-object v0, p0

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_3
    if-ge v1, v2, :cond_d

    aget-object v3, v0, v1

    .line 65
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 67
    .end local v3           #view:Landroid/view/View;
    :cond_d
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5
    .parameter "s"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 54
    if-eqz p1, :cond_a

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 55
    :cond_a
    iget-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mHintView:[Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/android/music/widgets/SearchEditViewLayout;->setVisibility([Landroid/view/View;I)V

    .line 56
    iget-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchClearButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :goto_14
    return-void

    .line 58
    :cond_15
    iget-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mHintView:[Landroid/view/View;

    invoke-static {v0, v2}, Lcom/google/android/music/widgets/SearchEditViewLayout;->setVisibility([Landroid/view/View;I)V

    .line 59
    iget-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchClearButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_14
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 48
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 70
    iget-object v1, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchClearButton:Landroid/view/View;

    if-ne p1, v1, :cond_23

    .line 71
    iget-object v1, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchField:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 73
    invoke-virtual {p0}, Lcom/google/android/music/widgets/SearchEditViewLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_23

    .line 77
    iget-object v1, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchField:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 80
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_23
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f1000ce

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/SearchEditViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f1000cf

    invoke-virtual {p0, v2}, Lcom/google/android/music/widgets/SearchEditViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mHintView:[Landroid/view/View;

    .line 40
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/SearchEditViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchField:Landroid/widget/EditText;

    .line 41
    iget-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 43
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/SearchEditViewLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchClearButton:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mSearchClearButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method

.method protected onMeasure(II)V
    .registers 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, -0x8000

    .line 84
    iget v2, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mMaxWidth:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 86
    .local v0, currWidthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 87
    .local v1, currWidthSize:I
    sparse-switch v0, :sswitch_data_34

    .line 104
    .end local v0           #currWidthMode:I
    .end local v1           #currWidthSize:I
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 105
    return-void

    .line 89
    .restart local v0       #currWidthMode:I
    .restart local v1       #currWidthSize:I
    :sswitch_16
    iget v2, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mMaxWidth:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 91
    goto :goto_12

    .line 93
    :sswitch_21
    iget v2, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mMaxWidth:I

    if-le v1, v2, :cond_12

    .line 94
    iget v2, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mMaxWidth:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_12

    .line 99
    :sswitch_2c
    iget v2, p0, Lcom/google/android/music/widgets/SearchEditViewLayout;->mMaxWidth:I

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_12

    .line 87
    nop

    :sswitch_data_34
    .sparse-switch
        -0x80000000 -> :sswitch_16
        0x0 -> :sswitch_2c
        0x40000000 -> :sswitch_21
    .end sparse-switch
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 51
    return-void
.end method
