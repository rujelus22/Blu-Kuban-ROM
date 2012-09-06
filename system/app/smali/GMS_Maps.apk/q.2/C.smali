.class public Lq/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:I

.field b:Lq/d;

.field c:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lq/c;->c:Ljava/util/Iterator;

    .line 270
    invoke-direct {p0}, Lq/c;->b()V

    .line 271
    return-void
.end method

.method private b()V
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lq/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 289
    :cond_8
    iget-object v0, p0, Lq/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 290
    iget-object v0, p0, Lq/c;->c:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq/d;

    iput-object v0, p0, Lq/c;->b:Lq/d;

    .line 291
    iget-object v0, p0, Lq/c;->b:Lq/d;

    invoke-virtual {v0}, Lq/d;->c()I

    move-result v0

    if-lez v0, :cond_8

    .line 298
    :cond_22
    :goto_22
    const/4 v0, 0x0

    iput v0, p0, Lq/c;->a:I

    .line 299
    return-void

    .line 296
    :cond_26
    const/4 v0, 0x0

    iput-object v0, p0, Lq/c;->b:Lq/d;

    goto :goto_22
.end method


# virtual methods
.method public a()Lq/e;
    .registers 4

    .prologue
    .line 280
    iget-object v0, p0, Lq/c;->b:Lq/d;

    iget v1, p0, Lq/c;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lq/c;->a:I

    invoke-virtual {v0, v1}, Lq/d;->a(I)Lq/e;

    move-result-object v0

    .line 281
    iget v1, p0, Lq/c;->a:I

    iget-object v2, p0, Lq/c;->b:Lq/d;

    invoke-virtual {v2}, Lq/d;->c()I

    move-result v2

    if-lt v1, v2, :cond_19

    .line 282
    invoke-direct {p0}, Lq/c;->b()V

    .line 284
    :cond_19
    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lq/c;->b:Lq/d;

    if-eqz v0, :cond_10

    iget v0, p0, Lq/c;->a:I

    iget-object v1, p0, Lq/c;->b:Lq/d;

    invoke-virtual {v1}, Lq/d;->c()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 258
    invoke-virtual {p0}, Lq/c;->a()Lq/e;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
