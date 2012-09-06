.class public abstract Lcom/google/common/collect/l;
.super Lcom/google/common/collect/dE;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/common/collect/n;

.field private b:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/common/collect/dE;-><init>()V

    .line 63
    sget-object v0, Lcom/google/common/collect/n;->b:Lcom/google/common/collect/n;

    iput-object v0, p0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/n;

    .line 66
    return-void
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 140
    sget-object v0, Lcom/google/common/collect/n;->d:Lcom/google/common/collect/n;

    iput-object v0, p0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/n;

    .line 141
    invoke-virtual {p0}, Lcom/google/common/collect/l;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/l;->b:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/n;

    sget-object v1, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/n;

    if-eq v0, v1, :cond_16

    .line 143
    sget-object v0, Lcom/google/common/collect/n;->a:Lcom/google/common/collect/n;

    iput-object v0, p0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/n;

    .line 144
    const/4 v0, 0x1

    .line 146
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

    .prologue
    .line 122
    sget-object v0, Lcom/google/common/collect/n;->c:Lcom/google/common/collect/n;

    iput-object v0, p0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/n;

    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/n;

    sget-object v3, Lcom/google/common/collect/n;->d:Lcom/google/common/collect/n;

    if-eq v0, v3, :cond_1e

    move v0, v1

    :goto_9
    invoke-static {v0}, Lcom/google/common/base/P;->b(Z)V

    .line 129
    sget-object v0, Lcom/google/common/collect/m;->a:[I

    iget-object v3, p0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/n;

    invoke-virtual {v3}, Lcom/google/common/collect/n;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_22

    .line 136
    invoke-direct {p0}, Lcom/google/common/collect/l;->c()Z

    move-result v2

    :goto_1d
    :pswitch_1d
    return v2

    :cond_1e
    move v0, v2

    .line 128
    goto :goto_9

    :pswitch_20
    move v2, v1

    .line 133
    goto :goto_1d

    .line 129
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/common/collect/l;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 152
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 154
    :cond_c
    sget-object v0, Lcom/google/common/collect/n;->b:Lcom/google/common/collect/n;

    iput-object v0, p0, Lcom/google/common/collect/l;->a:Lcom/google/common/collect/n;

    .line 155
    iget-object v0, p0, Lcom/google/common/collect/l;->b:Ljava/lang/Object;

    return-object v0
.end method
