.class public abstract LK/l;
.super LK/cC;


# instance fields
.field private a:LK/n;

.field private b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, LK/cC;-><init>()V

    sget-object v0, LK/n;->b:LK/n;

    iput-object v0, p0, LK/l;->a:LK/n;

    return-void
.end method

.method private c()Z
    .registers 3

    sget-object v0, LK/n;->d:LK/n;

    iput-object v0, p0, LK/l;->a:LK/n;

    invoke-virtual {p0}, LK/l;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, LK/l;->b:Ljava/lang/Object;

    iget-object v0, p0, LK/l;->a:LK/n;

    sget-object v1, LK/n;->c:LK/n;

    if-eq v0, v1, :cond_16

    sget-object v0, LK/n;->a:LK/n;

    iput-object v0, p0, LK/l;->a:LK/n;

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected final b()Ljava/lang/Object;
    .registers 2

    sget-object v0, LK/n;->c:LK/n;

    iput-object v0, p0, LK/l;->a:LK/n;

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LK/l;->a:LK/n;

    sget-object v3, LK/n;->d:LK/n;

    if-eq v0, v3, :cond_1e

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/v;->b(Z)V

    sget-object v0, LK/m;->a:[I

    iget-object v3, p0, LK/l;->a:LK/n;

    invoke-virtual {v3}, LK/n;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_22

    invoke-direct {p0}, LK/l;->c()Z

    move-result v2

    :goto_1d
    :pswitch_1d
    return v2

    :cond_1e
    move v0, v2

    goto :goto_9

    :pswitch_20
    move v2, v1

    goto :goto_1d

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, LK/l;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    sget-object v0, LK/n;->b:LK/n;

    iput-object v0, p0, LK/l;->a:LK/n;

    iget-object v0, p0, LK/l;->b:Ljava/lang/Object;

    return-object v0
.end method
