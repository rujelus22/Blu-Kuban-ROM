.class public abstract Lcom/google/common/collect/k;
.super Lcom/google/common/collect/mt;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/google/common/collect/mt;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/common/collect/k;->a:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/common/collect/k;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/google/common/collect/k;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 73
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 76
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/common/collect/k;->a:Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_17

    .line 78
    iget-object v1, p0, Lcom/google/common/collect/k;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/k;->a:Ljava/lang/Object;

    return-object v0

    :catchall_17
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/k;->a:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/k;->a:Ljava/lang/Object;

    throw v0
.end method
