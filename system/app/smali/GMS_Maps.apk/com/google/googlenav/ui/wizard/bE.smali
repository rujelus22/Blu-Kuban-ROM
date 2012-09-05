.class Lcom/google/googlenav/ui/wizard/bE;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bC;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bE;->b:Lcom/google/googlenav/ui/wizard/bC;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bE;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bE;->b:Lcom/google/googlenav/ui/wizard/bC;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bE;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/bC;->a(Lcom/google/googlenav/ui/wizard/bC;Landroid/view/View;)V

    return-void
.end method
