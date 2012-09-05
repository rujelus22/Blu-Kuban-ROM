.class public Lbr/s;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, Lbr/s;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, Lbr/s;->b:Lam/e;

    sget-object v2, Lbr/s;->a:Lam/e;

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, Lbr/u;

    invoke-virtual {v2, v3, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x115

    move-object v0, v1

    check-cast v0, Lbr/u;

    invoke-virtual {v2, v3, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbr/u;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, Lbr/s;->b:Lam/e;

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lbr/t;

    invoke-virtual {v2, v3, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v0

    const/16 v2, 0x41b

    check-cast v1, Lbr/t;

    sget-object v1, Lbr/s;->a:Lam/e;

    invoke-virtual {v0, v2, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
