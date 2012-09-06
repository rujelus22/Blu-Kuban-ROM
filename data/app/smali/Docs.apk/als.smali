.class Lals;
.super LahF;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahF",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lalr;


# direct methods
.method constructor <init>(Lalr;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lals;->a:Lalr;

    invoke-direct {p0, p2, p3}, LahF;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lals;->a:Lalr;

    invoke-virtual {v0, p1}, Lalr;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
