.class final LK/R;
.super Ljava/util/AbstractQueue;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LK/am;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(LK/am;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public b()LK/am;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    invoke-static {}, LK/bI;->a()LK/cC;

    move-result-object v0

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3

    check-cast p1, LK/am;

    invoke-virtual {p0, p1}, LK/R;->a(LK/am;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/R;->a()LK/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/R;->b()LK/am;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
