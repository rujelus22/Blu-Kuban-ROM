.class final Lakg;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lakr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
        "Lakr",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:Laka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Laka;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "Laka",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1782
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1783
    iput-object p3, p0, Lakg;->a:Laka;

    .line 1784
    return-void
.end method


# virtual methods
.method public a()Laka;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Laka",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1788
    iget-object v0, p0, Lakg;->a:Laka;

    return-object v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;Laka;)Lakr;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "Laka",
            "<TK;TV;>;)",
            "Lakr",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1798
    new-instance v0, Lakg;

    invoke-virtual {p0}, Lakg;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lakg;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Laka;)V

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
    .line 1808
    invoke-virtual {p0}, Lakg;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lakr;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1793
    invoke-virtual {p0}, Lakg;->clear()V

    .line 1794
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1803
    const/4 v0, 0x0

    return v0
.end method
