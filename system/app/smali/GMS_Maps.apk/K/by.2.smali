.class LK/by;
.super LK/k;


# instance fields
.field final synthetic a:LK/bx;


# direct methods
.method constructor <init>(LK/bx;I)V
    .registers 3

    iput-object p1, p0, LK/by;->a:LK/bx;

    invoke-direct {p0, p2}, LK/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, LK/by;->a:LK/bx;

    iget-object v1, p0, LK/by;->a:LK/bx;

    iget-object v1, v1, LK/bx;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, LK/bx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
