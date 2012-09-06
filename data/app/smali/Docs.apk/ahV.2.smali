.class LahV;
.super LahR;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LahI",
        "<TK;TV;>.ahR;",
        "Ljava/util/Set",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LahI;


# direct methods
.method constructor <init>(LahI;Ljava/lang/Object;Ljava/util/Set;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 647
    iput-object p1, p0, LahV;->a:LahI;

    .line 648
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LahR;-><init>(LahI;Ljava/lang/Object;Ljava/util/Collection;LahR;)V

    .line 649
    return-void
.end method
