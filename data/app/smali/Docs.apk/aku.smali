.class final Laku;
.super Lakt;
.source "MapMakerInternalMap.java"

# interfaces
.implements Laka;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lakt",
        "<TK;TV;>;",
        "Laka",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field b:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field c:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILaka;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;TK;I",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1627
    invoke-direct {p0, p1, p2, p3, p4}, Lakt;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILaka;)V

    .line 1632
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Laku;->b:Laka;

    .line 1645
    invoke-static {}, Lajx;->a()Laka;

    move-result-object v0

    iput-object v0, p0, Laku;->c:Laka;

    .line 1628
    return-void
.end method


# virtual methods
.method public c(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1642
    iput-object p1, p0, Laku;->b:Laka;

    .line 1643
    return-void
.end method

.method public d()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1637
    iget-object v0, p0, Laku;->b:Laka;

    return-object v0
.end method

.method public d(Laka;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1655
    iput-object p1, p0, Laku;->c:Laka;

    .line 1656
    return-void
.end method

.method public e()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1650
    iget-object v0, p0, Laku;->c:Laka;

    return-object v0
.end method
