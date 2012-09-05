.class public Lbr/I;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;

.field public static final c:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x21b

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, Lbr/I;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, Lbr/I;->b:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, Lbr/I;->c:Lam/e;

    sget-object v2, Lbr/I;->a:Lam/e;

    move-object v0, v1

    check-cast v0, Lbr/L;

    sget-object v0, LO/i;->a:Lam/e;

    invoke-virtual {v2, v4, v5, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, Lbr/I;->b:Lam/e;

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, Lbr/J;

    invoke-virtual {v2, v3, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x115

    move-object v0, v1

    check-cast v0, Lbr/J;

    invoke-virtual {v2, v3, v6, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x11b

    move-object v0, v1

    check-cast v0, Lbr/J;

    sget-object v0, Lbr/s;->b:Lam/e;

    invoke-virtual {v2, v3, v7, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbr/J;

    const/4 v0, 0x4

    sget-object v3, Lbr/ag;->a:Lam/e;

    invoke-virtual {v2, v4, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbr/J;

    const/4 v0, 0x5

    sget-object v3, Lbr/M;->a:Lam/e;

    invoke-virtual {v2, v4, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbr/J;

    const/4 v0, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lbr/J;

    const/16 v0, 0x270f

    sget-object v3, Lbr/I;->a:Lam/e;

    invoke-virtual {v2, v4, v0, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, Lbr/I;->c:Lam/e;

    const/16 v3, 0x124

    move-object v0, v1

    check-cast v0, Lbr/K;

    invoke-virtual {v2, v3, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x115

    move-object v0, v1

    check-cast v0, Lbr/K;

    invoke-virtual {v2, v3, v6, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x224

    move-object v0, v1

    check-cast v0, Lbr/K;

    invoke-virtual {v2, v3, v7, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
