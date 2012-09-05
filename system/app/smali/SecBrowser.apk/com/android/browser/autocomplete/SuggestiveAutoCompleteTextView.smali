.class public Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;
.super Landroid/widget/EditText;
.source "SuggestiveAutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;,
        Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;,
        Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;,
        Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$DropDownItemClickListener;,
        Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$MyWatcher;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/browser/SuggestionsAdapter;

.field private mBlockCompletion:Z

.field private mController:Lcom/android/browser/autocomplete/SuggestedTextController;

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastKeyCode:I

.field private mObserver:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

.field private mPassThroughClickListener:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 98
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput-boolean v4, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 80
    iput v5, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mLastKeyCode:I

    .line 87
    iput-boolean v4, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 106
    new-instance v2, Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lcom/android/browser/autocomplete/SuggestedTextController;-><init>(Landroid/widget/EditText;I)V

    iput-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    .line 107
    new-instance v2, Landroid/widget/ListPopupWindow;

    const v3, 0x101006b

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 109
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 110
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v4}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 112
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mThreshold:I

    .line 118
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    .line 119
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 121
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 128
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mDropDownAnchorId:I

    .line 133
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 136
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 140
    const v2, 0x109009a

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mHintResource:I

    .line 143
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v3, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v3, p0, v6}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 144
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getInputType()I

    move-result v1

    .line 149
    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v4, :cond_a7

    .line 151
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->setRawInputType(I)V

    .line 155
    :cond_a7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    invoke-virtual {p0, v4}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->setFocusable(Z)V

    .line 159
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    new-instance v3, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$MyWatcher;

    invoke-direct {v3, p0, v6}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$MyWatcher;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;)V

    invoke-virtual {v2, v3}, Lcom/android/browser/autocomplete/SuggestedTextController;->addUserTextChangeWatcher(Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;)V

    .line 161
    new-instance v2, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v6}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;)V

    iput-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPassThroughClickListener:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;

    .line 162
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPassThroughClickListener:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Landroid/view/View;IJ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;)Lcom/android/browser/SuggestionsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/SuggestionsAdapter;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->updateText(Lcom/android/browser/SuggestionsAdapter;)V

    return-void
.end method

.method private buildImeCompletions()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 660
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    .line 661
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_44

    .line 662
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 663
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_44

    .line 664
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 665
    .local v2, count:I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 666
    .local v1, completions:[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 668
    .local v8, realCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v2, :cond_39

    .line 669
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_36

    .line 670
    add-int/lit8 v8, v8, 0x1

    .line 671
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 672
    .local v7, item:Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 673
    .local v4, id:J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v4, v5, v3, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v1, v3

    .line 668
    .end local v4           #id:J
    .end local v7           #item:Ljava/lang/Object;
    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 678
    :cond_39
    if-eq v8, v2, :cond_41

    .line 679
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    .line 680
    .local v9, tmp:[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    move-object v1, v9

    .line 684
    .end local v9           #tmp:[Landroid/view/inputmethod/CompletionInfo;
    :cond_41
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 687
    .end local v1           #completions:[Landroid/view/inputmethod/CompletionInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v6           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v8           #realCount:I
    :cond_44
    return-void
.end method

.method private clearListSelection()V
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->clearListSelection()V

    .line 421
    return-void
.end method

.method private enoughToFilter()Z
    .registers 3

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private ensureImeVisible(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 636
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 638
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->showDropDown()V

    .line 639
    return-void

    .line 636
    :cond_c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method private onClickImpl()V
    .registers 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->ensureImeVisible(Z)V

    .line 179
    :cond_a
    return-void
.end method

.method private performCompletion()V
    .registers 5

    .prologue
    .line 460
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 461
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .registers 13
    .parameter "selectedView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 477
    if-gez p2, :cond_18

    .line 478
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    .line 482
    :goto_e
    if-nez v7, :cond_1f

    .line 483
    const-string v0, "SuggestiveAutoCompleteTextView"

    const-string v1, "performCompletion: no selected item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_17
    :goto_17
    return-void

    .line 480
    :cond_18
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v0, p2}, Lcom/android/browser/SuggestionsAdapter;->getItem(I)Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v7

    .local v7, selectedItem:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    goto :goto_e

    .line 487
    .end local v7           #selectedItem:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mBlockCompletion:Z

    .line 488
    invoke-virtual {p0, v7}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 489
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mBlockCompletion:Z

    .line 491
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_4e

    .line 492
    iget-object v6, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    .line 494
    .local v6, list:Landroid/widget/ListPopupWindow;
    if-eqz p1, :cond_36

    if-gez p2, :cond_42

    .line 495
    :cond_36
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 496
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 497
    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 499
    :cond_42
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 503
    .end local v6           #list:Landroid/widget/ListPopupWindow;
    :cond_4e
    iget-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_17

    .line 504
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    goto :goto_17
.end method

.method private performValidation()V
    .registers 1

    .prologue
    .line 690
    return-void
.end method

.method private setCompletionHint(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "hint"

    .prologue
    const/4 v3, 0x0

    .line 191
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 192
    if-eqz p1, :cond_33

    .line 193
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_2d

    .line 194
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    .local v0, hintView:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 198
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 206
    .end local v0           #hintView:Landroid/widget/TextView;
    :goto_2c
    return-void

    .line 200
    :cond_2d
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 203
    :cond_33
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 204
    iput-object v3, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    goto :goto_2c
.end method

.method private updateDropDownForFilter(I)V
    .registers 5
    .parameter "count"

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getWindowVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_9

    .line 554
    :cond_8
    :goto_8
    return-void

    .line 541
    :cond_9
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 542
    .local v0, dropDownAlwaysVisible:Z
    if-gtz p1, :cond_13

    if-eqz v0, :cond_37

    :cond_13
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getUserText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_37

    .line 544
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v1, :cond_8

    .line 545
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->showDropDown()V

    goto :goto_8

    .line 547
    :cond_37
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 548
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    .line 552
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopupCanBeUpdated:Z

    goto :goto_8
.end method

.method private updateText(Lcom/android/browser/SuggestionsAdapter;)V
    .registers 6
    .parameter "adapter"

    .prologue
    .line 755
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->useInstantSearch()Z

    move-result v2

    if-nez v2, :cond_b

    .line 773
    :cond_a
    :goto_a
    return-void

    .line 759
    :cond_b
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-nez v2, :cond_16

    .line 760
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->setSuggestedText(Ljava/lang/String;)V

    goto :goto_a

    .line 764
    :cond_16
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v2}, Lcom/android/browser/SuggestionsAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 765
    const/4 v1, 0x0

    .local v1, i:I
    :goto_29
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v2}, Lcom/android/browser/SuggestionsAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 766
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v2, v1}, Lcom/android/browser/SuggestionsAdapter;->getItem(I)Lcom/android/browser/SuggestionsAdapter$SuggestItem;

    move-result-object v0

    .line 767
    .local v0, current:Lcom/android/browser/SuggestionsAdapter$SuggestItem;
    iget v2, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_42

    .line 768
    iget-object v2, v0, Lcom/android/browser/SuggestionsAdapter$SuggestItem;->title:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->setSuggestedText(Ljava/lang/String;)V

    goto :goto_a

    .line 765
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method


# virtual methods
.method public addQueryTextWatcher(Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;)V
    .registers 3
    .parameter "watcher"

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController;->addUserTextChangeWatcher(Lcom/android/browser/autocomplete/SuggestedTextController$TextChangeWatcher;)V

    .line 833
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "selectedItem"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected dismissDropDown()V
    .registers 3

    .prologue
    .line 610
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 611
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_a

    .line 612
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 614
    :cond_a
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 615
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 616
    return-void
.end method

.method doAfterTextChanged()V
    .registers 3

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_5

    .line 392
    :cond_4
    :goto_4
    return-void

    .line 376
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 377
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 379
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getUserText()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    .line 380
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->buildImeCompletions()V

    goto :goto_4

    .line 385
    :cond_1f
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 386
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    .line 388
    :cond_2a
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    .line 389
    const/4 v0, 0x0

    iget v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_4
.end method

.method protected getDropDownHorizontalOffset()I
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method protected getDropDownWidth()I
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method public getPopupDrawableRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "rect"

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 846
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 848
    :cond_11
    return-void
.end method

.method public getUserText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->getUserText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPopupShowing()Z
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 597
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 598
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 4
    .parameter "completion"

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mBlockCompletion:Z

    .line 467
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mBlockCompletion:Z

    .line 470
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->performItemClick(I)Z

    .line 472
    :cond_1c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    .line 603
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 604
    return-void
.end method

.method protected onDisplayHint(I)V
    .registers 3
    .parameter "hint"

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 567
    packed-switch p1, :pswitch_data_14

    .line 574
    :cond_6
    :goto_6
    return-void

    .line 569
    :pswitch_7
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 570
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    goto :goto_6

    .line 567
    nop

    :pswitch_data_14
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .registers 2
    .parameter "count"

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 528
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->suspendCursorMovementHandling()V

    .line 583
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 585
    if-nez p1, :cond_d

    .line 586
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performValidation()V

    .line 588
    :cond_d
    if-nez p1, :cond_1a

    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 589
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    .line 592
    :cond_1a
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->resumeCursorMovementHandlingAndApplyChanges()V

    .line 593
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 311
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 336
    :cond_9
    :goto_9
    return v0

    .line 315
    :cond_a
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_13

    .line 316
    packed-switch p1, :pswitch_data_42

    .line 324
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_23

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_9

    .line 328
    :cond_23
    iput p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mLastKeyCode:I

    .line 329
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 330
    .local v0, handled:Z
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mLastKeyCode:I

    .line 332
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 333
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->clearListSelection()V

    goto :goto_9

    .line 318
    .end local v0           #handled:Z
    :pswitch_38
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 319
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performValidation()V

    goto :goto_13

    .line 316
    :pswitch_data_42
    .packed-switch 0x14
        :pswitch_38
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 259
    const/4 v2, 0x4

    if-ne p1, v2, :cond_47

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v2

    if-nez v2, :cond_47

    .line 263
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_28

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_28

    .line 264
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 265
    .local v0, state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_27

    .line 266
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 280
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_27
    :goto_27
    return v1

    .line 269
    :cond_28
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_47

    .line 270
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 271
    .restart local v0       #state:Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_37

    .line 272
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 274
    :cond_37
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_47

    .line 275
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    goto :goto_27

    .line 280
    .end local v0           #state:Landroid/view/KeyEvent$DispatcherState;
    :cond_47
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_27
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 285
    iget-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, p1, p2}, Landroid/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 286
    .local v0, consumed:Z
    if-eqz v0, :cond_c

    .line 287
    sparse-switch p1, :sswitch_data_30

    .line 301
    :cond_c
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2a

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_2a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 302
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performCompletion()V

    .line 306
    :cond_1f
    :goto_1f
    return v1

    .line 294
    :sswitch_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 295
    invoke-direct {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->performCompletion()V

    goto :goto_1f

    .line 306
    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1f

    .line 287
    nop

    :sswitch_data_30
    .sparse-switch
        0x17 -> :sswitch_20
        0x3d -> :sswitch_20
        0x42 -> :sswitch_20
    .end sparse-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v0, p1}, Lcom/android/browser/autocomplete/SuggestedTextController;->restoreInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/EditText;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 829
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 815
    invoke-super {p0}, Landroid/widget/EditText;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 816
    .local v0, superState:Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/widget/TextView$SavedState;

    if-eqz v1, :cond_e

    .line 818
    check-cast v0, Landroid/widget/TextView$SavedState;

    .end local v0           #superState:Landroid/os/Parcelable;
    invoke-virtual {v0}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    .line 820
    .restart local v0       #superState:Landroid/os/Parcelable;
    :cond_e
    if-nez v0, :cond_12

    .line 821
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    .line 823
    :cond_12
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v1, v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->saveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3
    .parameter "hasWindowFocus"

    .prologue
    .line 558
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 559
    if-nez p1, :cond_10

    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_10

    .line 560
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->dismissDropDown()V

    .line 562
    :cond_10
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 438
    return-void
.end method

.method protected performForcedFiltering()V
    .registers 4

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, wasSuspended:Z
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v1}, Lcom/android/browser/autocomplete/SuggestedTextController;->isCursorHandlingSuspended()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 443
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v1}, Lcom/android/browser/autocomplete/SuggestedTextController;->resumeCursorMovementHandlingAndApplyChanges()V

    .line 444
    const/4 v0, 0x1

    .line 447
    :cond_f
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getUserText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 449
    if-eqz v0, :cond_23

    .line 450
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v1}, Lcom/android/browser/autocomplete/SuggestedTextController;->suspendCursorMovementHandling()V

    .line 452
    :cond_23
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "text"

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->clearComposingText()V

    .line 518
    invoke-virtual {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 520
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 521
    .local v0, spannable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 522
    return-void
.end method

.method public setAdapter(Lcom/android/browser/SuggestionsAdapter;)V
    .registers 5
    .parameter "adapter"

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mObserver:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_27

    .line 242
    new-instance v0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$1;)V

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mObserver:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    .line 246
    :cond_c
    :goto_c
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    .line 247
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    if-eqz v0, :cond_33

    .line 248
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v0}, Lcom/android/browser/SuggestionsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 249
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mObserver:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    invoke-virtual {p1, v0}, Lcom/android/browser/SuggestionsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 254
    :goto_1f
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    return-void

    .line 243
    :cond_27
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    if-eqz v0, :cond_c

    .line 244
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mAdapter:Lcom/android/browser/SuggestionsAdapter;

    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mObserver:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PopupDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/browser/SuggestionsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_c

    .line 251
    :cond_33
    iput-object v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1f
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3
    .parameter "offset"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 222
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 3
    .parameter "width"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 214
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 620
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 622
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 623
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->showDropDown()V

    .line 626
    :cond_d
    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPassThroughClickListener:Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;

    #setter for: Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;->access$302(Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 168
    return-void
.end method

.method protected setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 238
    return-void
.end method

.method public setSuggestedText(Ljava/lang/String;)V
    .registers 5
    .parameter "text"

    .prologue
    .line 836
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 837
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, htmlStripped:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v1, v0}, Lcom/android/browser/autocomplete/SuggestedTextController;->setSuggestedText(Ljava/lang/String;)V

    .line 842
    .end local v0           #htmlStripped:Ljava/lang/String;
    :goto_13
    return-void

    .line 840
    :cond_14
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/browser/autocomplete/SuggestedTextController;->setSuggestedText(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .registers 6
    .parameter "text"
    .parameter "type"

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 778
    .local v0, buffer:Landroid/text/Editable;
    if-nez p1, :cond_8

    const-string p1, ""

    .line 781
    :cond_8
    if-nez v0, :cond_e

    .line 782
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 787
    :goto_d
    return-void

    .line 784
    :cond_e
    const/4 v1, 0x0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 785
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->invalidate()V

    goto :goto_d
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .registers 5
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 790
    if-eqz p2, :cond_6

    .line 791
    invoke-virtual {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 811
    :goto_5
    return-void

    .line 793
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mBlockCompletion:Z

    .line 798
    const/4 v0, 0x0

    .line 799
    .local v0, wasSuspended:Z
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v1}, Lcom/android/browser/autocomplete/SuggestedTextController;->isCursorHandlingSuspended()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 800
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v1}, Lcom/android/browser/autocomplete/SuggestedTextController;->resumeCursorMovementHandlingAndApplyChanges()V

    .line 801
    const/4 v0, 0x1

    .line 804
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    if-eqz v0, :cond_22

    .line 807
    iget-object v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mController:Lcom/android/browser/autocomplete/SuggestedTextController;

    invoke-virtual {v1}, Lcom/android/browser/autocomplete/SuggestedTextController;->suspendCursorMovementHandling()V

    .line 809
    :cond_22
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_5
.end method

.method public setThreshold(I)V
    .registers 2
    .parameter "threshold"

    .prologue
    .line 229
    if-gtz p1, :cond_3

    .line 230
    const/4 p1, 0x1

    .line 233
    :cond_3
    iput p1, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mThreshold:I

    .line 234
    return-void
.end method

.method protected showDropDown()V
    .registers 4

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 646
    iget v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2e

    .line 647
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 652
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_28

    .line 654
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 656
    :cond_28
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 657
    return-void

    .line 649
    :cond_2e
    iget-object v0, p0, Lcom/android/browser/autocomplete/SuggestiveAutoCompleteTextView;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_1c
.end method
