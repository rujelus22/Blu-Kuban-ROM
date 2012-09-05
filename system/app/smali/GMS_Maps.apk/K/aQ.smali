.class LK/aQ;
.super Lcom/google/common/base/n;

# interfaces
.implements LK/aK;


# instance fields
.field final a:LK/am;


# direct methods
.method constructor <init>(Ljava/lang/Object;LK/am;)V
    .registers 4

    sget-object v0, LK/al;->a:Lcom/google/common/base/h;

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/n;-><init>(Ljava/lang/Object;Lcom/google/common/base/h;)V

    iput-object p2, p0, LK/aQ;->a:LK/am;

    return-void
.end method


# virtual methods
.method public a(LK/am;)LK/aK;
    .registers 4

    new-instance v0, LK/aQ;

    invoke-virtual {p0}, LK/aQ;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LK/aQ;-><init>(Ljava/lang/Object;LK/am;)V

    return-object v0
.end method

.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .registers 1

    invoke-virtual {p0}, LK/aQ;->finalizeReferent()V

    return-void
.end method

.method public finalizeReferent()V
    .registers 2

    iget-object v0, p0, LK/aQ;->a:LK/am;

    invoke-interface {v0, p0}, LK/am;->b(LK/aK;)V

    return-void
.end method
