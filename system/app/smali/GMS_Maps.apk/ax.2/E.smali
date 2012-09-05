.class Lax/E;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/wizard/gT;


# instance fields
.field final synthetic a:Lax/x;


# direct methods
.method constructor <init>(Lax/x;)V
    .registers 2

    iput-object p1, p0, Lax/E;->a:Lax/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lax/E;->a:Lax/x;

    invoke-static {v0}, Lax/x;->b(Lax/x;)LaY/K;

    move-result-object v0

    invoke-virtual {v0}, LaY/K;->bK()V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .registers 7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_18

    :cond_c
    iget-object v0, p0, Lax/E;->a:Lax/x;

    invoke-static {v0}, Lax/x;->f(Lax/x;)Lax/r;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lax/r;->a(Lcom/google/googlenav/aX;J)V

    :cond_18
    return-void
.end method
