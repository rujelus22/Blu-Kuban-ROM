.class final Lc/y;
.super Lc/z;


# direct methods
.method constructor <init>(ILW/d;LW/d;III)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lc/z;-><init>(ILW/d;LW/d;III)V

    return-void
.end method


# virtual methods
.method protected a(LW/a;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LW/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(LW/a;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lc/y;->a(LW/a;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(LW/a;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, LW/a;->b(ILjava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, LW/a;->b(ILjava/lang/String;)V

    return-void
.end method

.method protected b(LW/a;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LW/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(LW/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lc/y;->b(LW/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(LW/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lc/y;->a(LW/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
