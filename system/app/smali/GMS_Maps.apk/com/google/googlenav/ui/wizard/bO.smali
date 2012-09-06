.class public Lcom/google/googlenav/ui/wizard/bo;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bj;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/bj;Lcom/google/googlenav/ui/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bj;

    .line 100
    const v0, 0x7f0f001b

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 101
    return-void
.end method


# virtual methods
.method public I_()V
    .registers 3

    .prologue
    .line 138
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 139
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bo;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bj;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/bp;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    :goto_13
    return-void

    .line 141
    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bo;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_13
.end method

.method public N_()V
    .registers 2

    .prologue
    .line 131
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-nez v0, :cond_14

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bo;->requestWindowFeature(I)Z

    .line 134
    :cond_14
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bo;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_28

    .line 108
    const v0, 0x7f100025

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bj;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/bp;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    :cond_28
    const v0, 0x7f1000bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 114
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bj;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/bp;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bj;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-boolean v2, v2, Lcom/google/googlenav/ui/wizard/bp;->g:Z

    if-eqz v2, :cond_56

    .line 116
    invoke-static {v0, v3}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 121
    :goto_45
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 122
    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/bj;->a(Lcom/google/googlenav/ui/wizard/bj;Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bo;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/bj;->b(Lcom/google/googlenav/ui/wizard/bj;Landroid/view/View;)V

    .line 126
    return-object v1

    .line 118
    :cond_56
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 119
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_45
.end method
