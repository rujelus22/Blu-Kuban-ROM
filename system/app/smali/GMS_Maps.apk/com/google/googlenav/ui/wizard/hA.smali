.class public Lcom/google/googlenav/ui/wizard/hA;
.super Lcom/google/googlenav/ui/wizard/z;

# interfaces
.implements Lcom/google/googlenav/aR;


# instance fields
.field a:Landroid/widget/Button;

.field g:Landroid/widget/Button;

.field private h:Z

.field private i:Z

.field private j:[B


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/z;-><init>(Lcom/google/googlenav/ui/wizard/hM;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->g:Landroid/widget/Button;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/hA;)[B
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->j:[B

    return-object v0
.end method


# virtual methods
.method public Z_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hA;->i:Z

    return v0
.end method

.method a(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x0

    const v0, 0x7f0f000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0f0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Landroid/widget/Button;

    const/16 v1, 0x1a

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/hC;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/hC;-><init>(Lcom/google/googlenav/ui/wizard/hA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    const v0, 0x7f0f0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->g:Landroid/widget/Button;

    const/16 v1, 0xd3

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/bg;->r:Lcom/google/googlenav/ui/bg;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bw;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/bg;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->g:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/hD;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/hD;-><init>(Lcom/google/googlenav/ui/wizard/hA;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->g:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 6

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hA;->j:[B

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hA;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/hM;->A()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/hB;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/hB;-><init>(Lcom/google/googlenav/ui/wizard/hA;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_12

    move v0, v1

    :goto_6
    return v0

    :pswitch_7
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hA;->h:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hA;->i:Z

    goto :goto_6

    :pswitch_c
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/hA;->h:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hA;->i:Z

    goto :goto_6

    nop

    :pswitch_data_12
    .packed-switch 0x1f5
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected b()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hA;->i:Z

    new-instance v0, Lcom/google/googlenav/aP;

    invoke-static {}, Lcom/google/googlenav/M;->V()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V

    return-void
.end method

.method protected c()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->j:[B

    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/z;->c()V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->g:Landroid/widget/Button;

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/hA;->h:Z

    return v0
.end method

.method f()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hA;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public m()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/hA;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x2

    goto :goto_7
.end method
