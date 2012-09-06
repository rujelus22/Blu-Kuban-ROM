.class public Lcom/google/android/apps/plus/views/TypeableAudienceView;
.super Lcom/google/android/apps/plus/views/AudienceView;
.source "TypeableAudienceView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;,
        Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;,
        Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

.field private mEmptyAudienceHint:I

.field private mMaxLines:I

.field mScrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/google/android/apps/plus/views/TypeableAudienceView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attributes"

    .prologue
    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attributes"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 213
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/views/AudienceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 41
    iput v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mMaxLines:I

    .line 215
    sget-object v1, Lcom/google/android/apps/plus/R$styleable;->AudienceView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 217
    .local v0, styledAttributes:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mMaxLines:I

    .line 218
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    return-void
.end method

.method private resizeChipContainerIfNecessary()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    .line 336
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChipContainer:Landroid/view/ViewGroup;

    instance-of v2, v2, Lcom/google/android/apps/plus/views/MultiLineLayout;

    if-nez v2, :cond_8

    .line 348
    :cond_7
    :goto_7
    return-void

    .line 340
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChipContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/google/android/apps/plus/views/MultiLineLayout;

    .line 341
    .local v0, chipContainer:Lcom/google/android/apps/plus/views/MultiLineLayout;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getNumLines()I

    move-result v1

    .line 342
    .local v1, numLines:I
    iget v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mMaxLines:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_32

    iget v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mMaxLines:I

    if-lt v1, v2, :cond_32

    .line 343
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mMaxLines:I

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getHeightForNumLines(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 344
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/MultiLineLayout;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    goto :goto_7

    .line 345
    :cond_32
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v4, :cond_7

    .line 346
    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_7
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 366
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 359
    return-void
.end method

.method public clearText()V
    .registers 3

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->updateEditTextHint()V

    .line 433
    return-void
.end method

.method protected getChipCount()I
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 226
    const v0, 0x7f0300ea

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->inflate(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->addView(Landroid/view/View;)V

    .line 228
    const v0, 0x7f09027b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mScrollView:Landroid/widget/ScrollView;

    .line 229
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/MultiLineLayout;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChipContainer:Landroid/view/ViewGroup;

    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    .line 232
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setThreshold(I)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setDropDownWidth(I)V

    .line 235
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/TypeableAudienceView$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView$1;-><init>(Lcom/google/android/apps/plus/views/TypeableAudienceView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/TypeableAudienceView$2;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView$2;-><init>(Lcom/google/android/apps/plus/views/TypeableAudienceView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    new-instance v1, Lcom/google/android/apps/plus/views/TypeableAudienceView$3;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView$3;-><init>(Lcom/google/android/apps/plus/views/TypeableAudienceView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setAudienceTextViewListener(Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextViewListener;)V

    .line 293
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setImeOptions(I)V

    .line 296
    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->setEmptyAudienceHint(I)V

    .line 297
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "view"

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    sget-object v3, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_AUDIENCE_VIEW_CLICKED:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 383
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChipContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 384
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2d

    .line 385
    sget-boolean v1, Lcom/google/android/apps/plus/views/TypeableAudienceView;->$assertionsDisabled:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChipContainer:Landroid/view/ViewGroup;

    if-eq p1, v1, :cond_22

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 386
    :cond_22
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->requestFocus()Z

    .line 387
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-static {v1}, Lcom/google/android/apps/plus/util/SoftInput;->show(Landroid/view/View;)V

    .line 391
    :goto_2c
    return-void

    .line 389
    :cond_2d
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/views/AudienceView;->onClick(Landroid/view/View;)V

    goto :goto_2c
.end method

.method public onLayout(ZIIII)V
    .registers 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 304
    invoke-super/range {p0 .. p5}, Lcom/google/android/apps/plus/views/AudienceView;->onLayout(ZIIII)V

    .line 305
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->resizeChipContainerIfNecessary()V

    .line 306
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 328
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;

    .line 329
    .local v0, ss:Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/google/android/apps/plus/views/AudienceView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 331
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    iget-object v2, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    iget v2, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->selectionStart:I

    iget v3, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->selectionEnd:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setSelection(II)V

    .line 333
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 313
    invoke-super {p0}, Lcom/google/android/apps/plus/views/AudienceView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 314
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 316
    .local v0, state:Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getText()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->text:Ljava/lang/String;

    .line 317
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    iput v2, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->selectionStart:I

    .line 318
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    iput v2, v0, Lcom/google/android/apps/plus/views/TypeableAudienceView$SavedState;->selectionEnd:I

    .line 320
    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEdited:Z

    .line 374
    return-void
.end method

.method public setAutoCompleteAdapter(Lcom/google/android/apps/plus/fragments/PeopleSearchListAdapter;)V
    .registers 3
    .parameter "adapter"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 352
    return-void
.end method

.method public setEmptyAudienceHint(I)V
    .registers 2
    .parameter "hint"

    .prologue
    .line 409
    iput p1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEmptyAudienceHint:I

    .line 410
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->updateEditTextHint()V

    .line 411
    return-void
.end method

.method protected update()V
    .registers 1

    .prologue
    .line 398
    invoke-super {p0}, Lcom/google/android/apps/plus/views/AudienceView;->update()V

    .line 400
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/TypeableAudienceView;->updateEditTextHint()V

    .line 401
    return-void
.end method

.method updateEditTextHint()V
    .registers 3

    .prologue
    .line 439
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    if-nez v0, :cond_5

    .line 448
    :goto_4
    return-void

    .line 443
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEmptyAudienceHint:I

    if-eqz v0, :cond_19

    .line 444
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    iget v1, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEmptyAudienceHint:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setHint(I)V

    goto :goto_4

    .line 446
    :cond_19
    iget-object v0, p0, Lcom/google/android/apps/plus/views/TypeableAudienceView;->mEditText:Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/TypeableAudienceView$AudienceTextView;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method
