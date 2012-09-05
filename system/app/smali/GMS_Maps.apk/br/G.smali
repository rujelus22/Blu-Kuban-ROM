.class public Lbr/G;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x218

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, Lbr/G;->a:Lam/e;

    sget-object v2, Lbr/G;->a:Lam/e;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, Lbr/H;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbr/H;

    const/4 v0, 0x2

    sget-object v3, Lam/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, Lbr/H;

    const/4 v0, 0x3

    sget-object v4, Lbr/O;->d:Lam/e;

    invoke-virtual {v2, v3, v0, v4}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbr/H;

    const/4 v0, 0x4

    sget-object v3, Lam/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lbr/H;

    const/4 v0, 0x5

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v0

    check-cast v1, Lbr/H;

    const/4 v1, 0x6

    sget-object v2, Lam/b;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v5, v1, v2}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
