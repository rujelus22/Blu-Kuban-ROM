.class LbQ;
.super Ljava/lang/Object;

# interfaces
.implements LbV;


# instance fields
.field final synthetic a:LbO;


# direct methods
.method private constructor <init>(LbO;)V
    .registers 2

    iput-object p1, p0, LbQ;->a:LbO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LbO;LbN;)V
    .registers 3

    invoke-direct {p0, p1}, LbQ;-><init>(LbO;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    iget-object v0, p0, LbQ;->a:LbO;

    invoke-static {v0}, LbO;->a(LbO;)LbP;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, LbQ;->a:LbO;

    invoke-static {v0}, LbO;->a(LbO;)LbP;

    move-result-object v0

    invoke-virtual {v0}, LbP;->a()LbG;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, LbQ;->a:LbO;

    invoke-static {v1}, LbO;->a(LbO;)LbA;

    move-result-object v1

    iget-wide v2, v0, LbG;->a:J

    invoke-interface {v1, v2, v3}, LbA;->a(J)V

    goto :goto_8
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, LbQ;->a:LbO;

    invoke-static {v0, p1}, LbO;->b(LbO;I)I

    return-void
.end method

.method public a(Z)V
    .registers 4

    if-eqz p1, :cond_a

    iget-object v0, p0, LbQ;->a:LbO;

    const/16 v1, 0x1e

    invoke-static {v0, v1}, LbO;->a(LbO;I)I

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, LbQ;->a:LbO;

    const/4 v1, 0x1

    invoke-static {v0, v1}, LbO;->a(LbO;I)I

    goto :goto_9
.end method
