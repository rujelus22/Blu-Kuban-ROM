.class public final Lcom/coremobility/c/ag;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Vector;

.field protected b:S

.field protected c:S

.field protected final d:S

.field final synthetic e:Lcom/coremobility/c/ae;


# direct methods
.method public constructor <init>(Lcom/coremobility/c/ae;)V
    .registers 4

    const/16 v1, 0x8

    iput-object p1, p0, Lcom/coremobility/c/ag;->e:Lcom/coremobility/c/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v1, p0, Lcom/coremobility/c/ag;->d:S

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    iput-short v1, p0, Lcom/coremobility/c/ag;->b:S

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/coremobility/c/ag;->c:S

    return-void
.end method


# virtual methods
.method public final a()S
    .registers 2

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    return v0
.end method

.method public final a(Lcom/coremobility/c/al;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1e

    move v0, v1

    :goto_5
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    invoke-virtual {p1}, Lcom/coremobility/c/al;->d()I

    move-result v0

    if-eqz v0, :cond_20

    :goto_e
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    iget-short v1, p0, Lcom/coremobility/c/ag;->c:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/coremobility/c/ag;->c:S

    invoke-virtual {v0, v1, p1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void

    :cond_1e
    move v0, v2

    goto :goto_5

    :cond_20
    move v1, v2

    goto :goto_e
.end method

.method public final a(S)V
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    if-eqz v0, :cond_2a

    move v0, v1

    :goto_7
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    if-ge p1, v0, :cond_2c

    move v0, v1

    :goto_f
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2e

    :goto_1a
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/coremobility/c/ag;->c:S

    return-void

    :cond_2a
    move v0, v2

    goto :goto_7

    :cond_2c
    move v0, v2

    goto :goto_f

    :cond_2e
    move v1, v2

    goto :goto_1a
.end method

.method final b(S)Lcom/coremobility/c/al;
    .registers 3

    iget-short v0, p0, Lcom/coremobility/c/ag;->c:S

    if-ge p1, v0, :cond_d

    iget-object v0, p0, Lcom/coremobility/c/ag;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/c/al;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
