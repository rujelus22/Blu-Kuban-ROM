.class public LbA/aT;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x224

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/aT;->a:Lam/e;

    sget-object v2, LbA/aT;->a:Lam/e;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, LbA/aU;

    const/4 v0, 0x1

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/aU;

    const/4 v0, 0x2

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LbA/aU;

    const/4 v0, 0x3

    invoke-virtual {v2, v4, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
