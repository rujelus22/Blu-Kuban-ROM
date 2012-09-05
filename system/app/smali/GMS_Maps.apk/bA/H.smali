.class public LbA/H;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x0

    const/16 v4, 0x21b

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/H;->a:Lam/e;

    new-instance v0, Lam/a;

    const v2, 0x1032bef

    sget-object v3, LbA/H;->a:Lam/e;

    invoke-direct {v0, v2, v3}, Lam/a;-><init>(ILam/e;)V

    sput-object v0, LbA/H;->b:Lam/a;

    sget-object v2, LbA/H;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LbA/I;

    const/4 v0, 0x1

    sget-object v3, LbA/ap;->a:Lam/e;

    invoke-virtual {v2, v4, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/I;

    const/4 v0, 0x2

    sget-object v3, LbA/ap;->b:Lam/e;

    invoke-virtual {v2, v4, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v0

    check-cast v1, LbA/I;

    const/4 v1, 0x3

    sget-object v2, LbA/ai;->a:Lam/e;

    invoke-virtual {v0, v4, v1, v2}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
