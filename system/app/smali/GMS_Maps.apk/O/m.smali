.class public LO/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x117

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LO/m;->a:Lam/e;

    sget-object v2, LO/m;->a:Lam/e;

    move-object v0, v1

    check-cast v0, LO/n;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LO/n;

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v0

    const/16 v2, 0x21b

    check-cast v1, LO/n;

    const/16 v1, 0xf

    sget-object v3, LbB/a;->a:Lam/e;

    invoke-virtual {v0, v2, v1, v3}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
