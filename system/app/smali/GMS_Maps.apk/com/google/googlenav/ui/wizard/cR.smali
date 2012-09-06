.class Lcom/google/googlenav/ui/wizard/cr;
.super Lcom/google/googlenav/ui/view/dialog/aq;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/google/googlenav/ui/wizard/cq;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cq;Lcom/google/googlenav/ui/view/dialog/am;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cr;->b:Lcom/google/googlenav/ui/wizard/cq;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/google/googlenav/ui/view/dialog/aq;-><init>(Lcom/google/googlenav/ui/view/dialog/am;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cr;->b:Lcom/google/googlenav/ui/wizard/cq;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cq;->a(Lcom/google/googlenav/ui/wizard/cq;)Lcom/google/googlenav/ui/wizard/cs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cs;->a()V

    .line 55
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cr;->b:Lcom/google/googlenav/ui/wizard/cq;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cq;->a()V

    .line 56
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cr;->b:Lcom/google/googlenav/ui/wizard/cq;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cq;->a(Lcom/google/googlenav/ui/wizard/cq;)Lcom/google/googlenav/ui/wizard/cs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/cs;->b()V

    .line 61
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cr;->b:Lcom/google/googlenav/ui/wizard/cq;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cq;->a()V

    .line 62
    return-void
.end method
