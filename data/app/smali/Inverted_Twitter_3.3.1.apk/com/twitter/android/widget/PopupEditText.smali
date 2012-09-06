.class public Lcom/twitter/android/widget/PopupEditText;
.super Landroid/widget/EditText;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final a:Landroid/widget/PopupWindow;

.field private final b:Lcom/twitter/android/widget/PopupEditText$DropDownListView;

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/widget/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Lcom/twitter/android/du;->popupEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/widget/PopupEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v0, Lcom/twitter/android/ec;->PopupEditText:[I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/PopupEditText;->c:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/PopupEditText;->d:I

    const/4 v1, 0x3

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/twitter/android/widget/PopupEditText;->e:I

    new-instance v1, Lcom/twitter/android/widget/PopupEditText$DropDownListView;

    const v2, 0x101006d

    invoke-direct {v1, p1, p2, v2}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, p0}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v1, p0, Lcom/twitter/android/widget/PopupEditText;->b:Lcom/twitter/android/widget/PopupEditText$DropDownListView;

    new-instance v2, Landroid/widget/PopupWindow;

    sget v3, Lcom/twitter/android/du;->popupEditTextStyle:I

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-super {p0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/twitter/android/widget/PopupEditText;->b:Lcom/twitter/android/widget/PopupEditText$DropDownListView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->getCount()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->getCount()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/twitter/android/widget/PopupEditText;->e:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/twitter/android/widget/PopupEditText;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_33

    iget v2, p0, Lcom/twitter/android/widget/PopupEditText;->d:I

    iget v3, p0, Lcom/twitter/android/widget/PopupEditText;->c:I

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    goto :goto_9

    :cond_33
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {v0, v3, v3}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget v1, p0, Lcom/twitter/android/widget/PopupEditText;->d:I

    iget v2, p0, Lcom/twitter/android/widget/PopupEditText;->c:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_9
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->b:Lcom/twitter/android/widget/PopupEditText$DropDownListView;

    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iput-object p1, p0, Lcom/twitter/android/widget/PopupEditText;->g:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {p0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    :cond_11
    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->f:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->f:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_a
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/twitter/android/widget/PopupEditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/widget/PopupEditText;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/android/widget/PopupEditText;->setSelection(II)V

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v5, p0, Lcom/twitter/android/widget/PopupEditText;->b:Lcom/twitter/android/widget/PopupEditText$DropDownListView;

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_4e

    invoke-virtual {v5}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_1e

    const/16 v0, 0x42

    if-eq p1, v0, :cond_4e

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4e

    :cond_1e
    invoke-virtual {v5}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->getSelectedItemPosition()I

    move-result v6

    iget-object v7, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v0

    if-nez v0, :cond_53

    move v0, v1

    :goto_2b
    iget-object v8, p0, Lcom/twitter/android/widget/PopupEditText;->g:Landroid/widget/ListAdapter;

    const v4, 0x7fffffff

    const/high16 v3, -0x8000

    if-eqz v8, :cond_67

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_3b
    invoke-virtual {v5, p1, p2}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_55

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    invoke-virtual {v5}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->requestFocusFromTouch()Z

    invoke-virtual {p0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    sparse-switch p1, :sswitch_data_6a

    :cond_4e
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_52
    :sswitch_52
    return v1

    :cond_53
    move v0, v2

    goto :goto_2b

    :cond_55
    if-eqz v0, :cond_5e

    const/16 v4, 0x14

    if-ne p1, v4, :cond_5e

    if-ne v6, v2, :cond_4e

    goto :goto_52

    :cond_5e
    if-nez v0, :cond_4e

    const/16 v0, 0x13

    if-ne p1, v0, :cond_4e

    if-ne v6, v3, :cond_4e

    goto :goto_52

    :cond_67
    move v2, v3

    move v3, v4

    goto :goto_3b

    :sswitch_data_6a
    .sparse-switch
        0x13 -> :sswitch_52
        0x14 -> :sswitch_52
        0x17 -> :sswitch_52
        0x42 -> :sswitch_52
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3f

    iget-object v1, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_20

    invoke-virtual {p0}, Lcom/twitter/android/widget/PopupEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :goto_1f
    return v0

    :cond_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_3f

    invoke-virtual {p0}, Lcom/twitter/android/widget/PopupEditText;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3f

    iget-object v1, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1f

    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1f
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 9

    iget-object v1, p0, Lcom/twitter/android/widget/PopupEditText;->b:Lcom/twitter/android/widget/PopupEditText$DropDownListView;

    invoke-virtual {v1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->getSelectedItemPosition()I

    move-result v3

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    if-ltz v3, :cond_19

    invoke-virtual {v1, p1, p2}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    sparse-switch p1, :sswitch_data_2c

    :cond_19
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1d
    return v0

    :sswitch_1e
    invoke-virtual {v1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1}, Lcom/twitter/android/widget/PopupEditText$DropDownListView;->getSelectedItemId()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/widget/PopupEditText;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    const/4 v0, 0x1

    goto :goto_1d

    :sswitch_data_2c
    .sparse-switch
        0x17 -> :sswitch_1e
        0x42 -> :sswitch_1e
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_a

    iget-object v0, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_a
    return-void
.end method

.method protected setFrame(IIII)Z
    .registers 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    iget-object v1, p0, Lcom/twitter/android/widget/PopupEditText;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/twitter/android/widget/PopupEditText;->a()V

    :cond_f
    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/widget/PopupEditText;->f:Landroid/view/View$OnClickListener;

    return-void
.end method
