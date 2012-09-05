.class public LbA/bg;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/a;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/bg;->a:Lam/e;

    new-instance v0, Lam/a;

    const/16 v1, 0x44d

    sget-object v2, LbA/bg;->a:Lam/e;

    invoke-direct {v0, v1, v2}, Lam/a;-><init>(ILam/e;)V

    sput-object v0, LbA/bg;->b:Lam/a;

    sget-object v1, LbA/bg;->a:Lam/e;

    const/16 v2, 0x21b

    const/4 v0, 0x0

    check-cast v0, LbA/bh;

    const/4 v0, 0x1

    sget-object v3, LbA/ai;->a:Lam/e;

    invoke-virtual {v1, v2, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
