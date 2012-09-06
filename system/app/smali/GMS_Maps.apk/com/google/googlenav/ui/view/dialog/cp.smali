.class Lcom/google/googlenav/ui/view/dialog/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/co;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/co;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cp;->a:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 105
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cp;->a:Lcom/google/googlenav/ui/view/dialog/co;

    const v1, 0x7f10040e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/view/dialog/co;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 107
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cp;->a:Lcom/google/googlenav/ui/view/dialog/co;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/co;->a(Lcom/google/googlenav/ui/view/dialog/co;Landroid/view/ViewGroup;)V

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 109
    return-void
.end method
