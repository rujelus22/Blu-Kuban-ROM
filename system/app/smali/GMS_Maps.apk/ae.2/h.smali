.class public final Lae/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lam/b;)V
    .registers 4

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v1}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1, v1}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lae/h;->a:Ljava/lang/String;

    :goto_10
    return-void

    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lae/h;->a:Ljava/lang/String;

    goto :goto_10
.end method

.method public static b()Lam/b;
    .registers 2

    new-instance v0, Lam/b;

    sget-object v1, LbD/z;->h:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lae/h;->a:Ljava/lang/String;

    return-object v0
.end method
