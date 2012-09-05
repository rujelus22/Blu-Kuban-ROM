.class Lcom/google/googlenav/ui/wizard/fw;
.super Lcom/google/googlenav/ui/wizard/fM;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fu;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/fu;

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/fM;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/fu;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fu;->a()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/fu;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/fu;->a(Lcom/google/googlenav/ui/wizard/fu;Lcom/google/googlenav/ah;)Lcom/google/googlenav/ah;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fw;->a:Lcom/google/googlenav/ui/wizard/fu;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/fu;->a(Lcom/google/googlenav/ui/wizard/fu;)V

    return-void
.end method
