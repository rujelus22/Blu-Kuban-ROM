.class public LbD/bu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x415

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/bu;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/bu;->b:Lam/e;

    sget-object v2, LbD/bu;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LbD/bv;

    invoke-virtual {v2, v4, v3, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LbD/bu;->b:Lam/e;

    move-object v0, v1

    check-cast v0, LbD/bw;

    invoke-virtual {v2, v4, v3, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
