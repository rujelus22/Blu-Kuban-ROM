.class Lcom/google/googlenav/ui/wizard/gc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ga;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ga;Landroid/widget/CheckBox;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gc;->b:Lcom/google/googlenav/ui/wizard/ga;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gc;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/gc;->a:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gc;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_c
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gc;->b:Lcom/google/googlenav/ui/wizard/ga;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ga;->a:Lcom/google/googlenav/ui/wizard/fX;

    const/16 v2, 0x5ef

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/googlenav/ui/wizard/fX;->a(IILjava/lang/Object;)Z

    return-void

    :cond_1a
    move v0, v1

    goto :goto_c
.end method
