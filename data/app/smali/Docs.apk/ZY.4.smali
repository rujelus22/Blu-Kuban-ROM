.class final LZY;
.super Ljava/lang/Object;
.source "StringPartitionTree.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "LZZ",
        "<TU;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .registers 2
    .parameter

    .prologue
    .line 400
    iput p1, p0, LZY;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZZ;LZZ;)I
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LZZ",
            "<TU;>;",
            "LZZ",
            "<TU;>;)I"
        }
    .end annotation

    .prologue
    .line 404
    iget v0, p0, LZY;->a:I

    invoke-static {v0, p2, p1}, LZX;->a(ILZZ;LZZ;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 400
    check-cast p1, LZZ;

    check-cast p2, LZZ;

    invoke-virtual {p0, p1, p2}, LZY;->a(LZZ;LZZ;)I

    move-result v0

    return v0
.end method
