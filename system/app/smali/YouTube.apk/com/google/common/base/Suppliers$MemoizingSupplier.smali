.class Lcom/google/common/base/Suppliers$MemoizingSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/am;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/base/am;

.field volatile transient initialized:Z

.field transient value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/base/am;)V
    .registers 2
    .parameter

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lcom/google/common/base/am;

    .line 101
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    if-nez v0, :cond_17

    .line 107
    monitor-enter p0

    .line 108
    :try_start_5
    iget-boolean v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    if-nez v0, :cond_16

    .line 109
    iget-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->delegate:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    .line 110
    iput-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;

    .line 111
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->initialized:Z

    .line 112
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1a

    .line 116
    :goto_15
    return-object v0

    .line 114
    :cond_16
    monitor-exit p0

    .line 116
    :cond_17
    iget-object v0, p0, Lcom/google/common/base/Suppliers$MemoizingSupplier;->value:Ljava/lang/Object;

    goto :goto_15

    .line 114
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
