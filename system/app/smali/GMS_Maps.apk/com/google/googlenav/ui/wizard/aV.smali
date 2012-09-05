.class Lcom/google/googlenav/ui/wizard/aV;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aT;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aV;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aV;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/aT;->r()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aV;->a:Lcom/google/googlenav/ui/wizard/aT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v1, v0, Lcom/google/googlenav/ui/wizard/aZ;->h:Lcom/google/googlenav/ui/wizard/aX;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aV;->a:Lcom/google/googlenav/ui/wizard/aT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    if-nez v0, :cond_27

    const/4 v0, 0x0

    :goto_1c
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/aV;->a:Lcom/google/googlenav/ui/wizard/aT;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/wizard/aT;->a()V

    if-eqz v1, :cond_c

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/aX;->b(Z)V

    goto :goto_c

    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aV;->a:Lcom/google/googlenav/ui/wizard/aT;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aT;->a:Lcom/google/googlenav/ui/wizard/aZ;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aZ;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    goto :goto_1c
.end method
