.class final Lajf;
.super Ljava/lang/Object;
.source "Iterators.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .registers 3
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lajf;->c:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 529
    invoke-static {}, LaiY;->a()Lalu;

    move-result-object v0

    iput-object v0, p0, Lajf;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 3

    .prologue
    .line 543
    :goto_0
    iget-object v0, p0, Lajf;->a:Ljava/util/Iterator;

    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v1, p0, Lajf;->c:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 544
    iget-object v0, p0, Lajf;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iput-object v0, p0, Lajf;->a:Ljava/util/Iterator;

    goto :goto_0

    .line 546
    :cond_21
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 550
    invoke-virtual {p0}, Lajf;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 551
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 553
    :cond_c
    iget-object v0, p0, Lajf;->a:Ljava/util/Iterator;

    iput-object v0, p0, Lajf;->b:Ljava/util/Iterator;

    .line 554
    iget-object v0, p0, Lajf;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 558
    iget-object v0, p0, Lajf;->b:Ljava/util/Iterator;

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_5
    const-string v1, "no calls to next() since last call to remove()"

    invoke-static {v0, v1}, LafQ;->b(ZLjava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lajf;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lajf;->b:Ljava/util/Iterator;

    .line 562
    return-void

    .line 558
    :cond_13
    const/4 v0, 0x0

    goto :goto_5
.end method
