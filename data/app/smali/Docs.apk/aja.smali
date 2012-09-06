.class final Laja;
.super LahF;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahF",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1038
    iput-object p2, p0, Laja;->a:[Ljava/lang/Object;

    invoke-direct {p0, p1}, LahF;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1040
    iget-object v0, p0, Laja;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
