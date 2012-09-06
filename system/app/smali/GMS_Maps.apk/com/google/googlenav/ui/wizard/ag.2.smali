.class Lcom/google/googlenav/ui/wizard/aG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aF;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aF;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aG;->b:Lcom/google/googlenav/ui/wizard/aF;

    iput-boolean p2, p0, Lcom/google/googlenav/ui/wizard/aG;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/aG;->a:Z

    if-nez v0, :cond_10

    .line 79
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aG;->b:Lcom/google/googlenav/ui/wizard/aF;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aF;->b:Lcom/google/googlenav/ui/wizard/aE;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/aG;->b:Lcom/google/googlenav/ui/wizard/aF;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/aF;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/aE;->a(Lcom/google/googlenav/ui/wizard/aE;Lcom/google/googlenav/ui/wizard/aJ;)V

    .line 84
    :goto_f
    return-void

    .line 82
    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aG;->b:Lcom/google/googlenav/ui/wizard/aF;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/aF;->a:Lcom/google/googlenav/ui/wizard/aJ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aJ;->a()V

    goto :goto_f
.end method
