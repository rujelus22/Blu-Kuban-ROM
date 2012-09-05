.class public LaV/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Lam/b;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lam/b;

    sget-object v1, LbD/gi;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, LaV/m;->a:Lam/b;

    return-void
.end method


# virtual methods
.method public a(I)LaV/m;
    .registers 4

    iget-object v0, p0, LaV/m;->a:Lam/b;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lam/b;->h(II)V

    return-object p0
.end method

.method public a(Lam/b;)LaV/m;
    .registers 4

    iget-object v0, p0, LaV/m;->a:Lam/b;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILam/b;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)LaV/m;
    .registers 4

    iget-object v0, p0, LaV/m;->a:Lam/b;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILjava/lang/String;)V

    return-object p0
.end method

.method public b(Lam/b;)LaV/m;
    .registers 4

    iget-object v0, p0, LaV/m;->a:Lam/b;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lam/b;->b(ILam/b;)V

    return-object p0
.end method
