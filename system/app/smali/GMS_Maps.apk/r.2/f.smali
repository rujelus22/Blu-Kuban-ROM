.class public Lr/f;
.super Ljava/lang/Object;

# interfaces
.implements Lt/h;


# instance fields
.field private final a:Lt/h;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 13

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ai;

    invoke-virtual {v0}, Lt/ai;->a()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_b

    :cond_1e
    new-instance v3, Lt/i;

    invoke-direct {v3, v1}, Lt/i;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/ai;

    move v1, v2

    :goto_34
    invoke-virtual {v0}, Lt/ai;->a()I

    move-result v5

    if-ge v1, v5, :cond_27

    const/4 v5, 0x3

    new-array v5, v5, [Lt/L;

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    aput-object v6, v5, v2

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    aput-object v6, v5, v9

    new-instance v6, Lt/L;

    invoke-direct {v6}, Lt/L;-><init>()V

    aput-object v6, v5, v10

    aget-object v6, v5, v2

    aget-object v7, v5, v9

    aget-object v8, v5, v10

    invoke-virtual {v0, v1, v6, v7, v8}, Lt/ai;->a(ILt/L;Lt/L;Lt/L;)V

    new-instance v6, Lt/O;

    invoke-direct {v6, v5}, Lt/O;-><init>([Lt/L;)V

    invoke-virtual {v3, v6}, Lt/i;->a(Lt/h;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_66
    iput-object v3, p0, Lr/f;->a:Lt/h;

    return-void
.end method


# virtual methods
.method public a()Lt/V;
    .registers 2

    iget-object v0, p0, Lr/f;->a:Lt/h;

    invoke-interface {v0}, Lt/h;->a()Lt/V;

    move-result-object v0

    return-object v0
.end method

.method public a(Lt/L;)Z
    .registers 3

    iget-object v0, p0, Lr/f;->a:Lt/h;

    invoke-interface {v0, p1}, Lt/h;->a(Lt/L;)Z

    move-result v0

    return v0
.end method

.method public a(Lt/W;)Z
    .registers 3

    iget-object v0, p0, Lr/f;->a:Lt/h;

    invoke-interface {v0, p1}, Lt/h;->a(Lt/W;)Z

    move-result v0

    return v0
.end method
