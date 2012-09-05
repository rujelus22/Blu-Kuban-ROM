.class Lay/c;
.super Ljava/lang/Object;

# interfaces
.implements Lax/aR;


# instance fields
.field final synthetic a:Lay/q;

.field final synthetic b:Lay/a;


# direct methods
.method constructor <init>(Lay/a;Lay/q;)V
    .registers 3

    iput-object p1, p0, Lay/c;->b:Lay/a;

    iput-object p2, p0, Lay/c;->a:Lay/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .registers 6

    iget-object v0, p0, Lay/c;->b:Lay/a;

    invoke-static {v0, p1}, Lay/a;->a(Lay/a;Ljava/util/Vector;)V

    iget-object v0, p0, Lay/c;->b:Lay/a;

    iget-object v1, p0, Lay/c;->a:Lay/q;

    invoke-static {v0, v1}, Lay/a;->a(Lay/a;Lay/q;)V

    iget-object v0, p0, Lay/c;->b:Lay/a;

    invoke-static {v0}, Lay/a;->a(Lay/a;)V

    new-instance v0, Lay/k;

    iget-object v1, p0, Lay/c;->b:Lay/a;

    invoke-static {v1}, Lay/a;->b(Lay/a;)Lap/c;

    move-result-object v1

    new-instance v2, Lay/m;

    iget-object v3, p0, Lay/c;->b:Lay/a;

    invoke-direct {v2, v3}, Lay/m;-><init>(Lay/a;)V

    invoke-direct {v0, v1, p1, v2}, Lay/k;-><init>(Lap/c;Ljava/util/Vector;Lay/l;)V

    invoke-virtual {v0}, Lay/k;->g()V

    return-void
.end method
