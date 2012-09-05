.class Lorg/snmp4j/tools/console/SnmpRequest$1;
.super Ljava/lang/Object;
.source "SnmpRequest.java"

# interfaces
.implements Lorg/snmp4j/util/TreeListener;


# instance fields
.field private finished:Z

.field private final this$0:Lorg/snmp4j/tools/console/SnmpRequest;

.field private final val$counts:Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;

.field private final val$snapshot:Ljava/util/List;

.field private final val$startTime:J


# direct methods
.method constructor <init>(Lorg/snmp4j/tools/console/SnmpRequest;Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;Ljava/util/List;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->this$0:Lorg/snmp4j/tools/console/SnmpRequest;

    iput-object p2, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$counts:Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;

    iput-object p3, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$snapshot:Ljava/util/List;

    iput-wide p4, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$startTime:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(Lorg/snmp4j/util/TreeEvent;)V
    .registers 8
    .parameter "e"

    .prologue
    .line 439
    invoke-virtual {p1}, Lorg/snmp4j/util/TreeEvent;->getVariableBindings()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lorg/snmp4j/util/TreeEvent;->getVariableBindings()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_10

    .line 441
    invoke-virtual {p0, p1}, Lorg/snmp4j/tools/console/SnmpRequest$1;->next(Lorg/snmp4j/util/TreeEvent;)Z

    .line 443
    :cond_10
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 444
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Total requests sent:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$counts:Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;

    iget v2, v2, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;->requests:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Total objects received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$counts:Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;

    iget v2, v2, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;->objects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Total walk time:        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " milliseconds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    invoke-virtual {p1}, Lorg/snmp4j/util/TreeEvent;->isError()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 449
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The following error occurred during walk:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/snmp4j/util/TreeEvent;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    :cond_88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->finished:Z

    .line 453
    monitor-enter p0

    .line 454
    :try_start_8c
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 455
    monitor-exit p0

    .line 456
    return-void

    .line 455
    :catchall_91
    move-exception v0

    monitor-exit p0
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_91

    throw v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->finished:Z

    return v0
.end method

.method public next(Lorg/snmp4j/util/TreeEvent;)Z
    .registers 7
    .parameter "e"

    .prologue
    .line 424
    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$counts:Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;

    iget v3, v2, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;->requests:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;->requests:I

    .line 425
    invoke-virtual {p1}, Lorg/snmp4j/util/TreeEvent;->getVariableBindings()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 426
    invoke-virtual {p1}, Lorg/snmp4j/util/TreeEvent;->getVariableBindings()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v1

    .line 427
    .local v1, vbs:[Lorg/snmp4j/smi/VariableBinding;
    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$counts:Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;

    iget v3, v2, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;->objects:I

    array-length v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lorg/snmp4j/tools/console/SnmpRequest$WalkCounts;->objects:I

    .line 428
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1b
    array-length v2, v1

    if-ge v0, v2, :cond_37

    .line 429
    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$snapshot:Ljava/util/List;

    if-eqz v2, :cond_29

    .line 430
    iget-object v2, p0, Lorg/snmp4j/tools/console/SnmpRequest$1;->val$snapshot:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_29
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lorg/snmp4j/smi/VariableBinding;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 435
    .end local v0           #i:I
    .end local v1           #vbs:[Lorg/snmp4j/smi/VariableBinding;
    :cond_37
    const/4 v2, 0x1

    return v2
.end method
