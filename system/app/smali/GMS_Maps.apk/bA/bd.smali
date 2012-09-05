.class public LbA/bd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x224

    const/16 v5, 0x21b

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/bd;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/bd;->b:Lam/e;

    sget-object v2, LbA/bd;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LbA/be;

    invoke-virtual {v2, v6, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/be;

    const/4 v0, 0x2

    sget-object v3, LbA/bd;->b:Lam/e;

    invoke-virtual {v2, v5, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/be;

    const/4 v0, 0x3

    sget-object v3, LbA/ai;->a:Lam/e;

    invoke-virtual {v2, v5, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LbA/bd;->b:Lam/e;

    move-object v0, v1

    check-cast v0, LbA/bf;

    invoke-virtual {v2, v6, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
