.class Lcom/google/googlenav/ui/android/ai;
.super Lcom/google/googlenav/ui/view/dialog/q;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;I)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/google/googlenav/ui/android/ai;->a:Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    .line 162
    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/dialog/q;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;I)V

    .line 163
    return-void
.end method


# virtual methods
.method protected I_()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 167
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/q;->I_()V

    .line 169
    const v0, 0x7f100126

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ai;->a:Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;

    invoke-static {v1}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a(Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 171
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 179
    :goto_16
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ai;->i()V

    .line 180
    invoke-virtual {p0}, Lcom/google/googlenav/ui/android/ai;->l()V

    .line 181
    return-void

    .line 176
    :cond_1d
    iget-object v1, p0, Lcom/google/googlenav/ui/android/ai;->i:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_16
.end method

.method protected K_()V
    .registers 3

    .prologue
    .line 200
    invoke-super {p0}, Lcom/google/googlenav/ui/view/dialog/q;->K_()V

    .line 203
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ai;->a:Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;->a(Lcom/google/googlenav/ui/android/ListPopupSpinnerSdk5;Z)Z

    .line 204
    return-void
.end method

.method protected a(Landroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .parameter

    .prologue
    .line 185
    const v0, 0x7f100126

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/android/ai;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int v0, v2, v0

    .line 188
    iget v2, p0, Lcom/google/googlenav/ui/android/ai;->b:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 189
    iget v0, p0, Lcom/google/googlenav/ui/android/ai;->c:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 191
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 194
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bn;->H()I

    move-result v0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 196
    :cond_3e
    return-void
.end method
