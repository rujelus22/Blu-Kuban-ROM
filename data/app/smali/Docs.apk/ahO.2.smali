.class LahO;
.super LahT;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field final synthetic a:LahI;


# direct methods
.method constructor <init>(LahI;Ljava/lang/Object;Ljava/util/List;LahR;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List",
            "<TV;>;",
            "LahI",
            "<TK;TV;>.ahR;)V"
        }
    .end annotation

    .prologue
    .line 857
    iput-object p1, p0, LahO;->a:LahI;

    .line 858
    invoke-direct {p0, p1, p2, p3, p4}, LahT;-><init>(LahI;Ljava/lang/Object;Ljava/util/List;LahR;)V

    .line 859
    return-void
.end method
