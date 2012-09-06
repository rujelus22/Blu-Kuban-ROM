.class LahU;
.super LahS;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahI",
        "<TK;TV;>.ahR.ahS;",
        "Ljava/util/ListIterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LahT;


# direct methods
.method constructor <init>(LahT;)V
    .registers 2
    .parameter

    .prologue
    .line 803
    iput-object p1, p0, LahU;->a:LahT;

    invoke-direct {p0, p1}, LahS;-><init>(LahR;)V

    return-void
.end method

.method public constructor <init>(LahT;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 805
    iput-object p1, p0, LahU;->a:LahT;

    .line 806
    invoke-virtual {p1}, LahT;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LahS;-><init>(LahR;Ljava/util/Iterator;)V

    .line 807
    return-void
.end method

.method private a()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 810
    invoke-virtual {p0}, LahU;->a()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Ljava/util/ListIterator;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, LahU;->a:LahT;

    invoke-virtual {v0}, LahT;->isEmpty()Z

    move-result v0

    .line 841
    invoke-direct {p0}, LahU;->a()Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 842
    iget-object v1, p0, LahU;->a:LahT;

    iget-object v1, v1, LahT;->c:LahI;

    invoke-static {v1}, LahI;->b(LahI;)I

    .line 843
    if-eqz v0, :cond_1b

    .line 844
    iget-object v0, p0, LahU;->a:LahT;

    invoke-virtual {v0}, LahT;->c()V

    .line 846
    :cond_1b
    return-void
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 815
    invoke-direct {p0}, LahU;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 825
    invoke-direct {p0}, LahU;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 820
    invoke-direct {p0}, LahU;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 830
    invoke-direct {p0}, LahU;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 835
    invoke-direct {p0}, LahU;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 836
    return-void
.end method
