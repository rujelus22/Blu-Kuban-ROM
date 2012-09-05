.class public Lax/ae;
.super Ljava/lang/Object;


# instance fields
.field private a:Lam/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()V
    .registers 3

    iget-object v0, p0, Lax/ae;->a:Lam/b;

    if-nez v0, :cond_14

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->C:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    iput-object v0, p0, Lax/ae;->a:Lam/b;

    const-string v0, "LATITUDE_OPT_IN_HISTORY"

    iget-object v1, p0, Lax/ae;->a:Lam/b;

    invoke-static {v0, v1}, Lbf/c;->a(Ljava/lang/String;Lam/b;)Lam/b;

    :cond_14
    return-void
.end method


# virtual methods
.method a()Ljava/util/List;
    .registers 6

    const/4 v4, 0x1

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0}, Lax/ae;->b()V

    iget-object v0, p0, Lax/ae;->a:Lam/b;

    invoke-virtual {v0, v4}, Lam/b;->l(I)I

    move-result v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_1d

    iget-object v3, p0, Lax/ae;->a:Lam/b;

    invoke-virtual {v3, v4, v0}, Lam/b;->f(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return-object v1
.end method
