.class Lorg/snmp4j/tools/console/LogControl$LoggerListListener;
.super Ljava/lang/Object;
.source "LogControl.java"

# interfaces
.implements Lorg/snmp4j/util/TableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/tools/console/LogControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoggerListListener"
.end annotation


# instance fields
.field private finished:Z

.field private final this$0:Lorg/snmp4j/tools/console/LogControl;


# direct methods
.method constructor <init>(Lorg/snmp4j/tools/console/LogControl;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lorg/snmp4j/tools/console/LogControl$LoggerListListener;->this$0:Lorg/snmp4j/tools/console/LogControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private printLogger(Lorg/snmp4j/util/TableEvent;)V
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 278
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getStatus()I

    move-result v4

    if-nez v4, :cond_82

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getIndex()Lorg/snmp4j/smi/OID;

    move-result-object v4

    if-eqz v4, :cond_82

    .line 280
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getColumns()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v4

    invoke-interface {v4}, Lorg/snmp4j/smi/Variable;->toInt()I

    move-result v3

    .line 281
    .local v3, rowStatus:I
    if-ne v3, v6, :cond_81

    .line 282
    new-instance v2, Lorg/snmp4j/smi/OctetString;

    invoke-direct {v2}, Lorg/snmp4j/smi/OctetString;-><init>()V

    .line 283
    .local v2, name:Lorg/snmp4j/smi/OctetString;
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getIndex()Lorg/snmp4j/smi/OID;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Lorg/snmp4j/smi/OctetString;->fromSubIndex(Lorg/snmp4j/smi/OID;Z)V

    .line 284
    new-instance v1, Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getColumns()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v4

    invoke-interface {v4}, Lorg/snmp4j/smi/Variable;->toInt()I

    move-result v4

    invoke-direct {v1, v4}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    .line 286
    .local v1, level:Lorg/snmp4j/log/LogLevel;
    new-instance v0, Lorg/snmp4j/log/LogLevel;

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getColumns()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v4

    invoke-interface {v4}, Lorg/snmp4j/smi/Variable;->toInt()I

    move-result v4

    invoke-direct {v0, v4}, Lorg/snmp4j/log/LogLevel;-><init>(I)V

    .line 288
    .local v0, effectiveLevel:Lorg/snmp4j/log/LogLevel;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2}, Lorg/snmp4j/smi/OctetString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 296
    .end local v0           #effectiveLevel:Lorg/snmp4j/log/LogLevel;
    .end local v1           #level:Lorg/snmp4j/log/LogLevel;
    .end local v2           #name:Lorg/snmp4j/smi/OctetString;
    .end local v3           #rowStatus:I
    :cond_81
    :goto_81
    return-void

    .line 292
    :cond_82
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getStatus()I

    move-result v4

    if-eqz v4, :cond_81

    .line 293
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Logger list command failed with: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_81
.end method


# virtual methods
.method public finished(Lorg/snmp4j/util/TableEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lorg/snmp4j/tools/console/LogControl$LoggerListListener;->printLogger(Lorg/snmp4j/util/TableEvent;)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/tools/console/LogControl$LoggerListListener;->finished:Z

    .line 272
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 273
    :try_start_b
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 299
    iget-boolean v0, p0, Lorg/snmp4j/tools/console/LogControl$LoggerListListener;->finished:Z

    return v0
.end method

.method public next(Lorg/snmp4j/util/TableEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lorg/snmp4j/tools/console/LogControl$LoggerListListener;->printLogger(Lorg/snmp4j/util/TableEvent;)V

    .line 266
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getStatus()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
