.class public Lcom/google/googlenav/ui/android/ac;
.super Lcom/google/googlenav/ui/view/android/S;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lbb/c;LaY/aG;Lcom/google/googlenav/ah;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v0, 0x7f0f0001

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4}, Lcom/google/googlenav/ui/view/android/S;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/ac;->a(Lbb/c;)V

    invoke-virtual {p4}, Lcom/google/googlenav/ah;->a()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {p3, p4, v4}, LaY/aG;->b(Lcom/google/googlenav/ah;Z)Lah/f;

    move-result-object v1

    :goto_19
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->a:Landroid/view/View;

    const v3, 0x7f0f0002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v1, :cond_85

    check-cast v1, Lai/f;

    invoke-virtual {v1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_37
    invoke-static {p4}, LaY/aW;->a(Lcom/google/googlenav/ah;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->a:Landroid/view/View;

    const v3, 0x7f0f0003

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v3, Lcom/google/googlenav/ui/bg;->c:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x32

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bg;->ag:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v1

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->a:Landroid/view/View;

    const v2, 0x7f0f0004

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Lcom/google/googlenav/ui/bh;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/ac;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_83
    move-object v1, v2

    goto :goto_19

    :cond_85
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_37
.end method
