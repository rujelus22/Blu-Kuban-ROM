.class public Lcom/google/googlenav/ui/android/aw;
.super Lcom/google/googlenav/ui/view/d;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lcom/google/googlenav/ui/view/c;Lcom/google/googlenav/ui/aW;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 26
    const v0, 0x7f1003dd

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2}, Lcom/google/googlenav/ui/view/d;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    .line 29
    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/aw;->a(Lcom/google/googlenav/ui/view/c;)V

    .line 31
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aw;->d:Landroid/view/View;

    const v1, 0x7f1003de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/aW;

    aput-object p3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/cx;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 34
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 35
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 39
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aw;->d:Landroid/view/View;

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    :cond_45
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aw;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    return-void
.end method
