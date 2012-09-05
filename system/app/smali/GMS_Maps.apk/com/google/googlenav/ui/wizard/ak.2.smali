.class Lcom/google/googlenav/ui/wizard/ak;
.super Ljava/lang/Object;

# interfaces
.implements Law/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ak;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Law/c;)V
    .registers 3

    sget-object v0, Law/b;->j:Law/c;

    if-eq p1, v0, :cond_d

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ak;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ay;->g()V

    :cond_d
    return-void
.end method
