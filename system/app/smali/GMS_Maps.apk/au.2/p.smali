.class public Lau/p;
.super Lat/a;


# instance fields
.field final synthetic a:Lau/o;

.field private b:Lam/b;


# direct methods
.method public constructor <init>(Lau/o;)V
    .registers 3

    iput-object p1, p0, Lau/p;->a:Lau/o;

    invoke-direct {p0}, Lat/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lau/p;->b:Lam/b;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/16 v0, 0x2b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/aR;->u:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3

    sget-object v0, LbD/aR;->v:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lau/p;->b:Lam/b;

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .registers 4

    iget-object v0, p0, Lau/p;->a:Lau/o;

    iget-object v1, p0, Lau/p;->b:Lam/b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lau/o;->a(Lau/o;Lam/b;Z)V

    return-void
.end method

.method public z_()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
