.class public LbD/fu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    const/16 v6, 0x21e

    const/16 v5, 0x224

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/fu;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/fu;->b:Lam/e;

    sget-object v2, LbD/fu;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LbD/fv;

    invoke-static {v7, v8}, Lar/n;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v9, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fv;

    const/4 v0, 0x2

    invoke-static {v7, v8}, Lar/n;->a(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fv;

    const/4 v0, 0x3

    invoke-virtual {v2, v5, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, LbD/fv;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fv;

    const/4 v0, 0x5

    invoke-virtual {v2, v5, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fv;

    const/4 v0, 0x6

    invoke-virtual {v2, v5, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, LbD/fv;

    const/4 v0, 0x7

    sget-object v4, LbD/cO;->b:Lam/e;

    invoke-virtual {v2, v3, v0, v4}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, LbD/fv;

    const/16 v0, 0x8

    sget-object v4, LbD/cO;->g:Lam/e;

    invoke-virtual {v2, v3, v0, v4}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LbD/fu;->b:Lam/e;

    move-object v0, v1

    check-cast v0, LbD/fw;

    invoke-static {v7, v8}, Lar/n;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v6, v9, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fw;

    const/4 v0, 0x2

    invoke-virtual {v2, v5, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fw;

    const/4 v0, 0x3

    invoke-virtual {v2, v5, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fw;

    const/4 v0, 0x4

    invoke-virtual {v2, v5, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
