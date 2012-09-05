.class public LM/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/e;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/16 v5, 0x218

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LM/a;->a:Lam/e;

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LM/a;->b:Lam/e;

    sget-object v2, LM/a;->a:Lam/e;

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, LM/c;

    invoke-virtual {v2, v3, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    move-object v0, v1

    check-cast v0, LM/c;

    const/4 v0, 0x2

    invoke-virtual {v2, v5, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    sget-object v2, LM/a;->b:Lam/e;

    move-object v0, v1

    check-cast v0, LM/b;

    invoke-virtual {v2, v5, v4, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
