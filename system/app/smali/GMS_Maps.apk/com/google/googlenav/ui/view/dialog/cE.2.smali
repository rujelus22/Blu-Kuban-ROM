.class Lcom/google/googlenav/ui/view/dialog/cE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lah/p;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cD;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cE;->a:Lcom/google/googlenav/ui/view/dialog/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public P_()V
    .registers 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cE;->a:Lcom/google/googlenav/ui/view/dialog/cD;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cD;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cz;->b(Lcom/google/googlenav/ui/view/dialog/cz;)Lcom/google/googlenav/ui/view/dialog/cD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/cD;->notifyDataSetChanged()V

    .line 432
    return-void
.end method
