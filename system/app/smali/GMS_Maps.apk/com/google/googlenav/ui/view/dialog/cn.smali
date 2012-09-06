.class public abstract Lcom/google/googlenav/ui/view/dialog/cn;
.super Lcom/google/googlenav/ui/view/android/V;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/googlenav/ui/wizard/ja;


# direct methods
.method protected constructor <init>(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0f001b

    :goto_d
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/view/android/V;-><init>(Lcom/google/googlenav/ui/g;I)V

    .line 31
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cn;->a:Lcom/google/googlenav/ui/wizard/ja;

    .line 32
    return-void

    .line 29
    :cond_13
    const v0, 0x7f0f0018

    goto :goto_d
.end method


# virtual methods
.method protected a(Landroid/app/ActionBar;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/google/googlenav/ui/view/android/V;->a(Landroid/app/ActionBar;)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 40
    return-void
.end method

.method protected a(Landroid/view/View;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const v2, 0x7f1001ab

    .line 46
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 50
    const v1, 0x7f02019e

    invoke-virtual {p0, p2, v2, v1}, Lcom/google/googlenav/ui/view/dialog/cn;->a(Ljava/lang/CharSequence;II)V

    .line 51
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_24
    return-void

    .line 54
    :cond_25
    sget-object v1, Lcom/google/googlenav/ui/aV;->aR:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, p2, v1}, Lcom/google/googlenav/ui/bn;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Lcom/google/googlenav/ui/aV;)V

    goto :goto_24
.end method
