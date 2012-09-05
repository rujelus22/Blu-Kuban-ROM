.class Lcom/google/googlenav/ui/wizard/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/e;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/i;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/i;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/e;->b(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/view/android/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/R;->getCount()I

    move-result v0

    if-ge p3, v0, :cond_25

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/i;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/e;->b(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/view/android/R;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/view/android/R;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/l;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/i;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/e;->a(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/wizard/o;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/l;->a()Lam/b;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/wizard/o;->a(Lam/b;)V

    :cond_25
    return-void
.end method
