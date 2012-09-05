.class Lcom/google/googlenav/ui/wizard/fS;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fR;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fS;->a:Lcom/google/googlenav/ui/wizard/fR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fS;->a:Lcom/google/googlenav/ui/wizard/fR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fO;->c(Lcom/google/googlenav/ui/wizard/fO;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/fQ;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/fQ;->b:I

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fS;->a:Lcom/google/googlenav/ui/wizard/fR;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/fO;->d(Lcom/google/googlenav/ui/wizard/fO;)Lcom/google/googlenav/L;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/fS;->a:Lcom/google/googlenav/ui/wizard/fR;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/fO;->e(Lcom/google/googlenav/ui/wizard/fO;)Lcom/google/googlenav/aV;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fS;->a:Lcom/google/googlenav/ui/wizard/fR;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/fO;->f(Lcom/google/googlenav/ui/wizard/fO;)Lcom/google/googlenav/aX;

    move-result-object v3

    const-string v4, "w"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/googlenav/ui/wizard/fO;->a(Lcom/google/googlenav/L;Lcom/google/googlenav/aV;ILcom/google/googlenav/aX;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fS;->a:Lcom/google/googlenav/ui/wizard/fR;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fR;->a:Lcom/google/googlenav/ui/wizard/fO;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fO;->a()V

    return-void
.end method
