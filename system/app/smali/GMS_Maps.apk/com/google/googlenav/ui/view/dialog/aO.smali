.class Lcom/google/googlenav/ui/view/dialog/aO;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aM;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/view/dialog/aM;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aO;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/aO;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/googlenav/ui/view/dialog/aO;->b:I

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aO;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aM;->a(Lcom/google/googlenav/ui/view/dialog/aM;)LaY/m;

    move-result-object v0

    invoke-virtual {v0}, LaY/m;->as()Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bJ;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/aO;->b:I

    invoke-virtual {v0, v1, p3}, Lcom/google/googlenav/bJ;->a(II)V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aO;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/aM;->b(Lcom/google/googlenav/ui/view/dialog/aM;)LaY/m;

    move-result-object v1

    check-cast v1, LaY/bd;

    invoke-virtual {v1}, LaY/bd;->a()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aO;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/aM;->h()V

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/aO;->a:Lcom/google/googlenav/ui/view/dialog/aM;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/aM;->c(Lcom/google/googlenav/ui/view/dialog/aM;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/bJ;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method
