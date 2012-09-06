.class abstract Lcom/google/common/base/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:Lcom/google/common/base/ae;

.field c:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    sget-object v0, Lcom/google/common/base/ae;->b:Lcom/google/common/base/ae;

    iput-object v0, p0, Lcom/google/common/base/ad;->b:Lcom/google/common/base/ae;

    .line 458
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Z;)V
    .registers 2
    .parameter

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/google/common/base/ad;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected final b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 467
    sget-object v0, Lcom/google/common/base/ae;->c:Lcom/google/common/base/ae;

    iput-object v0, p0, Lcom/google/common/base/ad;->b:Lcom/google/common/base/ae;

    .line 468
    const/4 v0, 0x0

    return-object v0
.end method

.method c()Z
    .registers 3

    .prologue
    .line 485
    sget-object v0, Lcom/google/common/base/ae;->d:Lcom/google/common/base/ae;

    iput-object v0, p0, Lcom/google/common/base/ad;->b:Lcom/google/common/base/ae;

    .line 486
    invoke-virtual {p0}, Lcom/google/common/base/ad;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/ad;->c:Ljava/lang/Object;

    .line 487
    iget-object v0, p0, Lcom/google/common/base/ad;->b:Lcom/google/common/base/ae;

    sget-object v1, Lcom/google/common/base/ae;->c:Lcom/google/common/base/ae;

    if-eq v0, v1, :cond_16

    .line 488
    sget-object v0, Lcom/google/common/base/ae;->a:Lcom/google/common/base/ae;

    iput-object v0, p0, Lcom/google/common/base/ad;->b:Lcom/google/common/base/ae;

    .line 489
    const/4 v0, 0x1

    .line 491
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lcom/google/common/base/ad;->b:Lcom/google/common/base/ae;

    sget-object v3, Lcom/google/common/base/ae;->d:Lcom/google/common/base/ae;

    if-eq v0, v3, :cond_1e

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 474
    sget-object v0, Lcom/google/common/base/ac;->a:[I

    iget-object v3, p0, Lcom/google/common/base/ad;->b:Lcom/google/common/base/ae;

    invoke-virtual {v3}, Lcom/google/common/base/ae;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_22

    .line 481
    invoke-virtual {p0}, Lcom/google/common/base/ad;->c()Z

    move-result v2

    :goto_1d
    :pswitch_1d
    return v2

    :cond_1e
    move v0, v2

    .line 473
    goto :goto_9

    :pswitch_20
    move v2, v1

    .line 478
    goto :goto_1d

    .line 474
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/google/common/base/ad;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 497
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 499
    :cond_c
    sget-object v0, Lcom/google/common/base/ae;->b:Lcom/google/common/base/ae;

    iput-object v0, p0, Lcom/google/common/base/ad;->b:Lcom/google/common/base/ae;

    .line 500
    iget-object v0, p0, Lcom/google/common/base/ad;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
