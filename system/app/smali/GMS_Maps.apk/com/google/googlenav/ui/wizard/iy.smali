.class Lcom/google/googlenav/ui/wizard/iy;
.super Lcom/google/googlenav/ui/wizard/bo;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/ix;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ix;Lcom/google/googlenav/ui/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/iy;->b:Lcom/google/googlenav/ui/wizard/ix;

    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/ui/wizard/bo;-><init>(Lcom/google/googlenav/ui/wizard/bj;Lcom/google/googlenav/ui/g;)V

    return-void
.end method


# virtual methods
.method public I_()V
    .registers 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/bo;->I_()V

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/iy;->b:Lcom/google/googlenav/ui/wizard/ix;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ix;->h:Lcom/google/googlenav/ui/view/android/bb;

    new-instance v1, Lcom/google/googlenav/ui/wizard/iz;

    invoke-direct {v1, p0}, Lcom/google/googlenav/ui/wizard/iz;-><init>(Lcom/google/googlenav/ui/wizard/iy;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/android/bb;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 69
    return-void
.end method

.method protected c()Landroid/view/View;
    .registers 4

    .prologue
    .line 51
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/bo;->c()Landroid/view/View;

    move-result-object v0

    .line 52
    const v1, 0x7f1000b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    return-object v0
.end method
