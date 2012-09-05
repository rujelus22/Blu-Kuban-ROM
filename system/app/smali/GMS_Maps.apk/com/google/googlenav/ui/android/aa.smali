.class public Lcom/google/googlenav/ui/android/aa;
.super Lcom/google/googlenav/ui/view/android/S;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/android/ButtonContainer;Lbb/c;Lcom/google/googlenav/ui/bh;)V
    .registers 7

    const/4 v2, 0x0

    const v0, 0x7f0f0355

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/android/ButtonContainer;->a(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, v2}, Lcom/google/googlenav/ui/view/android/S;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Z)V

    invoke-virtual {p0, p2}, Lcom/google/googlenav/ui/android/aa;->a(Lbb/c;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aa;->a:Landroid/view/View;

    const v1, 0x7f0f0356

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/googlenav/ui/bh;

    aput-object p3, v1, v2

    invoke-static {v1}, LK/bR;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/ui/bw;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/google/googlenav/ui/android/aa;->a:Landroid/view/View;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_45
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aa;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
