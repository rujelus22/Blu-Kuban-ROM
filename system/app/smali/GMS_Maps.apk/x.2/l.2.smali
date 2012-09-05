.class Lx/l;
.super Lz/g;


# instance fields
.field final synthetic a:Lx/k;


# direct methods
.method constructor <init>(Lx/k;I)V
    .registers 3

    iput-object p1, p0, Lx/l;->a:Lx/k;

    invoke-direct {p0, p2}, Lz/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lt/af;Lx/r;)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lx/r;->a(ILt/ae;)V

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lt/af;

    check-cast p2, Lx/r;

    invoke-virtual {p0, p1, p2}, Lx/l;->a(Lt/af;Lx/r;)V

    return-void
.end method
