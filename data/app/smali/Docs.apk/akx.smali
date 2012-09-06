.class final Lakx;
.super Ljava/lang/ref/WeakReference;
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
        "Ljava/lang/ref/WeakReference",
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
    .line 1743
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1744
    iput-object p3, p0, Lakx;->a:Laka;

    .line 1745
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
    .line 1749
    iget-object v0, p0, Lakx;->a:Laka;

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
    .line 1760
    new-instance v0, Lakx;

    invoke-virtual {p0}, Lakx;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lakx;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Laka;)V

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
    .line 1770
    invoke-virtual {p0}, Lakx;->get()Ljava/lang/Object;

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
    .line 1754
    invoke-virtual {p0}, Lakx;->clear()V

    .line 1755
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 1765
    const/4 v0, 0x0

    return v0
.end method
