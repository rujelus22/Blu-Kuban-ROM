.class LahS;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LahR;

.field final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(LahR;)V
    .registers 4
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, LahS;->a:LahR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iget-object v0, p0, LahS;->a:LahR;

    iget-object v0, v0, LahR;->a:Ljava/util/Collection;

    iput-object v0, p0, LahS;->a:Ljava/util/Collection;

    .line 504
    iget-object v0, p1, LahR;->b:LahI;

    iget-object v1, p1, LahR;->a:Ljava/util/Collection;

    invoke-static {v0, v1}, LahI;->a(LahI;Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, LahS;->a:Ljava/util/Iterator;

    .line 505
    return-void
.end method

.method constructor <init>(LahR;Ljava/util/Iterator;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 507
    iput-object p1, p0, LahS;->a:LahR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    iget-object v0, p0, LahS;->a:LahR;

    iget-object v0, v0, LahR;->a:Ljava/util/Collection;

    iput-object v0, p0, LahS;->a:Ljava/util/Collection;

    .line 508
    iput-object p2, p0, LahS;->a:Ljava/util/Iterator;

    .line 509
    return-void
.end method


# virtual methods
.method a()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 542
    invoke-virtual {p0}, LahS;->a()V

    .line 543
    iget-object v0, p0, LahS;->a:Ljava/util/Iterator;

    return-object v0
.end method

.method a()V
    .registers 3

    .prologue
    .line 516
    iget-object v0, p0, LahS;->a:LahR;

    invoke-virtual {v0}, LahR;->a()V

    .line 517
    iget-object v0, p0, LahS;->a:LahR;

    iget-object v0, v0, LahR;->a:Ljava/util/Collection;

    iget-object v1, p0, LahS;->a:Ljava/util/Collection;

    if-eq v0, v1, :cond_13

    .line 518
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 520
    :cond_13
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 524
    invoke-virtual {p0}, LahS;->a()V

    .line 525
    iget-object v0, p0, LahS;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 530
    invoke-virtual {p0}, LahS;->a()V

    .line 531
    iget-object v0, p0, LahS;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 536
    iget-object v0, p0, LahS;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 537
    iget-object v0, p0, LahS;->a:LahR;

    iget-object v0, v0, LahR;->b:LahI;

    invoke-static {v0}, LahI;->a(LahI;)I

    .line 538
    iget-object v0, p0, LahS;->a:LahR;

    invoke-virtual {v0}, LahR;->b()V

    .line 539
    return-void
.end method
