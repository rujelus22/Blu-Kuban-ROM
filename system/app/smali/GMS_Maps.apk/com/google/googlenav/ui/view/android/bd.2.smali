.class Lcom/google/googlenav/ui/view/android/bd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aX;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aX;Landroid/widget/RadioButton;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bd;->b:Lcom/google/googlenav/ui/view/android/aX;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bd;->a:Landroid/widget/RadioButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bd;->a:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bd;->b:Lcom/google/googlenav/ui/view/android/aX;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aX;->f:Lcom/google/googlenav/ui/p;

    const/16 v1, 0x2cc

    iget-object v2, p0, Lcom/google/googlenav/ui/view/android/bd;->b:Lcom/google/googlenav/ui/view/android/aX;

    invoke-static {v2}, Lcom/google/googlenav/ui/view/android/aX;->c(Lcom/google/googlenav/ui/view/android/aX;)Lcom/google/googlenav/aY;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/aY;->a()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/bd;->a:Landroid/widget/RadioButton;

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/p;->a(IILjava/lang/Object;)Z

    return-void
.end method
