.class Lbk/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final a:Ljava/util/Deque;

.field private b:Lbk/m;


# direct methods
.method private constructor <init>(Lbk/d;)V
    .registers 4
    .parameter

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {}, Lbk/s;->f()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lbk/u;->a:Ljava/util/Deque;

    .line 682
    invoke-direct {p0, p1}, Lbk/u;->a(Lbk/d;)Lbk/m;

    move-result-object v0

    iput-object v0, p0, Lbk/u;->b:Lbk/m;

    .line 683
    return-void
.end method

.method synthetic constructor <init>(Lbk/d;Lbk/t;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lbk/u;-><init>(Lbk/d;)V

    return-void
.end method

.method private a(Lbk/d;)Lbk/m;
    .registers 4
    .parameter

    .prologue
    .line 686
    move-object v0, p1

    .line 687
    :goto_1
    instance-of v1, v0, Lbk/s;

    if-eqz v1, :cond_11

    .line 688
    check-cast v0, Lbk/s;

    .line 689
    iget-object v1, p0, Lbk/u;->a:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 690
    invoke-static {v0}, Lbk/s;->a(Lbk/s;)Lbk/d;

    move-result-object v0

    goto :goto_1

    .line 692
    :cond_11
    check-cast v0, Lbk/m;

    return-object v0
.end method

.method private b()Lbk/m;
    .registers 3

    .prologue
    .line 699
    :cond_0
    iget-object v0, p0, Lbk/u;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 700
    const/4 v0, 0x0

    .line 704
    :goto_9
    return-object v0

    .line 702
    :cond_a
    iget-object v0, p0, Lbk/u;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbk/s;

    invoke-static {v0}, Lbk/s;->b(Lbk/s;)Lbk/d;

    move-result-object v0

    invoke-direct {p0, v0}, Lbk/u;->a(Lbk/d;)Lbk/m;

    move-result-object v0

    .line 703
    invoke-virtual {v0}, Lbk/m;->c()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_9
.end method


# virtual methods
.method public a()Lbk/m;
    .registers 3

    .prologue
    .line 720
    iget-object v0, p0, Lbk/u;->b:Lbk/m;

    if-nez v0, :cond_a

    .line 721
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 723
    :cond_a
    iget-object v0, p0, Lbk/u;->b:Lbk/m;

    .line 724
    invoke-direct {p0}, Lbk/u;->b()Lbk/m;

    move-result-object v1

    iput-object v1, p0, Lbk/u;->b:Lbk/m;

    .line 725
    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 711
    iget-object v0, p0, Lbk/u;->b:Lbk/m;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 675
    invoke-virtual {p0}, Lbk/u;->a()Lbk/m;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 729
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
