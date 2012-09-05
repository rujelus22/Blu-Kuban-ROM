.class Lcom/google/googlenav/ui/wizard/M;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/L;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/L;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 4

    sget-object v0, Law/b;->j:Law/c;

    if-eq p1, v0, :cond_24

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/L;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/L;->a:Lcom/google/googlenav/ui/wizard/J;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/J;->a()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/M;->a:Lcom/google/googlenav/ui/wizard/L;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/L;->a:Lcom/google/googlenav/ui/wizard/J;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/J;->b:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->A()Lcom/google/googlenav/ui/wizard/dO;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dO;->r()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dO;->a()V

    :cond_24
    return-void
.end method
