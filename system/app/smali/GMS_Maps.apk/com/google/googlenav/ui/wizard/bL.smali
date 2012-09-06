.class Lcom/google/googlenav/ui/wizard/bl;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/bj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bl;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bl;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bj;->o()Z

    move-result v0

    if-nez v0, :cond_d

    .line 192
    :cond_c
    :goto_c
    return-void

    .line 186
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bl;->a:Lcom/google/googlenav/ui/wizard/bj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/bp;->h:Lcom/google/googlenav/ui/wizard/bn;

    .line 187
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bl;->a:Lcom/google/googlenav/ui/wizard/bj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    .line 188
    :goto_1c
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bl;->a:Lcom/google/googlenav/ui/wizard/bj;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/bj;->a()V

    .line 189
    if-eqz v1, :cond_c

    .line 190
    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/bn;->b(Z)V

    goto :goto_c

    .line 187
    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bl;->a:Lcom/google/googlenav/ui/wizard/bj;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bj;->a:Lcom/google/googlenav/ui/wizard/bp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bp;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_1c
.end method
