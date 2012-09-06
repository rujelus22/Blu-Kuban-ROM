.class Lcom/google/googlenav/ui/view/dialog/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cj;)V
    .registers 2
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cm;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cm;->a:Lcom/google/googlenav/ui/view/dialog/cj;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cj;->b(Lcom/google/googlenav/ui/view/dialog/cj;)Lcom/google/googlenav/ui/wizard/iK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/iK;->e()V

    .line 114
    return-void
.end method
