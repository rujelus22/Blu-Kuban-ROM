.class Lax/I;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/G;


# instance fields
.field final synthetic a:Lax/x;


# direct methods
.method constructor <init>(Lax/x;)V
    .registers 2

    iput-object p1, p0, Lax/I;->a:Lax/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLam/b;)V
    .registers 6

    invoke-static {p2}, Lax/aL;->c(Lam/b;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lax/I;->a:Lax/x;

    invoke-static {v1}, Lax/x;->c(Lax/x;)Lcom/google/googlenav/ui/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aC()Lcom/google/googlenav/ui/wizard/hM;

    move-result-object v1

    new-instance v2, Lax/J;

    invoke-direct {v2, p0}, Lax/J;-><init>(Lax/I;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/util/List;Lcom/google/googlenav/ui/wizard/eU;)V

    return-void
.end method
