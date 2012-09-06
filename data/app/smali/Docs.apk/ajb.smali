.class final Lajb;
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
.field final synthetic a:I

.field final synthetic a:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1072
    iput-object p2, p0, Lajb;->a:[Ljava/lang/Object;

    iput p3, p0, Lajb;->a:I

    invoke-direct {p0, p1}, LahF;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 1074
    iget-object v0, p0, Lajb;->a:[Ljava/lang/Object;

    iget v1, p0, Lajb;->a:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
