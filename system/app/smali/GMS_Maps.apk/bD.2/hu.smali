.class public LbD/hu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x21b

    const/16 v5, 0x218

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/hu;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/hu;->b:Lam/e;

    sget-object v2, LbD/hu;->a:Lam/e;

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, LbD/hv;

    invoke-virtual {v2, v3, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/hv;

    const/4 v0, 0x2

    sget-object v3, Lam/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/hv;

    const/4 v0, 0x3

    sget-object v3, Lam/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v5, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x415

    move-object v0, v1

    check-cast v0, LbD/hv;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/hv;

    const/4 v0, 0x5

    sget-object v3, LbD/dR;->a:Lam/e;

    invoke-virtual {v2, v6, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v0, LbD/hu;->b:Lam/e;

    check-cast v1, LbD/hw;

    sget-object v1, LbD/eL;->b:Lam/e;

    invoke-virtual {v0, v6, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
