.class LK/au;
.super LK/o;


# instance fields
.field final synthetic a:LK/as;


# direct methods
.method constructor <init>(LK/as;LK/am;)V
    .registers 3

    iput-object p1, p0, LK/au;->a:LK/as;

    invoke-direct {p0, p2}, LK/o;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(LK/am;)LK/am;
    .registers 4

    invoke-interface {p1}, LK/am;->f()LK/am;

    move-result-object v0

    iget-object v1, p0, LK/au;->a:LK/as;

    iget-object v1, v1, LK/as;->a:LK/am;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, LK/am;

    invoke-virtual {p0, p1}, LK/au;->a(LK/am;)LK/am;

    move-result-object v0

    return-object v0
.end method
