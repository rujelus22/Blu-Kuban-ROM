.class Lalt;
.super Lalr;
.source "TransformedImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lalr",
        "<TD;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lalr;


# direct methods
.method constructor <init>(Lalr;LaiA;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LaiA",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    iput-object p1, p0, Lalt;->a:Lalr;

    .line 37
    invoke-direct {p0, p2}, Lalr;-><init>(LaiA;)V

    .line 38
    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lalt;->a:Lalr;

    invoke-virtual {v0, p1}, Lalr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lalr;->a(I)Lalv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lalr;->a(II)LaiA;

    move-result-object v0

    return-object v0
.end method
