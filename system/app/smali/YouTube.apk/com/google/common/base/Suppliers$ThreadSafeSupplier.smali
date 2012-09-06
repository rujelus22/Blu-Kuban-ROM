.class Lcom/google/common/base/Suppliers$ThreadSafeSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/am;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/base/am;


# direct methods
.method constructor <init>(Lcom/google/common/base/am;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/google/common/base/Suppliers$ThreadSafeSupplier;->delegate:Lcom/google/common/base/am;

    .line 224
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 227
    iget-object v1, p0, Lcom/google/common/base/Suppliers$ThreadSafeSupplier;->delegate:Lcom/google/common/base/am;

    monitor-enter v1

    .line 228
    :try_start_3
    iget-object v0, p0, Lcom/google/common/base/Suppliers$ThreadSafeSupplier;->delegate:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    return-object v0

    .line 229
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method
