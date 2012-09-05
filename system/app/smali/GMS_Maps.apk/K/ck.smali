.class LK/ck;
.super LK/k;


# instance fields
.field final synthetic a:LK/cj;


# direct methods
.method constructor <init>(LK/cj;II)V
    .registers 4

    iput-object p1, p0, LK/ck;->a:LK/cj;

    invoke-direct {p0, p2, p3}, LK/k;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, LK/ck;->a:LK/cj;

    invoke-static {v0}, LK/cj;->a(LK/cj;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, LK/ck;->a:LK/cj;

    invoke-static {v1}, LK/cj;->b(LK/cj;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
