.class public LaY/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/E;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaY/ah;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, LaY/ah;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public a(B)V
    .registers 2

    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(LaY/ai;)V
    .registers 3

    iget-object v0, p0, LaY/ah;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 3

    iget-object v0, p0, LaY/ah;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/D;

    return-object v0
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)I
    .registers 2

    return p1
.end method

.method public d()B
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public d(I)LaY/ai;
    .registers 3

    invoke-virtual {p0, p1}, LaY/ah;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, LaY/ai;

    return-object v0
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()I
    .registers 2

    iget-object v0, p0, LaY/ah;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
