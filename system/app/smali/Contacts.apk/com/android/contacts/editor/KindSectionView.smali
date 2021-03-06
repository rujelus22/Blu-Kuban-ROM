.class public Lcom/android/contacts/editor/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"

# interfaces
.implements Lcom/android/contacts/editor/Editor$EditorListener;


# instance fields
.field private mAddContainer:Landroid/view/View;

.field private mEditors:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKind:Lcom/android/contacts/model/DataKind;

.field private mReadOnly:Z

.field private mState:Lcom/android/contacts/model/EntityDelta;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleString:Ljava/lang/String;

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/KindSectionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method private createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;
    .registers 12
    .parameter "entry"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 231
    :try_start_2
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget v2, v2, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_64

    move-result-object v7

    .line 239
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->isEnabled()Z

    move-result v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 241
    instance-of v1, v7, Lcom/android/contacts/editor/Editor;

    if-eqz v1, :cond_5e

    move-object v0, v7

    .line 242
    check-cast v0, Lcom/android/contacts/editor/Editor;

    .line 243
    .local v0, editor:Lcom/android/contacts/editor/Editor;
    invoke-interface {v0, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 244
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-boolean v4, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    iget-object v5, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/contacts/editor/Editor;->setValues(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V

    .line 245
    invoke-interface {v0, p0}, Lcom/android/contacts/editor/Editor;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 246
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 247
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v1, :cond_9e

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    if-eqz v1, :cond_9e

    const-string v1, "vnd.sec.contact.sim"

    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 250
    invoke-interface {v0, v9}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    .line 258
    .end local v0           #editor:Lcom/android/contacts/editor/Editor;
    :cond_5e
    :goto_5e
    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    return-object v7

    .line 232
    .end local v7           #view:Landroid/view/View;
    :catch_64
    move-exception v6

    .line 233
    .local v6, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot allocate editor with layout resource ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget v3, v3, Lcom/android/contacts/model/DataKind;->editorLayoutResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for MIME type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v3, v3, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v0       #editor:Lcom/android/contacts/editor/Editor;
    .restart local v7       #view:Landroid/view/View;
    :cond_9e
    invoke-interface {v0, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto :goto_5e

    .line 255
    :cond_a2
    invoke-interface {v0, v8}, Lcom/android/contacts/editor/Editor;->setDeletable(Z)V

    goto :goto_5e
.end method

.method private isEmptyNoop(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 266
    invoke-virtual {p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isNoop()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    .line 273
    :goto_8
    return v4

    .line 267
    :cond_9
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    .line 268
    .local v1, fieldCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    if-ge v2, v1, :cond_2f

    .line 269
    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountType$EditField;

    iget-object v0, v4, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 270
    .local v0, column:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    move v4, v5

    goto :goto_8

    .line 268
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 273
    .end local v0           #column:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x1

    goto :goto_8
.end method

.method private updateSectionVisible()V
    .registers 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setVisibility(I)V

    .line 278
    return-void

    .line 277
    :cond_b
    const/16 v0, 0x8

    goto :goto_7
.end method


# virtual methods
.method public addItem()V
    .registers 5

    .prologue
    .line 390
    const/4 v1, 0x0

    .line 392
    .local v1, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v2, v2, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v2, :cond_f

    .line 393
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 428
    :goto_e
    return-void

    .line 408
    :cond_f
    if-nez v1, :cond_19

    .line 409
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v2, v3}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 412
    :cond_19
    invoke-direct {p0, v1}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;

    move-result-object v0

    .line 413
    .local v0, newField:Landroid/view/View;
    new-instance v2, Lcom/android/contacts/editor/KindSectionView$2;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/editor/KindSectionView$2;-><init>(Lcom/android/contacts/editor/KindSectionView;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/KindSectionView;->post(Ljava/lang/Runnable;)Z

    .line 424
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 427
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    goto :goto_e
.end method

.method public getEditorCount()I
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getKind()Lcom/android/contacts/model/DataKind;
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 4

    .prologue
    .line 369
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 370
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 371
    .local v1, view:Landroid/view/View;
    check-cast v1, Lcom/android/contacts/editor/Editor;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/contacts/editor/Editor;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_19

    .line 372
    const/4 v2, 0x0

    .line 375
    :goto_18
    return v2

    .line 369
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 375
    :cond_1c
    const/4 v2, 0x1

    goto :goto_18
.end method

.method public onDeleteRequested(Lcom/android/contacts/editor/Editor;)V
    .registers 2
    .parameter "editor"

    .prologue
    .line 151
    invoke-interface {p1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 154
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setDrawingCacheEnabled(Z)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    const v0, 0x7f0d0176

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0d01b2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 124
    const v0, 0x7f0d0177

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    new-instance v1, Lcom/android/contacts/editor/KindSectionView$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/KindSectionView$1;-><init>(Lcom/android/contacts/editor/KindSectionView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method

.method public onRequest(I)V
    .registers 3
    .parameter "request"

    .prologue
    .line 160
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 161
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 163
    :cond_9
    return-void
.end method

.method public rebuildFromState()V
    .registers 6

    .prologue
    .line 206
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 209
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v1

    .line 211
    .local v1, hasEntries:Z
    if-eqz v1, :cond_3b

    .line 212
    iget-object v3, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v4, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-object v4, v4, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 214
    .local v0, entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 215
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->isEmptyNoop(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 217
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->createEditorView(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Landroid/view/View;

    goto :goto_1f

    .line 220
    .end local v0           #entry:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3b
    return-void
.end method

.method public removeLabelSection()V
    .registers 4

    .prologue
    .line 382
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 383
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 384
    .local v1, view:Landroid/view/View;
    check-cast v1, Lcom/android/contacts/editor/Editor;

    .end local v1           #view:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/contacts/editor/Editor;->deleteEditor()V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 386
    :cond_17
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 387
    return-void
.end method

.method public setEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 78
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1c

    .line 79
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 80
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v0, :cond_1c

    .line 81
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 85
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1c
    if-eqz p1, :cond_29

    iget-boolean v2, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v2, :cond_29

    .line 88
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    :goto_28
    return-void

    .line 92
    :cond_29
    iget-object v2, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_28
.end method

.method public setState(Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta;ZLcom/android/contacts/editor/ViewIdGenerator;)V
    .registers 8
    .parameter "kind"
    .parameter "state"
    .parameter "readOnly"
    .parameter "vig"

    .prologue
    const/4 v2, -0x1

    .line 166
    iput-object p1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    .line 167
    iput-object p2, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    .line 168
    iput-boolean p3, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    .line 169
    iput-object p4, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 171
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/android/contacts/editor/ViewIdGenerator;->getId(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/EntityDelta$ValuesDelta;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->setId(I)V

    .line 174
    iget v0, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-eq v0, v2, :cond_1b

    iget v0, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    if-nez v0, :cond_68

    :cond_1b
    const-string v0, ""

    :goto_1d
    iput-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 180
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    if-eqz v0, :cond_5e

    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 183
    const v0, 0x7f0d0171

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    :cond_5e
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->rebuildFromState()V

    .line 189
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->updateAddFooterVisible()V

    .line 190
    invoke-direct {p0}, Lcom/android/contacts/editor/KindSectionView;->updateSectionVisible()V

    .line 191
    return-void

    .line 174
    :cond_68
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/contacts/model/DataKind;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method protected updateAddFooterVisible()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 282
    const-string v0, "vnd.sec.contact.sim"

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 284
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 322
    :cond_1c
    :goto_1c
    return-void

    .line 288
    :cond_1d
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v0, v0, Lcom/android/contacts/model/DataKind;->isList:Z

    if-eqz v0, :cond_3d

    .line 296
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mState:Lcom/android/contacts/model/EntityDelta;

    iget-object v1, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    invoke-static {v0, v1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 299
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c

    .line 302
    :cond_37
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c

    .line 308
    :cond_3d
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mKind:Lcom/android/contacts/model/DataKind;

    iget-boolean v0, v0, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v0, :cond_59

    .line 309
    invoke-virtual {p0}, Lcom/android/contacts/editor/KindSectionView;->getEditorCount()I

    move-result v0

    if-nez v0, :cond_53

    .line 310
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c

    .line 312
    :cond_53
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c

    .line 319
    :cond_59
    iget-boolean v0, p0, Lcom/android/contacts/editor/KindSectionView;->mReadOnly:Z

    if-eqz v0, :cond_1c

    .line 320
    iget-object v0, p0, Lcom/android/contacts/editor/KindSectionView;->mAddContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1c
.end method
