.class final enum LK/aB;
.super LK/aA;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, LK/aA;-><init>(Ljava/lang/String;ILK/Q;)V

    return-void
.end method


# virtual methods
.method a(LK/am;Ljava/lang/Object;)LK/aK;
    .registers 4

    new-instance v0, LK/aI;

    invoke-direct {v0, p2}, LK/aI;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method a()Lcom/google/common/base/b;
    .registers 2

    invoke-static {}, Lcom/google/common/base/c;->a()Lcom/google/common/base/b;

    move-result-object v0

    return-object v0
.end method
