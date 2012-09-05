.class Lorg/snmp4j/util/TableUtils$InternalTableListener;
.super Ljava/lang/Object;
.source "TableUtils.java"

# interfaces
.implements Lorg/snmp4j/util/TableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/TableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalTableListener"
.end annotation


# instance fields
.field private volatile finished:Z

.field private rows:Ljava/util/List;

.field private final this$0:Lorg/snmp4j/util/TableUtils;


# direct methods
.method constructor <init>(Lorg/snmp4j/util/TableUtils;)V
    .registers 3
    .parameter

    .prologue
    .line 809
    iput-object p1, p0, Lorg/snmp4j/util/TableUtils$InternalTableListener;->this$0:Lorg/snmp4j/util/TableUtils;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 811
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/snmp4j/util/TableUtils$InternalTableListener;->rows:Ljava/util/List;

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/snmp4j/util/TableUtils$InternalTableListener;->finished:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized finished(Lorg/snmp4j/util/TableEvent;)V
    .registers 3
    .parameter "event"

    .prologue
    .line 820
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getStatus()I

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getIndex()Lorg/snmp4j/smi/OID;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 822
    :cond_d
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$InternalTableListener;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/util/TableUtils$InternalTableListener;->finished:Z

    .line 825
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 826
    monitor-exit p0

    return-void

    .line 820
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRows()Ljava/util/List;
    .registers 2

    .prologue
    .line 829
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$InternalTableListener;->rows:Ljava/util/List;

    return-object v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 833
    iget-boolean v0, p0, Lorg/snmp4j/util/TableUtils$InternalTableListener;->finished:Z

    return v0
.end method

.method public next(Lorg/snmp4j/util/TableEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 815
    iget-object v0, p0, Lorg/snmp4j/util/TableUtils$InternalTableListener;->rows:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 816
    const/4 v0, 0x1

    return v0
.end method
