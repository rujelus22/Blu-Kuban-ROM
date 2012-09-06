.class public Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;
.super Landroid/widget/TextView;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    invoke-static {}, Lcom/google/googlenav/ui/android/multilinetextview/j;->a()Lcom/google/googlenav/ui/android/multilinetextview/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 48
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->a:I

    if-nez v0, :cond_11

    .line 49
    iput v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->a:I

    .line 51
    :cond_11
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    if-nez v0, :cond_17

    .line 52
    iput v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    .line 54
    :cond_17
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    if-nez v0, :cond_1d

    .line 55
    iput v1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    .line 57
    :cond_1d
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 135
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    if-eq v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b()I
    .registers 3

    .prologue
    .line 139
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 140
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    .line 142
    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->getLineHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_7
.end method

.method public getMaxLines()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->a:I

    return v0
.end method

.method public getMinEms()I
    .registers 2

    .prologue
    .line 105
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    return v0
.end method

.method public getMinWidth()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    return v0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setEms(I)V
    .registers 3
    .parameter

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEms(I)V

    .line 123
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    .line 125
    return-void
.end method

.method public setHeight(I)V
    .registers 3
    .parameter

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 88
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->getLineHeight()I

    move-result v0

    div-int v0, p1, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->a:I

    .line 89
    return-void
.end method

.method public setLines(I)V
    .registers 2
    .parameter

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 82
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->a:I

    .line 83
    return-void
.end method

.method public setMaxHeight(I)V
    .registers 3
    .parameter

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 76
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->getLineHeight()I

    move-result v0

    div-int v0, p1, v0

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->a:I

    .line 77
    return-void
.end method

.method public setMaxLines(I)V
    .registers 2
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 70
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->a:I

    .line 71
    return-void
.end method

.method public setMinEms(I)V
    .registers 3
    .parameter

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinEms(I)V

    .line 99
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    .line 101
    return-void
.end method

.method public setMinWidth(I)V
    .registers 3
    .parameter

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 111
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    .line 113
    return-void
.end method

.method public setWidth(I)V
    .registers 3
    .parameter

    .prologue
    .line 129
    invoke-super {p0, p1}, Landroid/widget/TextView;->setWidth(I)V

    .line 130
    iput p1, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->c:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/android/multilinetextview/MultilineTextView;->b:I

    .line 132
    return-void
.end method
