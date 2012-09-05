.class Lcom/google/android/maps/driveabout/vector/cQ;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lt/L;Lt/L;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lt/L;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/L;

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cQ;)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move v0, v1

    :goto_23
    return v0

    :cond_24
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/L;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lt/L;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    goto :goto_23

    :cond_46
    move v0, v2

    goto :goto_23
.end method

.method public b()Lt/L;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/L;

    return-object v0
.end method

.method public c()Lt/P;
    .registers 4

    new-instance v1, Lt/R;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lt/R;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cQ;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/L;

    invoke-virtual {v1, v0}, Lt/R;->a(Lt/L;)Z

    goto :goto_11

    :cond_21
    invoke-virtual {v1}, Lt/R;->d()Lt/P;

    move-result-object v0

    return-object v0
.end method
