.class public Lcom/android/contacts/editor/TextFieldsEditorView;
.super Lcom/android/contacts/editor/LabeledEditorView;
.source "TextFieldsEditorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    }
.end annotation


# instance fields
.field private mExpansionView:Landroid/widget/ImageView;

.field private mExpansionViewContainer:Landroid/view/View;

.field private mFieldEditTexts:[Landroid/widget/EditText;

.field private mFields:Landroid/view/ViewGroup;

.field private mHasShortAndLongForms:Z

.field private mHideOptional:Z

.field private mMinFieldHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 68
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 68
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/LabeledEditorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 68
    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/TextFieldsEditorView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/contacts/editor/TextFieldsEditorView;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    return p1
.end method

.method private setupExpansionView(ZZ)V
    .registers 5
    .parameter "shouldExist"
    .parameter "collapsed"

    .prologue
    .line 144
    if-eqz p1, :cond_17

    .line 145
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    if-eqz p2, :cond_13

    const v0, 0x7f02017a

    :goto_f
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    :goto_12
    return-void

    .line 146
    :cond_13
    const v0, 0x7f020179

    goto :goto_f

    .line 150
    :cond_17
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12
.end method


# virtual methods
.method public areOptionalFieldsVisible()Z
    .registers 2

    .prologue
    .line 386
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hasShortAndLongForms()Z
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    .line 373
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 374
    iget-object v2, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 375
    .local v0, editText:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 376
    const/4 v2, 0x0

    .line 379
    .end local v0           #editText:Landroid/widget/EditText;
    :goto_1c
    return v2

    .line 373
    .restart local v0       #editText:Landroid/widget/EditText;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 379
    .end local v0           #editText:Landroid/widget/EditText;
    :cond_20
    const/4 v2, 0x1

    goto :goto_1c
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onFinishInflate()V

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDrawingCacheEnabled(Z)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    .line 102
    const v0, 0x7f0d00ce

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    .line 103
    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    .line 104
    const v0, 0x7f0d01d5

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/TextFieldsEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionViewContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/TextFieldsEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/TextFieldsEditorView$1;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 433
    move-object v2, p1

    check-cast v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    .line 434
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    invoke-virtual {v2}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Lcom/android/contacts/editor/LabeledEditorView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 436
    iget-boolean v3, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    iput-boolean v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    .line 438
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v3, v3

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 439
    .local v1, numChildren:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    if-ge v0, v1, :cond_29

    .line 440
    iget-object v3, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v3, v3, v0

    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 439
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 442
    :cond_29
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 7

    .prologue
    .line 414
    invoke-super {p0}, Lcom/android/contacts/editor/LabeledEditorView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    .line 415
    .local v3, superState:Landroid/os/Parcelable;
    new-instance v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;

    invoke-direct {v2, v3}, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 417
    .local v2, ss:Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;
    iget-boolean v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    iput-boolean v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mHideOptional:Z

    .line 419
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-nez v4, :cond_28

    const/4 v1, 0x0

    .line 420
    .local v1, numChildren:I
    :goto_12
    new-array v4, v1, [I

    iput-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    .line 421
    const/4 v0, 0x0

    .local v0, i:I
    :goto_17
    if-ge v0, v1, :cond_2c

    .line 422
    iget-object v4, v2, Lcom/android/contacts/editor/TextFieldsEditorView$SavedState;->mVisibilities:[I

    iget-object v5, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/EditText;->getVisibility()I

    move-result v5

    aput v5, v4, v0

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 419
    .end local v0           #i:I
    .end local v1           #numChildren:I
    :cond_28
    iget-object v4, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v4

    goto :goto_12

    .line 425
    .restart local v0       #i:I
    .restart local v1       #numChildren:I
    :cond_2c
    return-object v2
.end method

.method protected requestFocusForFirstEditField()V
    .registers 8

    .prologue
    .line 156
    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v6, :cond_2a

    iget-object v6, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v6, v6

    if-eqz v6, :cond_2a

    .line 157
    const/4 v3, 0x0

    .line 158
    .local v3, firstField:Landroid/widget/EditText;
    const/4 v0, 0x0

    .line 159
    .local v0, anyFieldHasFocus:Z
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v1, arr$:[Landroid/widget/EditText;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_23

    aget-object v2, v1, v4

    .line 160
    .local v2, editText:Landroid/widget/EditText;
    if-nez v3, :cond_1c

    invoke-virtual {v2}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1c

    .line 161
    move-object v3, v2

    .line 163
    :cond_1c
    invoke-virtual {v2}, Landroid/widget/EditText;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 164
    const/4 v0, 0x1

    .line 168
    .end local v2           #editText:Landroid/widget/EditText;
    :cond_23
    if-nez v0, :cond_2a

    if-eqz v3, :cond_2a

    .line 169
    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 172
    .end local v0           #anyFieldHasFocus:Z
    .end local v1           #arr$:[Landroid/widget/EditText;
    .end local v3           #firstField:Landroid/widget/EditText;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2a
    return-void

    .line 159
    .restart local v0       #anyFieldHasFocus:Z
    .restart local v1       #arr$:[Landroid/widget/EditText;
    .restart local v2       #editText:Landroid/widget/EditText;
    .restart local v3       #firstField:Landroid/widget/EditText;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_f
.end method

.method public setEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/contacts/editor/LabeledEditorView;->setEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    if-eqz v1, :cond_24

    .line 133
    const/4 v0, 0x0

    .local v0, index:I
    :goto_a
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 134
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    aget-object v4, v1, v0

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_22

    if-eqz p1, :cond_22

    move v1, v2

    :goto_1c
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 133
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_22
    move v1, v3

    .line 134
    goto :goto_1c

    .line 137
    .end local v0           #index:I
    :cond_24
    iget-object v1, p0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_32

    if-eqz p1, :cond_32

    :goto_2e
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 138
    return-void

    :cond_32
    move v2, v3

    .line 137
    goto :goto_2e
.end method

.method public setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .registers 31
    .parameter "kind"
    .parameter "entry"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    .line 177
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/editor/LabeledEditorView;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v21, v0

    if-eqz v21, :cond_27

    .line 180
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .local v5, arr$:[Landroid/widget/EditText;
    array-length v0, v5

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_13
    move/from16 v0, v17

    if-ge v14, v0, :cond_27

    aget-object v11, v5, v14

    .line 181
    .local v11, fieldEditText:Landroid/widget/EditText;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 180
    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    .line 184
    .end local v5           #arr$:[Landroid/widget/EditText;
    .end local v11           #fieldEditText:Landroid/widget/EditText;
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_27
    const/4 v13, 0x0

    .line 186
    .local v13, hidePossible:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v10

    .line 187
    .local v10, fieldCount:I
    new-array v0, v10, [Landroid/widget/EditText;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    .line 188
    const/4 v15, 0x0

    .local v15, index:I
    :goto_3d
    if-ge v15, v10, :cond_25b

    .line 189
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountType$EditField;

    .line 190
    .local v9, field:Lcom/android/contacts/model/AccountType$EditField;
    new-instance v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 192
    .local v12, fieldView:Landroid/widget/EditText;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    new-instance v23, Landroid/text/InputFilter$LengthFilter;

    const/16 v24, 0x3e8

    invoke-direct/range {v23 .. v24}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v23, v21, v22

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v21

    if-eqz v21, :cond_d0

    if-eqz p3, :cond_d0

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v21

    if-eqz v21, :cond_d0

    const-string v21, "vnd.sec.contact.sim"

    invoke-virtual/range {p3 .. p3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v22

    const-string v23, "account_type"

    invoke-virtual/range {v22 .. v23}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d0

    .line 201
    const/16 v18, 0x0

    .line 202
    .local v18, length:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "#displayName"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1ad

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNameLength()I

    move-result v18

    .line 251
    :cond_ba
    :goto_ba
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v4, v0, [Landroid/text/InputFilter;

    .line 252
    .local v4, FilterArray:[Landroid/text/InputFilter;
    const/16 v21, 0x0

    new-instance v22, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v22, v4, v21

    .line 253
    invoke-virtual {v12, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 256
    .end local v4           #FilterArray:[Landroid/text/InputFilter;
    .end local v18           #length:I
    :cond_d0
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    invoke-virtual {v9}, Lcom/android/contacts/model/AccountType$EditField;->isMultiLine()Z

    move-result v21

    if-eqz v21, :cond_1e9

    const/16 v21, -0x2

    :goto_dc
    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v21, v0

    if-eqz v21, :cond_1f1

    .line 261
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->minLines:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setMinLines(I)V

    .line 266
    :goto_f9
    const/16 v21, 0x30

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFieldEditTexts:[Landroid/widget/EditText;

    move-object/from16 v21, v0

    aput-object v12, v21, v15

    .line 268
    move-object/from16 v0, p5

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v15}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setId(I)V

    .line 269
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v21, v0

    if-lez v21, :cond_128

    .line 270
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->titleRes:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 272
    :cond_128
    iget v0, v9, Lcom/android/contacts/model/AccountType$EditField;->inputType:I

    move/from16 v16, v0

    .line 273
    .local v16, inputType:I
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 276
    iget-object v6, v9, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 277
    .local v6, column:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 279
    .local v19, value:Ljava/lang/String;
    const-string v8, ""

    .line 280
    .local v8, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 281
    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_155

    const-string v21, "iw"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_155

    .line 286
    :cond_155
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 291
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setDeleteButtonVisible(Z)V

    .line 294
    new-instance v21, Lcom/android/contacts/editor/TextFieldsEditorView$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v6}, Lcom/android/contacts/editor/TextFieldsEditorView$3;-><init>(Lcom/android/contacts/editor/TextFieldsEditorView;Landroid/widget/EditText;Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_1fe

    if-nez p4, :cond_1fe

    const/16 v21, 0x1

    :goto_17b
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 314
    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->shortForm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_205

    .line 315
    const/4 v13, 0x1

    .line 316
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 317
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v21, v0

    if-eqz v21, :cond_202

    const/16 v21, 0x0

    :goto_199
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 345
    :goto_19e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mFields:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 188
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3d

    .line 204
    .end local v6           #column:Ljava/lang/String;
    .end local v8           #currentLang:Ljava/lang/String;
    .end local v16           #inputType:I
    .end local v19           #value:Ljava/lang/String;
    .restart local v18       #length:I
    :cond_1ad
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "vnd.android.cursor.item/phone_v2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1cb

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v18

    goto/16 :goto_ba

    .line 206
    :cond_1cb
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_ba

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/LabeledEditorView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v18

    goto/16 :goto_ba

    .line 256
    .end local v18           #length:I
    :cond_1e9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v21, v0

    goto/16 :goto_dc

    .line 263
    :cond_1f1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mMinFieldHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setMinHeight(I)V

    goto/16 :goto_f9

    .line 312
    .restart local v6       #column:Ljava/lang/String;
    .restart local v8       #currentLang:Ljava/lang/String;
    .restart local v16       #inputType:I
    .restart local v19       #value:Ljava/lang/String;
    :cond_1fe
    const/16 v21, 0x0

    goto/16 :goto_17b

    .line 317
    :cond_202
    const/16 v21, 0x8

    goto :goto_199

    .line 318
    :cond_205
    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->longForm:Z

    move/from16 v21, v0

    if-eqz v21, :cond_228

    .line 333
    const/4 v13, 0x1

    .line 334
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/TextFieldsEditorView;->mHasShortAndLongForms:Z

    .line 335
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v21, v0

    if-eqz v21, :cond_225

    const/16 v21, 0x8

    :goto_21e
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    goto/16 :goto_19e

    :cond_225
    const/16 v21, 0x0

    goto :goto_21e

    .line 339
    :cond_228
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_251

    iget-boolean v0, v9, Lcom/android/contacts/model/AccountType$EditField;->optional:Z

    move/from16 v21, v0

    if-eqz v21, :cond_251

    const/4 v7, 0x1

    .line 340
    .local v7, couldHide:Z
    :goto_235
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v21, v0

    if-eqz v21, :cond_253

    if-eqz v7, :cond_253

    const/16 v20, 0x1

    .line 341
    .local v20, willHide:Z
    :goto_241
    if-eqz v20, :cond_256

    const/16 v21, 0x8

    :goto_245
    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/widget/EditText;->setVisibility(I)V

    .line 342
    if-nez v13, :cond_24e

    if-eqz v7, :cond_259

    :cond_24e
    const/4 v13, 0x1

    :goto_24f
    goto/16 :goto_19e

    .line 339
    .end local v7           #couldHide:Z
    .end local v20           #willHide:Z
    :cond_251
    const/4 v7, 0x0

    goto :goto_235

    .line 340
    .restart local v7       #couldHide:Z
    :cond_253
    const/16 v20, 0x0

    goto :goto_241

    .line 341
    .restart local v20       #willHide:Z
    :cond_256
    const/16 v21, 0x0

    goto :goto_245

    .line 342
    :cond_259
    const/4 v13, 0x0

    goto :goto_24f

    .line 349
    .end local v6           #column:Ljava/lang/String;
    .end local v7           #couldHide:Z
    .end local v8           #currentLang:Ljava/lang/String;
    .end local v9           #field:Lcom/android/contacts/model/AccountType$EditField;
    .end local v12           #fieldView:Landroid/widget/EditText;
    .end local v16           #inputType:I
    .end local v19           #value:Ljava/lang/String;
    .end local v20           #willHide:Z
    :cond_25b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mHideOptional:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v13, v1}, Lcom/android/contacts/editor/TextFieldsEditorView;->setupExpansionView(ZZ)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/TextFieldsEditorView;->mExpansionView:Landroid/widget/ImageView;

    move-object/from16 v22, v0

    if-nez p4, :cond_280

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/TextFieldsEditorView;->isEnabled()Z

    move-result v21

    if-eqz v21, :cond_280

    const/16 v21, 0x1

    :goto_278
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 351
    return-void

    .line 350
    :cond_280
    const/16 v21, 0x0

    goto :goto_278
.end method
