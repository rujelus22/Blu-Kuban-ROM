.class LaY/F;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/c;


# instance fields
.field final synthetic a:LaY/D;


# direct methods
.method constructor <init>(LaY/D;)V
    .registers 2

    iput-object p1, p0, LaY/F;->a:LaY/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 6

    iget-object v0, p0, LaY/F;->a:LaY/D;

    invoke-static {v0}, LaY/D;->b(LaY/D;)LaY/G;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {}, Lab/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LaY/G;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
