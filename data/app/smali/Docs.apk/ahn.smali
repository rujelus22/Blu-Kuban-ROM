.class Lahn;
.super Ljava/lang/ref/WeakReference;
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
        "Ljava/lang/ref/WeakReference",
        "<TV;>;",
        "Lahi",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:LagU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LagU",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;LagU;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "LagU",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1640
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1641
    iput-object p3, p0, Lahn;->a:LagU;

    .line 1642
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1646
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
    .line 1651
    iget-object v0, p0, Lahn;->a:LagU;

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;LagU;)Lahi;
    .registers 5
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
    .line 1660
    new-instance v0, Lahn;

    invoke-virtual {p0}, Lahn;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lahn;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;LagU;)V

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 1675
    invoke-virtual {p0}, Lahn;->get()Ljava/lang/Object;

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
    .line 1655
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1665
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 1670
    const/4 v0, 0x1

    return v0
.end method
