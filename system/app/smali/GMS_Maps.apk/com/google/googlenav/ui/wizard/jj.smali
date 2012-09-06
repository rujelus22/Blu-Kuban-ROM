.class public Lcom/google/googlenav/ui/wizard/jj;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aR;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field private c:Z

.field private i:Z

.field private j:[B


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 56
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->a:Landroid/widget/Button;

    .line 57
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->b:Landroid/widget/Button;

    .line 64
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/jj;)[B
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->j:[B

    return-object v0
.end method


# virtual methods
.method a(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    const v1, 0x7f100031

    const v2, 0x7f100030

    const/4 v4, 0x0

    .line 187
    const v0, 0x7f10002e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_79

    move v0, v1

    .line 192
    :goto_18
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 194
    :goto_1e
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->a:Landroid/widget/Button;

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->a:Landroid/widget/Button;

    const/16 v1, 0x1b

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->a:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/jl;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/jl;-><init>(Lcom/google/googlenav/ui/wizard/jj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->a:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 206
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->b:Landroid/widget/Button;

    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->b:Landroid/widget/Button;

    const/16 v1, 0xe1

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/aV;->o:Lcom/google/googlenav/ui/aV;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->b:Landroid/widget/Button;

    new-instance v1, Lcom/google/googlenav/ui/wizard/jm;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/jm;-><init>(Lcom/google/googlenav/ui/wizard/jj;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->b:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    return-void

    :cond_79
    move v0, v2

    .line 191
    goto :goto_18

    :cond_7b
    move v2, v1

    .line 192
    goto :goto_1e
.end method

.method public a(Ljava/lang/String;[B)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/jj;->j:[B

    .line 105
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/jk;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/jk;-><init>(Lcom/google/googlenav/ui/wizard/jj;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 118
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 122
    packed-switch p1, :pswitch_data_12

    move v0, v1

    .line 132
    :goto_6
    return v0

    .line 124
    :pswitch_7
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/jj;->c:Z

    .line 125
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/jj;->i:Z

    goto :goto_6

    .line 128
    :pswitch_c
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/jj;->c:Z

    .line 129
    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/jj;->i:Z

    goto :goto_6

    .line 122
    nop

    :pswitch_data_12
    .packed-switch 0x1f5
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method

.method protected b()V
    .registers 3

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/jj;->i:Z

    .line 75
    new-instance v0, Lcom/google/googlenav/aP;

    invoke-static {}, Lcom/google/googlenav/K;->W()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V

    .line 76
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 77
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->j:[B

    .line 84
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 85
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->a:Landroid/widget/Button;

    .line 86
    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->b:Landroid/widget/Button;

    .line 87
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/jj;->c:Z

    return v0
.end method

.method f()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 221
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jj;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    return-void
.end method

.method public k()I
    .registers 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/jj;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x2

    goto :goto_7
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/jj;->i:Z

    return v0
.end method
