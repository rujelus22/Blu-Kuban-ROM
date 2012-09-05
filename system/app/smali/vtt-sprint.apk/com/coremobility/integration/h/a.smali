.class public final Lcom/coremobility/integration/h/a;
.super Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 4

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .registers 3

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;I)I
    .registers 4

    add-int/lit8 v0, p2, -0x1

    invoke-super {p0, p1, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 3

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final removeElementAt(I)V
    .registers 3

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0}, Ljava/util/Vector;->removeElementAt(I)V

    return-void
.end method

.method protected final removeRange(II)V
    .registers 5

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-super {p0, v0, v1}, Ljava/util/Vector;->removeRange(II)V

    return-void
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4

    add-int/lit8 v0, p1, -0x1

    invoke-super {p0, v0, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final setElementAt(Ljava/lang/Object;I)V
    .registers 4

    add-int/lit8 v0, p2, -0x1

    invoke-super {p0, p1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method public final subList(II)Ljava/util/List;
    .registers 5

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p2, -0x1

    invoke-super {p0, v0, v1}, Ljava/util/Vector;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
