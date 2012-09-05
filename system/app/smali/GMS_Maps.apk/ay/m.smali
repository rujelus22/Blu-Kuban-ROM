.class Lay/m;
.super Ljava/lang/Object;

# interfaces
.implements Lay/l;


# instance fields
.field private final a:Lay/a;


# direct methods
.method public constructor <init>(Lay/a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lay/m;->a:Lay/a;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lay/m;->a:Lay/a;

    invoke-static {v0}, Lay/a;->d(Lay/a;)V

    return-void
.end method

.method public a(Lay/n;)V
    .registers 5

    iget-object v0, p0, Lay/m;->a:Lay/a;

    iget-object v0, v0, Lay/a;->a:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lay/n;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lay/n;->b()Lay/o;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lay/m;->a:Lay/a;

    invoke-static {v0}, Lay/a;->e(Lay/a;)V

    return-void
.end method
