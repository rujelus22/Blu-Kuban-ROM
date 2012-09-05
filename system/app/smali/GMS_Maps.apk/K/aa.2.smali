.class final enum LK/aa;
.super LK/S;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LK/S;-><init>(Ljava/lang/String;ILK/Q;)V

    return-void
.end method


# virtual methods
.method a(LK/P;Ljava/lang/Object;ILK/am;)LK/am;
    .registers 6

    new-instance v0, LK/av;

    invoke-direct {v0, p1, p2, p3, p4}, LK/av;-><init>(LK/P;Ljava/lang/Object;ILK/am;)V

    return-object v0
.end method
