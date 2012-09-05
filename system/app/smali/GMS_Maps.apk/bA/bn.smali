.class public LbA/bn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x21b

    const/16 v3, 0x218

    const/16 v4, 0x224

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/bn;->a:Lam/e;

    sget-object v2, LbA/bn;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LbA/bo;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/bo;

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/bo;

    const/4 v0, 0x3

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/bo;

    const/4 v0, 0x4

    sget-object v3, LbA/o;->a:Lam/e;

    invoke-virtual {v2, v5, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/bo;

    const/4 v0, 0x5

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/bo;

    const/4 v0, 0x6

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/bo;

    const/4 v0, 0x7

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v0

    check-cast v1, LbA/bo;

    const/16 v1, 0x9

    sget-object v2, LbA/ai;->a:Lam/e;

    invoke-virtual {v0, v5, v1, v2}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
