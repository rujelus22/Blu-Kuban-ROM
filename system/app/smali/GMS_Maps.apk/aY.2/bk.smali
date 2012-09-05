.class LaY/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lbb/c;


# instance fields
.field final synthetic a:LaY/bh;


# direct methods
.method constructor <init>(LaY/bh;)V
    .registers 2

    iput-object p1, p0, LaY/bk;->a:LaY/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbb/E;)Z
    .registers 6

    const/16 v0, 0x61

    const-string v1, "f"

    const-string v2, "nb"

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, LaY/bk;->a:LaY/bh;

    const/16 v1, 0xb58

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaY/bh;->a(IILjava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public b(Lbb/E;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
