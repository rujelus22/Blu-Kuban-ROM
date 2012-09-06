.class public abstract Lcom/google/common/collect/AbstractIterator;
.super Lcom/google/common/collect/mt;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/common/collect/AbstractIterator$State;

.field private b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/common/collect/mt;-><init>()V

    .line 65
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    .line 68
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method protected final b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    sget-object v3, Lcom/google/common/collect/AbstractIterator$State;->FAILED:Lcom/google/common/collect/AbstractIterator$State;

    if-eq v0, v3, :cond_2f

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/ag;->b(Z)V

    .line 131
    sget-object v0, Lcom/google/common/collect/j;->a:[I

    iget-object v3, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    invoke-virtual {v3}, Lcom/google/common/collect/AbstractIterator$State;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_34

    .line 138
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->FAILED:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    sget-object v3, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    if-eq v0, v3, :cond_2e

    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    move v2, v1

    :cond_2e
    :goto_2e
    :pswitch_2e
    return v2

    :cond_2f
    move v0, v2

    .line 130
    goto :goto_9

    :pswitch_31
    move v2, v1

    .line 135
    goto :goto_2e

    .line 131
    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_31
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 154
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 156
    :cond_c
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->a:Lcom/google/common/collect/AbstractIterator$State;

    .line 157
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->b:Ljava/lang/Object;

    return-object v0
.end method
