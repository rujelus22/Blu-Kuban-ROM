.class public LbD/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;

.field public static final c:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/16 v6, 0x224

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/i;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/i;->b:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbD/i;->c:Lam/e;

    sget-object v2, LbD/i;->a:Lam/e;

    const/16 v3, 0x113

    move-object v0, v1

    check-cast v0, LbD/j;

    invoke-virtual {v2, v3, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x221

    move-object v0, v1

    check-cast v0, LbD/j;

    invoke-virtual {v2, v3, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LbD/i;->b:Lam/e;

    move-object v0, v1

    check-cast v0, LbD/l;

    invoke-virtual {v2, v6, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/l;

    invoke-virtual {v2, v6, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LbD/i;->c:Lam/e;

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, LbD/k;

    sget-object v0, LbD/i;->b:Lam/e;

    invoke-virtual {v2, v3, v4, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbD/k;

    invoke-virtual {v2, v6, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
