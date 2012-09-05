.class public LbA/bb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lam/e;

.field public static final b:Lam/a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Lam/e;

    invoke-direct {v0}, Lam/e;-><init>()V

    sput-object v0, LbA/bb;->a:Lam/e;

    new-instance v0, Lam/a;

    const v2, 0x105008f

    sget-object v3, LbA/bb;->a:Lam/e;

    invoke-direct {v0, v2, v3}, Lam/a;-><init>(ILam/e;)V

    sput-object v0, LbA/bb;->b:Lam/a;

    sget-object v2, LbA/bb;->a:Lam/e;

    const/16 v3, 0x21b

    move-object v0, v1

    check-cast v0, LbA/bc;

    const/4 v0, 0x1

    sget-object v4, LbA/c;->a:Lam/e;

    invoke-virtual {v2, v3, v0, v4}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    move-result-object v2

    const/16 v3, 0x215

    move-object v0, v1

    check-cast v0, LbA/bc;

    const/4 v0, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lam/e;->a(IILjava/lang/Object;)Lam/e;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
