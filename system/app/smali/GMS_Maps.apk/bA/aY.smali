.class public LbA/aY;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x21b

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/aY;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/aY;->b:Lam/e;

    sget-object v2, LbA/aY;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LbA/aZ;

    sget-object v0, LbA/bd;->a:Lam/e;

    invoke-virtual {v2, v6, v5, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, LbA/aZ;

    const/4 v0, 0x2

    sget-object v4, LbA/aF;->e:Lam/e;

    invoke-virtual {v2, v3, v0, v4}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v0, LbA/aY;->b:Lam/e;

    check-cast v1, LbA/ba;

    sget-object v1, LbA/aM;->a:Lam/e;

    invoke-virtual {v0, v6, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
