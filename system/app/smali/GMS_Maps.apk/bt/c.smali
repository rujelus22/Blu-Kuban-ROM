.class public Lbt/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, Lbt/c;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, Lbt/c;->b:Lam/e;

    sget-object v2, Lbt/c;->a:Lam/e;

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, Lbt/d;

    sget-object v0, Lbt/a;->a:Lam/e;

    invoke-virtual {v2, v3, v5, v0}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x424

    move-object v0, v1

    check-cast v0, Lbt/d;

    const/4 v0, 0x2

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x416

    move-object v0, v1

    check-cast v0, Lbt/d;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v0, Lbt/c;->b:Lam/e;

    const/16 v2, 0x21e

    check-cast v1, Lbt/e;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lar/n;->a(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v5, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
