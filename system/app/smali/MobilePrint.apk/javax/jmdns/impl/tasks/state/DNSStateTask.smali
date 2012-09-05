.class public abstract Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.super Ljavax/jmdns/impl/tasks/DNSTask;
.source "DNSStateTask.java"


# static fields
.field private static _defaultTTL:I

.field static logger1:Ljava/util/logging/Logger;


# instance fields
.field private _taskState:Ljavax/jmdns/impl/constants/DNSState;

.field private final _ttl:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-class v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    .line 32
    const/16 v0, 0xe10

    sput v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    .line 24
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;I)V
    .registers 4
    .parameter "jmDNSImpl"
    .parameter "ttl"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Ljavax/jmdns/impl/tasks/DNSTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 60
    iput p2, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    .line 61
    return-void
.end method

.method public static defaultTTL()I
    .registers 1

    .prologue
    .line 42
    sget v0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    return v0
.end method

.method public static setDefaultTTL(I)V
    .registers 1
    .parameter "value"

    .prologue
    .line 51
    sput p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_defaultTTL:I

    .line 52
    return-void
.end method


# virtual methods
.method protected advanceObjectsState(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/jmdns/impl/DNSStatefulObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    if-eqz p1, :cond_c

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    .line 167
    :cond_c
    return-void

    .line 161
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSStatefulObject;

    .line 162
    .local v0, object:Ljavax/jmdns/impl/DNSStatefulObject;
    monitor-enter v0

    .line 163
    :try_start_14
    invoke-interface {v0, p0}, Ljavax/jmdns/impl/DNSStatefulObject;->advanceState(Ljavax/jmdns/impl/tasks/DNSTask;)Z

    .line 162
    monitor-exit v0

    goto :goto_6

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method protected abstract advanceTask()V
.end method

.method protected associate(Ljavax/jmdns/impl/constants/DNSState;)V
    .registers 5
    .parameter "state"

    .prologue
    .line 77
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    monitor-enter v2

    .line 78
    :try_start_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljavax/jmdns/impl/JmDNSImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    .line 77
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_24

    .line 80
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_27

    .line 83
    return-void

    .line 77
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 80
    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    .line 81
    .local v0, serviceInfo:Ljavax/jmdns/ServiceInfo;
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v0           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v0, p0, p1}, Ljavax/jmdns/impl/ServiceInfoImpl;->associateWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)V

    goto :goto_1d
.end method

.method protected abstract buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract checkRunCondition()Z
.end method

.method protected abstract createOugoing()Ljavax/jmdns/impl/DNSOutgoing;
.end method

.method public getTTL()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_ttl:I

    return v0
.end method

.method public abstract getTaskDescription()Ljava/lang/String;
.end method

.method protected getTaskState()Ljavax/jmdns/impl/constants/DNSState;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    return-object v0
.end method

.method protected abstract recoverTask(Ljava/lang/Throwable;)V
.end method

.method protected removeAssociation()V
    .registers 4

    .prologue
    .line 90
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    monitor-enter v2

    .line 91
    :try_start_5
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljavax/jmdns/impl/JmDNSImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    .line 90
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_24

    .line 95
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_27

    .line 98
    return-void

    .line 90
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1

    .line 95
    :cond_27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/ServiceInfo;

    .line 96
    .local v0, serviceInfo:Ljavax/jmdns/ServiceInfo;
    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    .end local v0           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    invoke-virtual {v0, p0}, Ljavax/jmdns/impl/ServiceInfoImpl;->removeAssociationWithTask(Ljavax/jmdns/impl/tasks/DNSTask;)V

    goto :goto_1d
.end method

.method public run()V
    .registers 11

    .prologue
    .line 102
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->createOugoing()Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v3

    .line 104
    .local v3, out:Ljavax/jmdns/impl/DNSOutgoing;
    :try_start_4
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->checkRunCondition()Z

    move-result v6

    if-nez v6, :cond_e

    .line 105
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    .line 149
    :goto_d
    return-void

    .line 108
    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v5, stateObjects:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v7

    monitor-enter v7
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_18} :catch_c8

    .line 111
    :try_start_18
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v8

    invoke-virtual {v6, p0, v8}, Ljavax/jmdns/impl/JmDNSImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 112
    sget-object v6, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".run() JmDNS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v3

    .line 110
    :cond_67
    monitor-exit v7
    :try_end_68
    .catchall {:try_start_18 .. :try_end_68} :catchall_c5

    .line 118
    :try_start_68
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/jmdns/impl/JmDNSImpl;->getServices()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_78
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_eb

    .line 129
    invoke-virtual {v3}, Ljavax/jmdns/impl/DNSOutgoing;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_13f

    .line 130
    sget-object v6, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".run() JmDNS "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljavax/jmdns/impl/JmDNSImpl;->send(Ljavax/jmdns/impl/DNSOutgoing;)V

    .line 134
    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_c0} :catch_c8

    .line 148
    .end local v5           #stateObjects:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :goto_c0
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceTask()V

    goto/16 :goto_d

    .line 110
    .restart local v5       #stateObjects:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :catchall_c5
    move-exception v6

    :try_start_c6
    monitor-exit v7
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v6
    :try_end_c8
    .catch Ljava/lang/Throwable; {:try_start_c7 .. :try_end_c8} :catch_c8

    .line 143
    .end local v5           #stateObjects:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :catch_c8
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/Throwable;
    sget-object v6, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".run() exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->recoverTask(Ljava/lang/Throwable;)V

    goto :goto_c0

    .line 118
    .end local v1           #e:Ljava/lang/Throwable;
    .restart local v5       #stateObjects:Ljava/util/List;,"Ljava/util/List<Ljavax/jmdns/impl/DNSStatefulObject;>;"
    :cond_eb
    :try_start_eb
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/jmdns/ServiceInfo;

    .line 119
    .local v4, serviceInfo:Ljavax/jmdns/ServiceInfo;
    move-object v0, v4

    check-cast v0, Ljavax/jmdns/impl/ServiceInfoImpl;

    move-object v2, v0

    .line 121
    .local v2, info:Ljavax/jmdns/impl/ServiceInfoImpl;
    monitor-enter v2
    :try_end_f6
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_f6} :catch_c8

    .line 122
    :try_start_f6
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v7

    invoke-virtual {v2, p0, v7}, Ljavax/jmdns/impl/ServiceInfoImpl;->isAssociatedWithTask(Ljavax/jmdns/impl/tasks/DNSTask;Ljavax/jmdns/impl/constants/DNSState;)Z

    move-result v7

    if-eqz v7, :cond_139

    .line 123
    sget-object v7, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->logger1:Ljava/util/logging/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, ".run() JmDNS "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->getTaskDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/jmdns/impl/ServiceInfoImpl;->getQualifiedName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 124
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p0, v2, v3}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v3

    .line 121
    :cond_139
    monitor-exit v2

    goto/16 :goto_78

    :catchall_13c
    move-exception v6

    monitor-exit v2
    :try_end_13e
    .catchall {:try_start_f6 .. :try_end_13e} :catchall_13c

    :try_start_13e
    throw v6

    .line 137
    .end local v2           #info:Ljavax/jmdns/impl/ServiceInfoImpl;
    .end local v4           #serviceInfo:Ljavax/jmdns/ServiceInfo;
    :cond_13f
    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->advanceObjectsState(Ljava/util/List;)V

    .line 140
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z
    :try_end_145
    .catch Ljava/lang/Throwable; {:try_start_13e .. :try_end_145} :catch_c8

    goto/16 :goto_d
.end method

.method protected setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V
    .registers 2
    .parameter "taskState"

    .prologue
    .line 185
    iput-object p1, p0, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->_taskState:Ljavax/jmdns/impl/constants/DNSState;

    .line 186
    return-void
.end method
