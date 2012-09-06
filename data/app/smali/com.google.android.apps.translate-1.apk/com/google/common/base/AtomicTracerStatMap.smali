.class public final Lcom/google/common/base/AtomicTracerStatMap;
.super Ljava/lang/Object;
.source "AtomicTracerStatMap.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation


# instance fields
.field private final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/AtomicTracerStatMap;->map:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/common/base/AtomicTracerStatMap;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public incrementBy(Ljava/lang/String;J)V
    .registers 8
    .parameter "key"
    .parameter "delta"

    .prologue
    .line 45
    iget-object v1, p0, Lcom/google/common/base/AtomicTracerStatMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 46
    .local v0, oldValue:Ljava/lang/Long;
    if-nez v0, :cond_21

    .line 48
    iget-object v1, p0, Lcom/google/common/base/AtomicTracerStatMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #oldValue:Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .line 49
    .restart local v0       #oldValue:Ljava/lang/Long;
    if-nez v0, :cond_21

    .line 60
    :goto_18
    return-void

    .line 58
    :cond_19
    iget-object v1, p0, Lcom/google/common/base/AtomicTracerStatMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #oldValue:Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;

    .line 55
    .restart local v0       #oldValue:Ljava/lang/Long;
    :cond_21
    iget-object v1, p0, Lcom/google/common/base/AtomicTracerStatMap;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_18
.end method
