.class Lahf;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lahi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lahi",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1732
    iput-object p1, p0, Lahf;->a:Ljava/lang/Object;

    .line 1733
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1742
    const/4 v0, 0x1

    return v0
.end method

.method public a()LagU;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1747
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;LagU;)Lahi;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "LagU",
            "<TK;TV;>;)",
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1752
    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1767
    invoke-virtual {p0}, Lahf;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 1771
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1757
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 1762
    const/4 v0, 0x1

    return v0
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1737
    iget-object v0, p0, Lahf;->a:Ljava/lang/Object;

    return-object v0
.end method
