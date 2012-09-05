.class public LbD/hB;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;

.field public static final c:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/16 v7, 0x214

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/hB;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/hB;->b:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/hB;->c:Lam/e;

    sget-object v2, LbD/hB;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LbD/hC;

    invoke-virtual {v2, v7, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, LbD/hC;

    sget-object v0, LbD/hB;->b:Lam/e;

    invoke-virtual {v2, v3, v5, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/hC;

    invoke-virtual {v2, v7, v6, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LbD/hB;->b:Lam/e;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, LbD/hD;

    invoke-virtual {v2, v3, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x21d

    move-object v0, v1

    check-cast v0, LbD/hD;

    invoke-virtual {v2, v3, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, LbD/hD;

    invoke-virtual {v2, v3, v6, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, LbD/hD;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
