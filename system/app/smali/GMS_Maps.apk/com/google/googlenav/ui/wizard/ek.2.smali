.class Lcom/google/googlenav/ui/wizard/ek;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ej;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ej;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ek;->a:Lcom/google/googlenav/ui/wizard/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ek;->a:Lcom/google/googlenav/ui/wizard/ej;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ej;->a(I)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public c(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/wizard/ek;->b(Z)V

    return-void
.end method
