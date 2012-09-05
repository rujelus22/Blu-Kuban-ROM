.class LK/E;
.super LK/A;

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic a:LK/r;


# direct methods
.method constructor <init>(LK/r;Ljava/lang/Object;Ljava/util/Set;)V
    .registers 5

    iput-object p1, p0, LK/E;->a:LK/r;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LK/A;-><init>(LK/r;Ljava/lang/Object;Ljava/util/Collection;LK/A;)V

    return-void
.end method
