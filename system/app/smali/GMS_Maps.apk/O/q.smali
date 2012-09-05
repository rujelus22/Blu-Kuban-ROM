.class public LO/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;

.field public static final c:Lam/e;

.field public static final d:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x21e

    const/16 v3, 0x215

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LO/q;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LO/q;->b:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LO/q;->c:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LO/q;->d:Lam/e;

    sget-object v2, LO/q;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LO/s;

    invoke-virtual {v2, v3, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/s;

    invoke-virtual {v2, v3, v6, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/s;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/s;

    const/4 v0, 0x4

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/s;

    const/4 v0, 0x5

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/s;

    const/4 v0, 0x6

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/s;

    const/4 v0, 0x7

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/s;

    const/16 v0, 0x8

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/s;

    const/16 v0, 0x9

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LO/q;->b:Lam/e;

    move-object v0, v1

    check-cast v0, LO/t;

    invoke-virtual {v2, v4, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x218

    move-object v0, v1

    check-cast v0, LO/t;

    invoke-virtual {v2, v3, v6, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/t;

    const/4 v0, 0x3

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, LO/t;

    const/4 v0, 0x6

    sget-object v4, LO/q;->a:Lam/e;

    invoke-virtual {v2, v3, v0, v4}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, LO/t;

    const/4 v0, 0x7

    sget-object v4, LO/q;->a:Lam/e;

    invoke-virtual {v2, v3, v0, v4}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LO/q;->c:Lam/e;

    const/16 v3, 0x41b

    move-object v0, v1

    check-cast v0, LO/r;

    sget-object v0, LO/q;->b:Lam/e;

    invoke-virtual {v2, v3, v5, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v0, LO/q;->d:Lam/e;

    const/16 v2, 0x41b

    check-cast v1, LO/u;

    sget-object v1, LO/q;->c:Lam/e;

    invoke-virtual {v0, v2, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
