.class Lax/bA;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lax/bz;

.field private b:I

.field private c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lax/bz;)V
    .registers 3

    iput-object p1, p0, Lax/bA;->a:Lax/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lax/bA;->b:I

    iget-object v0, p0, Lax/bA;->a:Lax/bz;

    invoke-static {v0}, Lax/bz;->a(Lax/bz;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lax/bA;->c:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lax/by;
    .registers 2

    iget v0, p0, Lax/bA;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lax/bA;->b:I

    iget-object v0, p0, Lax/bA;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/by;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lax/bA;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lax/bA;->a()Lax/by;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lax/bA;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v0, p0, Lax/bA;->a:Lax/bz;

    invoke-static {v0}, Lax/bz;->b(Lax/bz;)Lam/b;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lax/bA;->b:I

    invoke-virtual {v0, v1, v2}, Lam/b;->g(II)V

    return-void
.end method
