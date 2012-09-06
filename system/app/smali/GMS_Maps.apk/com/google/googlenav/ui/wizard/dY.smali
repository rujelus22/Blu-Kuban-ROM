.class Lcom/google/googlenav/ui/wizard/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dQ;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dO;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dO;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dy;->b:Lcom/google/googlenav/ui/wizard/dp;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dy;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dy;->b:Lcom/google/googlenav/ui/wizard/dp;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dy;->a:Lcom/google/googlenav/ui/wizard/dO;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/dp;->a(Lcom/google/googlenav/ui/wizard/dp;Lcom/google/googlenav/ui/wizard/dO;)V

    .line 513
    return-void
.end method
