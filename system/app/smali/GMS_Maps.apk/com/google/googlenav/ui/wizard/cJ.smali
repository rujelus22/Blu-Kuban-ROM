.class Lcom/google/googlenav/ui/wizard/cJ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/db;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cZ;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/cA;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cZ;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cJ;->b:Lcom/google/googlenav/ui/wizard/cA;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/cJ;->a:Lcom/google/googlenav/ui/wizard/cZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cJ;->b:Lcom/google/googlenav/ui/wizard/cA;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cJ;->a:Lcom/google/googlenav/ui/wizard/cZ;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/cA;->a(Lcom/google/googlenav/ui/wizard/cA;Lcom/google/googlenav/ui/wizard/cZ;)V

    return-void
.end method
