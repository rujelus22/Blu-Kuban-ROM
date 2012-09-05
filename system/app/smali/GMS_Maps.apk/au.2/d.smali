.class public Lau/d;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lau/b;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lau/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lau/d;->a:Lau/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lau/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lau/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lau/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    sget-object v1, LbD/aR;->e:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lau/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILjava/lang/String;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lau/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILjava/lang/String;)V

    iget-object v1, p0, Lau/d;->d:Ljava/lang/String;

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x3

    iget-object v2, p0, Lau/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lam/b;->a(ILjava/lang/String;)V

    :cond_21
    return-object v0
.end method
