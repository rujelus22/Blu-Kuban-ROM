.class public Lcom/google/googlenav/ui/android/ay;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;LaM/bj;Lcom/google/googlenav/ai;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 31
    const v0, 0x7f100019

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 32
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/ay;->a(Lcom/google/googlenav/ui/view/c;)V

    .line 35
    invoke-virtual {p4}, Lcom/google/googlenav/ai;->a()Lat/B;

    move-result-object v0

    if-eqz v0, :cond_83

    invoke-virtual {p3, p4, v4}, LaM/bj;->c(Lcom/google/googlenav/ai;Z)LS/f;

    move-result-object v1

    .line 38
    :goto_19
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ay;->d:Landroid/view/View;

    const v3, 0x7f10001a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 39
    if-eqz v1, :cond_85

    .line 40
    check-cast v1, LT/f;

    invoke-virtual {v1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    :goto_37
    invoke-static {p4}, LaM/aR;->g(Lcom/google/googlenav/ai;)Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ay;->d:Landroid/view/View;

    const v3, 0x7f10001b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    sget-object v3, Lcom/google/googlenav/ui/aV;->a:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 54
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    const/16 v0, 0x34

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aV;->ae:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v1

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ay;->d:Landroid/view/View;

    const v2, 0x7f10001c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/android/ay;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    return-void

    :cond_83
    move-object v1, v2

    .line 35
    goto :goto_19

    .line 44
    :cond_85
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_37
.end method
