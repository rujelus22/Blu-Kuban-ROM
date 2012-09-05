.class Lcom/google/googlenav/ui/wizard/es;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/af;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eo;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/eo;->b(Lcom/google/googlenav/ui/wizard/eo;Z)V

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eo;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/eo;->b(Lcom/google/googlenav/ui/wizard/eo;Z)V

    return-void
.end method
