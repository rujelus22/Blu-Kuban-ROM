.class public Lcom/google/common/util/concurrent/AtomicDouble;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J

.field private static final updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;


# instance fields
.field private volatile transient value:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 62
    const-class v0, Lcom/google/common/util/concurrent/AtomicDouble;

    const-string v1, "value"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 79
    return-void
.end method

.method public constructor <init>(D)V
    .registers 5
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 71
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 72
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 252
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 254
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/AtomicDouble;->set(D)V

    .line 255
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 244
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 245
    return-void
.end method


# virtual methods
.method public final addAndGet(D)D
    .registers 11
    .parameter

    .prologue
    .line 186
    :cond_0
    iget-wide v2, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 187
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 188
    add-double v6, v0, p1

    .line 189
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 190
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    return-wide v6
.end method

.method public final compareAndSet(DD)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 134
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final get()D
    .registers 3

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getAndAdd(D)D
    .registers 11
    .parameter

    .prologue
    .line 168
    :cond_0
    iget-wide v2, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 169
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 170
    add-double v0, v6, p1

    .line 171
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    .line 172
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    return-wide v6
.end method

.method public final getAndSet(D)D
    .registers 6
    .parameter

    .prologue
    .line 119
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 120
    sget-object v2, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndSet(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public final lazySet(D)V
    .registers 3
    .parameter

    .prologue
    .line 106
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/AtomicDouble;->set(D)V

    .line 110
    return-void
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public final set(D)V
    .registers 5
    .parameter

    .prologue
    .line 96
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 97
    iput-wide v0, p0, Lcom/google/common/util/concurrent/AtomicDouble;->value:J

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/AtomicDouble;->get()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final weakCompareAndSet(DD)Z
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 155
    sget-object v0, Lcom/google/common/util/concurrent/AtomicDouble;->updater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v4

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->weakCompareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method
