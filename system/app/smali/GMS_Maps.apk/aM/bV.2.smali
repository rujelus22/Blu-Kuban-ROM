.class LaM/bV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:LaM/bU;


# direct methods
.method constructor <init>(LaM/bU;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, LaM/bV;->a:LaM/bU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, LaM/bV;->a:LaM/bU;

    iget-object v0, v0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    if-eqz v0, :cond_d

    .line 163
    iget-object v0, p0, LaM/bV;->a:LaM/bU;

    iget-object v0, v0, LaM/bU;->B:Lcom/google/googlenav/ui/android/ah;

    invoke-interface {v0, p3}, Lcom/google/googlenav/ui/android/ah;->setSelection(I)V

    .line 166
    :cond_d
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->aq()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 167
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/e;->f()Landroid/view/View;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_2b

    .line 169
    const v1, 0x7f1001fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 173
    :cond_2b
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ab;

    .line 175
    iget-object v1, p0, LaM/bV;->a:LaM/bU;

    invoke-virtual {v1, v0}, LaM/bU;->a(Lcom/google/googlenav/ab;)V

    .line 176
    iget-object v1, p0, LaM/bV;->a:LaM/bU;

    invoke-static {v1, v0}, LaM/bU;->a(LaM/bU;Lcom/google/googlenav/ab;)V

    .line 177
    return-void
.end method
