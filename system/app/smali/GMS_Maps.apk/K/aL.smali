.class final LK/aL;
.super Ljava/util/AbstractCollection;


# instance fields
.field final synthetic a:LK/P;


# direct methods
.method constructor <init>(LK/P;)V
    .registers 2

    iput-object p1, p0, LK/aL;->a:LK/P;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    iget-object v0, p0, LK/aL;->a:LK/P;

    invoke-virtual {v0}, LK/P;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, LK/aL;->a:LK/P;

    invoke-virtual {v0, p1}, LK/P;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, LK/aL;->a:LK/P;

    invoke-virtual {v0}, LK/P;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3

    new-instance v0, LK/aJ;

    iget-object v1, p0, LK/aL;->a:LK/P;

    invoke-direct {v0, v1}, LK/aJ;-><init>(LK/P;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, LK/aL;->a:LK/P;

    invoke-virtual {v0}, LK/P;->size()I

    move-result v0

    return v0
.end method
