.class final Lc/x;
.super Lc/z;


# direct methods
.method constructor <init>(ILW/d;LW/d;III)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lc/z;-><init>(ILW/d;LW/d;III)V

    return-void
.end method


# virtual methods
.method protected a(LW/a;)Ljava/lang/Long;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LW/a;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected a(LW/a;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, LW/a;->b(IJ)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, LW/a;->b(ILjava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic a(LW/a;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lc/x;->a(LW/a;Ljava/lang/Long;Ljava/lang/String;)V

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

    invoke-virtual {p0, p1}, Lc/x;->b(LW/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(LW/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lc/x;->a(LW/a;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
