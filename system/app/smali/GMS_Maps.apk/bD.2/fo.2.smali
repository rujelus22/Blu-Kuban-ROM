.class public LbD/fo;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0x21b

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/fo;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/fo;->b:Lam/e;

    sget-object v2, LbD/fo;->a:Lam/e;

    const/16 v3, 0x11b

    move-object v0, v1

    check-cast v0, LbD/fq;

    sget-object v0, LbD/eL;->b:Lam/e;

    invoke-virtual {v2, v3, v7, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fq;

    sget-object v0, LbD/da;->a:Lam/e;

    invoke-virtual {v2, v6, v8, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fq;

    sget-object v0, LbD/fo;->b:Lam/e;

    invoke-virtual {v2, v6, v9, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/fq;

    const/4 v0, 0x4

    sget-object v3, LbD/aR;->g:Lam/e;

    invoke-virtual {v2, v6, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LbD/fo;->b:Lam/e;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, LbD/fp;

    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Lar/n;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v7, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, LbD/fp;

    invoke-virtual {v2, v3, v8, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v0

    check-cast v1, LbD/fp;

    sget-object v1, LbD/da;->a:Lam/e;

    invoke-virtual {v0, v6, v9, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
