.class Lcom/google/googlenav/ui/view/dialog/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/googlenav/bb;

.field final synthetic d:Lcom/google/googlenav/ui/view/dialog/ce;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/ce;IILcom/google/googlenav/bb;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 859
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ci;->d:Lcom/google/googlenav/ui/view/dialog/ce;

    iput p2, p0, Lcom/google/googlenav/ui/view/dialog/ci;->a:I

    iput p3, p0, Lcom/google/googlenav/ui/view/dialog/ci;->b:I

    iput-object p4, p0, Lcom/google/googlenav/ui/view/dialog/ci;->c:Lcom/google/googlenav/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 862
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ci;->d:Lcom/google/googlenav/ui/view/dialog/ce;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/ce;->b:LaM/m;

    iget v1, p0, Lcom/google/googlenav/ui/view/dialog/ci;->a:I

    iget v2, p0, Lcom/google/googlenav/ui/view/dialog/ci;->b:I

    iget-object v3, p0, Lcom/google/googlenav/ui/view/dialog/ci;->c:Lcom/google/googlenav/bb;

    invoke-virtual {v0, v1, v2, v3}, LaM/m;->a(IILjava/lang/Object;)Z

    .line 863
    return-void
.end method
