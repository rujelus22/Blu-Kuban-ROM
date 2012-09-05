.class public Lax/as;
.super Ljava/lang/Object;


# static fields
.field private static final a:LK/bp;


# instance fields
.field private b:Lam/b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, LK/bp;->f()LK/bq;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LK/bq;->a(Ljava/lang/Object;Ljava/lang/Object;)LK/bq;

    move-result-object v0

    invoke-virtual {v0}, LK/bq;->a()LK/bp;

    move-result-object v0

    sput-object v0, Lax/as;->a:LK/bp;

    return-void
.end method

.method public constructor <init>(Lam/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lax/as;->b:Lam/b;

    return-void
.end method


# virtual methods
.method public a(I)Lam/b;
    .registers 4

    sget-object v0, Lax/as;->a:LK/bp;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/bp;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-object v0, Lax/as;->a:LK/bp;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, LK/bp;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lax/as;->b:Lam/b;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lax/as;->b:Lam/b;

    invoke-virtual {v1, v0}, Lam/b;->k(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lax/as;->b:Lam/b;

    invoke-virtual {v1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method
