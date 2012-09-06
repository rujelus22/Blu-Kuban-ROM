.class Laic;
.super Lajx;
.source "ComputingConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lajx",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:LafH;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LafH",
            "<-TK;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lajl;LafH;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajl;",
            "LafH",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lajx;-><init>(Lajl;)V

    .line 54
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LafH;

    iput-object v0, p0, Laic;->a:LafH;

    .line 55
    return-void
.end method


# virtual methods
.method a(I)Laig;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Laig",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0, p1}, Lajx;->a(I)Lakb;

    move-result-object v0

    check-cast v0, Laig;

    return-object v0
.end method

.method bridge synthetic a(I)Lakb;
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Laic;->a(I)Laig;

    move-result-object v0

    return-object v0
.end method

.method a(II)Lakb;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lakb",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Laig;

    invoke-direct {v0, p0, p1, p2}, Laig;-><init>(Lajx;II)V

    return-object v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Laic;->a(Ljava/lang/Object;)I

    move-result v0

    .line 69
    invoke-virtual {p0, v0}, Laic;->a(I)Laig;

    move-result-object v1

    iget-object v2, p0, Laic;->a:LafH;

    invoke-virtual {v1, p1, v0, v2}, Laig;->a(Ljava/lang/Object;ILafH;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
