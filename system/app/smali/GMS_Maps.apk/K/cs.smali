.class LK/cs;
.super LK/k;


# instance fields
.field final synthetic a:LK/cr;


# direct methods
.method constructor <init>(LK/cr;I)V
    .registers 3

    iput-object p1, p0, LK/cs;->a:LK/cr;

    invoke-direct {p0, p2}, LK/k;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, LK/cs;->a:LK/cr;

    iget-object v0, v0, LK/cr;->a:LK/cl;

    invoke-static {v0}, LK/cl;->a(LK/cl;)[LK/co;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, LK/co;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
