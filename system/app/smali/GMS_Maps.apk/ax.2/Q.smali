.class Lax/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/aX;


# instance fields
.field final synthetic a:Lax/aP;

.field final synthetic b:Lax/x;


# direct methods
.method constructor <init>(Lax/x;Lax/aP;)V
    .registers 3

    iput-object p1, p0, Lax/Q;->b:Lax/x;

    iput-object p2, p0, Lax/Q;->a:Lax/aP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    iget-object v0, p0, Lax/Q;->b:Lax/x;

    iget-object v1, p0, Lax/Q;->a:Lax/aP;

    invoke-static {v0, v1}, Lax/x;->a(Lax/x;Lax/aP;)V

    return-void
.end method

.method public b(Z)V
    .registers 2

    return-void
.end method

.method public c(Z)V
    .registers 2

    return-void
.end method
