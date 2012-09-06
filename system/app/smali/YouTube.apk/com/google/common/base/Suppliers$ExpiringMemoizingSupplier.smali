.class Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/am;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final delegate:Lcom/google/common/base/am;

.field final durationNanos:J

.field volatile transient expirationNanos:J

.field volatile transient value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/common/base/am;JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/am;

    iput-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/am;

    .line 156
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    .line 157
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1c

    const/4 v0, 0x1

    :goto_18
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 158
    return-void

    .line 157
    :cond_1c
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    .line 168
    iget-wide v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 169
    invoke-static {}, Lcom/google/common/base/ae;->a()J

    move-result-wide v2

    .line 170
    cmp-long v4, v0, v6

    if-eqz v4, :cond_12

    sub-long v4, v2, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_30

    .line 171
    :cond_12
    monitor-enter p0

    .line 172
    :try_start_13
    iget-wide v4, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2f

    .line 173
    iget-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->delegate:Lcom/google/common/base/am;

    invoke-interface {v0}, Lcom/google/common/base/am;->get()Ljava/lang/Object;

    move-result-object v0

    .line 174
    iput-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    .line 175
    iget-wide v4, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->durationNanos:J

    add-long v1, v2, v4

    .line 178
    cmp-long v3, v1, v6

    if-nez v3, :cond_2b

    const-wide/16 v1, 0x1

    :cond_2b
    iput-wide v1, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->expirationNanos:J

    .line 179
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_13 .. :try_end_2e} :catchall_33

    .line 183
    :goto_2e
    return-object v0

    .line 181
    :cond_2f
    monitor-exit p0

    .line 183
    :cond_30
    iget-object v0, p0, Lcom/google/common/base/Suppliers$ExpiringMemoizingSupplier;->value:Ljava/lang/Object;

    goto :goto_2e

    .line 181
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
