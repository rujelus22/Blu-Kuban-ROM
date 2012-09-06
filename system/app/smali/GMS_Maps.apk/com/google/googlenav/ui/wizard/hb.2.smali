.class Lcom/google/googlenav/ui/wizard/hB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hA;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hx;->c(Lcom/google/googlenav/ui/wizard/hx;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/hz;

    iget v0, v0, Lcom/google/googlenav/ui/wizard/hz;->b:I

    .line 197
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/hx;->d(Lcom/google/googlenav/ui/wizard/hx;)Lcom/google/googlenav/J;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    iget-object v2, v2, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/hx;->e(Lcom/google/googlenav/ui/wizard/hx;)Lcom/google/googlenav/aW;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    iget-object v3, v3, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-static {v3}, Lcom/google/googlenav/ui/wizard/hx;->f(Lcom/google/googlenav/ui/wizard/hx;)Lcom/google/googlenav/aY;

    move-result-object v3

    const-string v4, "w"

    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/googlenav/ui/wizard/hx;->a(Lcom/google/googlenav/J;Lcom/google/googlenav/aW;ILcom/google/googlenav/aY;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hB;->a:Lcom/google/googlenav/ui/wizard/hA;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hA;->a:Lcom/google/googlenav/ui/wizard/hx;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hx;->a()V

    .line 200
    return-void
.end method
