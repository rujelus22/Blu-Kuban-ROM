.class Lcom/google/android/maps/driveabout/vector/dB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Ln/Q;Ln/Q;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    .line 37
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method


# virtual methods
.method public a()Ln/Q;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dB;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 55
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    iget-object v3, p1, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    move v0, v1

    .line 63
    :goto_23
    return v0

    .line 58
    :cond_24
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ln/Q;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 59
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    .line 61
    goto :goto_23

    :cond_46
    move v0, v2

    .line 63
    goto :goto_23
.end method

.method public b()Ln/Q;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    return-object v0
.end method

.method public c()Ln/U;
    .registers 4

    .prologue
    .line 84
    new-instance v1, Ln/W;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ln/W;-><init>(I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/dB;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Q;

    .line 87
    invoke-virtual {v1, v0}, Ln/W;->a(Ln/Q;)Z

    goto :goto_11

    .line 90
    :cond_21
    invoke-virtual {v1}, Ln/W;->d()Ln/U;

    move-result-object v0

    return-object v0
.end method
