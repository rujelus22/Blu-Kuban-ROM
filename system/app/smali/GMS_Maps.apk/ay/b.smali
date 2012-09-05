.class Lay/b;
.super Ljava/lang/Object;

# interfaces
.implements Lay/j;


# instance fields
.field final synthetic a:Lay/q;

.field final synthetic b:Lay/a;


# direct methods
.method constructor <init>(Lay/a;Lay/q;)V
    .registers 3

    iput-object p1, p0, Lay/b;->b:Lay/a;

    iput-object p2, p0, Lay/b;->a:Lay/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lay/n;)V
    .registers 4

    iget-object v0, p0, Lay/b;->b:Lay/a;

    invoke-virtual {p1}, Lay/n;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lay/a;->a(Lay/a;Ljava/lang/Long;Lay/n;)V

    return-void
.end method

.method public a(Lay/o;)V
    .registers 5

    iget-object v0, p0, Lay/b;->b:Lay/a;

    invoke-virtual {p1}, Lay/o;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lay/a;->b()Lay/n;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lay/a;->a(Lay/a;Ljava/lang/Long;Lay/n;)V

    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .registers 4

    iget-object v0, p0, Lay/b;->b:Lay/a;

    iget-object v1, p0, Lay/b;->a:Lay/q;

    invoke-static {v0, v1}, Lay/a;->a(Lay/a;Lay/q;)V

    iget-object v0, p0, Lay/b;->b:Lay/a;

    invoke-static {v0}, Lay/a;->a(Lay/a;)V

    return-void
.end method
