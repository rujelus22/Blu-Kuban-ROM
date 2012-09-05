.class final Lcom/google/api/client/util/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:I

.field b:I

.field final synthetic c:Lcom/google/api/client/util/w;


# direct methods
.method constructor <init>(Lcom/google/api/client/util/w;)V
    .registers 3
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/google/api/client/util/x;->c:Lcom/google/api/client/util/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iget-object v0, p0, Lcom/google/api/client/util/x;->c:Lcom/google/api/client/util/w;

    iget-object v0, v0, Lcom/google/api/client/util/w;->a:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/api/client/util/x;->a:I

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/api/client/util/x;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 3

    .prologue
    .line 372
    iget v0, p0, Lcom/google/api/client/util/x;->b:I

    iget v1, p0, Lcom/google/api/client/util/x;->a:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/google/api/client/util/x;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 377
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 379
    :cond_c
    iget-object v0, p0, Lcom/google/api/client/util/x;->c:Lcom/google/api/client/util/w;

    iget-object v0, v0, Lcom/google/api/client/util/w;->a:Ljava/lang/Object;

    iget v1, p0, Lcom/google/api/client/util/x;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/api/client/util/x;->b:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
