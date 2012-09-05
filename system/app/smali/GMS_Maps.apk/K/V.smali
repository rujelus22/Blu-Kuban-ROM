.class final enum LK/V;
.super LK/S;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LK/S;-><init>(Ljava/lang/String;ILK/Q;)V

    return-void
.end method


# virtual methods
.method a(LK/P;LK/am;LK/am;)LK/am;
    .registers 5

    invoke-super {p0, p1, p2, p3}, LK/S;->a(LK/P;LK/am;LK/am;)LK/am;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, LK/V;->b(LK/am;LK/am;)V

    return-object v0
.end method

.method a(LK/P;Ljava/lang/Object;ILK/am;)LK/am;
    .registers 6

    new-instance v0, LK/aN;

    invoke-direct {v0, p1, p2, p3, p4}, LK/aN;-><init>(LK/P;Ljava/lang/Object;ILK/am;)V

    return-object v0
.end method
