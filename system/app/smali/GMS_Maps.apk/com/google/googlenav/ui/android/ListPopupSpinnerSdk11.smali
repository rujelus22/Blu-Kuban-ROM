.class public Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;
.super Landroid/widget/TextView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/google/googlenav/ui/android/ah;


# instance fields
.field private a:Landroid/widget/ListPopupWindow;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/AdapterView$OnItemClickListener;

.field private d:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 48
    new-instance v0, Landroid/widget/ListPopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 50
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 51
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 52
    invoke-super {p0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    return-void
.end method

.method private e()I
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x2

    const/4 v0, 0x0

    .line 67
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->d:Landroid/widget/ListAdapter;

    if-nez v1, :cond_8

    .line 91
    :cond_7
    return v0

    .line 73
    :cond_8
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 74
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 78
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 79
    iget-object v2, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->d:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v4, v1, 0xf

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 80
    sub-int v2, v7, v1

    .line 81
    rsub-int/lit8 v2, v2, 0xf

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object v2, v3

    .line 82
    :goto_30
    if-ge v1, v7, :cond_7

    .line 83
    iget-object v4, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->d:Landroid/widget/ListAdapter;

    invoke-interface {v4, v1, v2, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_46

    .line 85
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    :cond_46
    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v4

    goto :goto_30
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 102
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public c()V
    .registers 4

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->b()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 155
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 156
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->e()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 158
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 163
    :cond_2b
    return-void
.end method

.method public d()V
    .registers 4

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->e()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 61
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->b()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 124
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a()V

    .line 128
    :goto_9
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_12

    .line 129
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 131
    :cond_12
    return-void

    .line 126
    :cond_13
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->d()V

    goto :goto_9
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a()V

    .line 141
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->c:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_1b

    .line 143
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->c:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 145
    :cond_1b
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->d:Landroid/widget/ListAdapter;

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->b:Landroid/view/View$OnClickListener;

    .line 119
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 136
    return-void
.end method

.method public setSelection(I)V
    .registers 3
    .parameter

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->a:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->d:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk11;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method
