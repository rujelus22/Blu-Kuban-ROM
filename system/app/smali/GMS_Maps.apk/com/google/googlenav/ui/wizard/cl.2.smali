.class Lcom/google/googlenav/ui/wizard/cl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cs;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cj;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/cj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cl;->a:Lcom/google/googlenav/ui/wizard/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/cj;Lcom/google/googlenav/ui/wizard/ck;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cl;-><init>(Lcom/google/googlenav/ui/wizard/cj;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public a(Lax/aB;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cl;->a:Lcom/google/googlenav/ui/wizard/cj;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/cj;->a(Lcom/google/googlenav/ui/wizard/cj;Lax/aB;)Lax/aB;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cl;->a:Lcom/google/googlenav/ui/wizard/cj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cj;->b(Lcom/google/googlenav/ui/wizard/cj;)Lcom/google/googlenav/ui/wizard/cm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cl;->a:Lcom/google/googlenav/ui/wizard/cj;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/cj;->a(Lcom/google/googlenav/ui/wizard/cj;)Lcom/google/googlenav/ui/wizard/cn;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/googlenav/ui/wizard/cm;->a(Lcom/google/googlenav/ui/wizard/cn;Lax/aB;)V

    return-void
.end method
