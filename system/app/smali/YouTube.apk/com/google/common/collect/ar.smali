.class final Lcom/google/common/collect/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lcom/google/common/collect/ao;

.field private final b:Ljava/util/Iterator;

.field private c:Lcom/google/common/collect/fk;

.field private d:I

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/common/collect/ao;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/google/common/collect/ao;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ar;->b:Ljava/util/Iterator;

    .line 88
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/google/common/collect/ar;->d:I

    if-gtz v0, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/ar;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/google/common/collect/ar;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 96
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 98
    :cond_c
    iget v0, p0, Lcom/google/common/collect/ar;->d:I

    if-nez v0, :cond_24

    .line 99
    iget-object v0, p0, Lcom/google/common/collect/ar;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/fk;

    iput-object v0, p0, Lcom/google/common/collect/ar;->c:Lcom/google/common/collect/fk;

    .line 100
    iget-object v0, p0, Lcom/google/common/collect/ar;->c:Lcom/google/common/collect/fk;

    invoke-interface {v0}, Lcom/google/common/collect/fk;->b()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/ar;->d:I

    iput v0, p0, Lcom/google/common/collect/ar;->e:I

    .line 102
    :cond_24
    iget v0, p0, Lcom/google/common/collect/ar;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ar;->d:I

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/ar;->f:Z

    .line 104
    iget-object v0, p0, Lcom/google/common/collect/ar;->c:Lcom/google/common/collect/fk;

    invoke-interface {v0}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/common/collect/ar;->f:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/common/base/t;->b(ZLjava/lang/Object;)V

    .line 110
    iget v0, p0, Lcom/google/common/collect/ar;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 111
    iget-object v0, p0, Lcom/google/common/collect/ar;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 115
    :goto_11
    iget v0, p0, Lcom/google/common/collect/ar;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/ar;->e:I

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/ar;->f:Z

    .line 117
    return-void

    .line 113
    :cond_1b
    iget-object v0, p0, Lcom/google/common/collect/ar;->a:Lcom/google/common/collect/ao;

    iget-object v1, p0, Lcom/google/common/collect/ar;->c:Lcom/google/common/collect/fk;

    invoke-interface {v1}, Lcom/google/common/collect/fk;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ao;->remove(Ljava/lang/Object;)Z

    goto :goto_11
.end method
