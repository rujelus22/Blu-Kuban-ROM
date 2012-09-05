.class public final Lcom/coremobility/integration/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/c;

    iget v0, v0, Lcom/coremobility/integration/a/c;->a:I

    if-ne v0, p1, :cond_21

    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/c;

    iget-object v0, v0, Lcom/coremobility/integration/a/c;->b:Ljava/lang/String;

    :goto_20
    return-object v0

    :cond_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_25
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public final a()V
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/c;

    iget v0, v0, Lcom/coremobility/integration/a/c;->a:I

    if-nez v0, :cond_1f

    const/4 v2, 0x1

    :cond_17
    if-eqz v2, :cond_1e

    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_1e
    return-void

    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public final a(ILjava/lang/String;)V
    .registers 6

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_17

    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/c;

    iget v0, v0, Lcom/coremobility/integration/a/c;->a:I

    if-ne v0, p1, :cond_24

    const/4 v2, 0x1

    :cond_17
    new-instance v0, Lcom/coremobility/integration/a/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/coremobility/integration/a/c;-><init>(Lcom/coremobility/integration/a/b;ILjava/lang/String;)V

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_23
    return-void

    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_28
    iget-object v1, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_23
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public final b(I)I
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/c;

    iget v0, v0, Lcom/coremobility/integration/a/c;->a:I

    return v0
.end method

.method public final c(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/a/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/integration/a/c;

    iget-object v0, v0, Lcom/coremobility/integration/a/c;->b:Ljava/lang/String;

    return-object v0
.end method
