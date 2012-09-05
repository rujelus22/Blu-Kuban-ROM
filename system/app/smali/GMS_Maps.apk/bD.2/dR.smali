.class public LbD/dR;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x0

    const/16 v4, 0x218

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/dR;->a:Lam/e;

    sget-object v2, LbD/dR;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LbD/dS;

    const/4 v0, 0x1

    sget-object v3, Lam/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/dS;

    const/4 v0, 0x2

    sget-object v3, Lam/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/dS;

    const/4 v0, 0x3

    sget-object v3, Lam/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v2, v4, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v0

    check-cast v1, LbD/dS;

    const/4 v1, 0x4

    sget-object v2, Lam/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v1, v2}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
