.class public Ljavax/jmdns/impl/tasks/state/Renewer;
.super Ljavax/jmdns/impl/tasks/state/DNSStateTask;
.source "Renewer.java"


# static fields
.field static logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-class v0, Ljavax/jmdns/impl/tasks/state/Renewer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/tasks/state/Renewer;->logger:Ljava/util/logging/Logger;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljavax/jmdns/impl/JmDNSImpl;)V
    .registers 3
    .parameter "jmDNSImpl"

    .prologue
    .line 26
    invoke-static {}, Ljavax/jmdns/impl/tasks/state/Renewer;->defaultTTL()I

    move-result v0

    invoke-direct {p0, p1, v0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;-><init>(Ljavax/jmdns/impl/JmDNSImpl;I)V

    .line 28
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Renewer;->setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 29
    sget-object v0, Ljavax/jmdns/impl/constants/DNSState;->ANNOUNCED:Ljavax/jmdns/impl/constants/DNSState;

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Renewer;->associate(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected advanceTask()V
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->advance()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/tasks/state/Renewer;->setTaskState(Ljavax/jmdns/impl/constants/DNSState;)V

    .line 137
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSState;->isAnnounced()Z

    move-result v0

    if-nez v0, :cond_18

    .line 138
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->cancel()Z

    .line 140
    :cond_18
    return-void
.end method

.method protected buildOutgoingForDNS(Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    move-object v1, p1

    .line 102
    .local v1, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getTTL()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljavax/jmdns/impl/HostInfo;->answers(ZI)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 105
    return-object v1

    .line 102
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 103
    .local v0, answer:Ljavax/jmdns/impl/DNSRecord;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljavax/jmdns/impl/tasks/state/Renewer;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v1

    goto :goto_16
.end method

.method protected buildOutgoingForInfo(Ljavax/jmdns/impl/ServiceInfoImpl;Ljavax/jmdns/impl/DNSOutgoing;)Ljavax/jmdns/impl/DNSOutgoing;
    .registers 8
    .parameter "info"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    move-object v1, p2

    .line 115
    .local v1, newOut:Ljavax/jmdns/impl/DNSOutgoing;
    const/4 v2, 0x1

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getTTL()I

    move-result v3

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/jmdns/impl/JmDNSImpl;->getLocalHost()Ljavax/jmdns/impl/HostInfo;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Ljavax/jmdns/impl/ServiceInfoImpl;->answers(ZILjavax/jmdns/impl/HostInfo;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 118
    return-object v1

    .line 115
    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/jmdns/impl/DNSRecord;

    .line 116
    .local v0, answer:Ljavax/jmdns/impl/DNSRecord;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v0}, Ljavax/jmdns/impl/tasks/state/Renewer;->addAnswer(Ljavax/jmdns/impl/DNSOutgoing;Ljavax/jmdns/impl/DNSIncoming;Ljavax/jmdns/impl/DNSRecord;)Ljavax/jmdns/impl/DNSOutgoing;

    move-result-object v1

    goto :goto_16
.end method

.method public cancel()Z
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->removeAssociation()V

    .line 65
    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->cancel()Z

    move-result v0

    return v0
.end method

.method protected checkRunCondition()Z
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method protected createOugoing()Ljavax/jmdns/impl/DNSOutgoing;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljavax/jmdns/impl/DNSOutgoing;

    const v1, 0x8400

    invoke-direct {v0, v1}, Ljavax/jmdns/impl/DNSOutgoing;-><init>(I)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Renewer("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    const-string v0, ""

    goto :goto_15
.end method

.method public getTaskDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "renewing"

    return-object v0
.end method

.method protected recoverTask(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 127
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->recover()V

    .line 128
    return-void
.end method

.method public start(Ljava/util/Timer;)V
    .registers 8
    .parameter "timer"

    .prologue
    const-wide/32 v2, 0x1b7740

    .line 56
    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceling()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getDns()Ljavax/jmdns/impl/JmDNSImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/JmDNSImpl;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1d

    move-object v0, p1

    move-object v1, p0

    move-wide v4, v2

    .line 57
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 59
    :cond_1d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljavax/jmdns/impl/tasks/state/DNSStateTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/jmdns/impl/tasks/state/Renewer;->getTaskState()Ljavax/jmdns/impl/constants/DNSState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
