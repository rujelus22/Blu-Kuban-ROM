.class Lcom/google/googlenav/ui/wizard/cj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ch;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/ch;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cj;->a:Landroid/view/View;

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
    .line 215
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cj;->b:Lcom/google/googlenav/ui/wizard/ch;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cj;->a:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ch;->a(Lcom/google/googlenav/ui/wizard/ch;Landroid/view/View;)V

    .line 216
    return-void
.end method
