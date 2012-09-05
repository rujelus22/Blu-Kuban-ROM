.class public LaY/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/D;


# instance fields
.field private a:LaJ/B;


# direct methods
.method public constructor <init>(LaJ/B;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaY/ai;->a:LaJ/B;

    return-void
.end method


# virtual methods
.method public a()LaJ/B;
    .registers 2

    iget-object v0, p0, LaY/ai;->a:LaJ/B;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .registers 2

    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    return-object v0
.end method

.method public c()B
    .registers 2

    const/16 v0, 0x15

    return v0
.end method

.method public d()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/Object;
    .registers 1

    return-object p0
.end method

.method public g()Lar/k;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
