.class Lcom/google/googlenav/ui/view/dialog/cC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cz;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cz;)V
    .registers 2
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cC;->a:Lcom/google/googlenav/ui/view/dialog/cz;

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
    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cC;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cC;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/cz;->a(Lcom/google/googlenav/ui/view/dialog/cz;)Landroid/widget/ListView;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/google/googlenav/ui/view/dialog/cz;->a(Lcom/google/googlenav/ui/view/dialog/cz;ILandroid/widget/ListView;)V

    .line 288
    return-void
.end method
