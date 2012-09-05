.class Lorg/snmp4j/util/TreeUtils$InternalTreeListener;
.super Ljava/lang/Object;
.source "TreeUtils.java"

# interfaces
.implements Lorg/snmp4j/util/TreeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/TreeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalTreeListener"
.end annotation


# instance fields
.field private collectedEvents:Ljava/util/List;

.field private volatile finished:Z

.field private final this$0:Lorg/snmp4j/util/TreeUtils;


# direct methods
.method public constructor <init>(Lorg/snmp4j/util/TreeUtils;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter "eventList"

    .prologue
    .line 267
    iput-object p1, p0, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;->this$0:Lorg/snmp4j/util/TreeUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;->finished:Z

    .line 268
    iput-object p2, p0, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;->collectedEvents:Ljava/util/List;

    .line 269
    return-void
.end method


# virtual methods
.method public declared-synchronized finished(Lorg/snmp4j/util/TreeEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 277
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;->collectedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;->finished:Z

    .line 279
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 280
    monitor-exit p0

    return-void

    .line 277
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCollectedEvents()Ljava/util/List;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;->collectedEvents:Ljava/util/List;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 287
    iget-boolean v0, p0, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;->finished:Z

    return v0
.end method

.method public declared-synchronized next(Lorg/snmp4j/util/TreeEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/util/TreeUtils$InternalTreeListener;->collectedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    .line 273
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 272
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
