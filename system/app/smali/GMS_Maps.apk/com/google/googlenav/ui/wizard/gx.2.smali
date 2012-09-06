.class Lcom/google/googlenav/ui/wizard/gX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gT;)V
    .registers 2
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gT;

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
    .line 187
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->c(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gB;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/wizard/gB;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/wizard/gz;

    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->c(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gB;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gX;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/gT;->d(Lcom/google/googlenav/ui/wizard/gT;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/google/googlenav/ui/wizard/gB;->a(IZ)V

    .line 190
    return-void
.end method
