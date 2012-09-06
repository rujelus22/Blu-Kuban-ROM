.class public LaQ/G;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;ILjava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    invoke-static {v0, p2}, LaQ/G;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method

.method public static a(Landroid/widget/ImageView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    if-eqz p0, :cond_b

    .line 72
    if-eqz p1, :cond_c

    .line 73
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :cond_b
    :goto_b
    return-void

    .line 76
    :cond_c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_b
.end method

.method public static a(Landroid/widget/ImageView;LT/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    if-eqz p0, :cond_f

    .line 55
    if-eqz p1, :cond_10

    .line 56
    invoke-virtual {p1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    :cond_f
    :goto_f
    return-void

    .line 59
    :cond_10
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    if-eqz p0, :cond_b

    .line 29
    if-eqz p1, :cond_c

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    :cond_b
    :goto_b
    return-void

    .line 33
    :cond_c
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b
.end method
