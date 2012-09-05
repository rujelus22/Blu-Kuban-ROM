.class Lorg/snmp4j/tools/console/SnmpRequest$TextTableListener;
.super Ljava/lang/Object;
.source "SnmpRequest.java"

# interfaces
.implements Lorg/snmp4j/util/TableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/tools/console/SnmpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextTableListener"
.end annotation


# instance fields
.field private finished:Z

.field private final this$0:Lorg/snmp4j/tools/console/SnmpRequest;


# direct methods
.method constructor <init>(Lorg/snmp4j/tools/console/SnmpRequest;)V
    .registers 2
    .parameter

    .prologue
    .line 1175
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest$TextTableListener;->this$0:Lorg/snmp4j/tools/console/SnmpRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finished(Lorg/snmp4j/util/TableEvent;)V
    .registers 5
    .parameter "event"

    .prologue
    .line 1180
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 1181
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Table walk completed with status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ". Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/tools/console/SnmpRequest$TextTableListener;->finished:Z

    .line 1185
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1186
    :try_start_3d
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1187
    monitor-exit v1

    .line 1188
    return-void

    .line 1187
    :catchall_46
    move-exception v0

    monitor-exit v1
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_46

    throw v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 1201
    iget-boolean v0, p0, Lorg/snmp4j/tools/console/SnmpRequest$TextTableListener;->finished:Z

    return v0
.end method

.method public next(Lorg/snmp4j/util/TableEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 1191
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getIndex()Lorg/snmp4j/smi/OID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getColumns()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 1193
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getColumns()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 1192
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1195
    :cond_38
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 1196
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/snmp4j/smi/Counter32;

    invoke-virtual {v1}, Lorg/snmp4j/smi/Counter32;->increment()V

    .line 1197
    const/4 v1, 0x1

    return v1
.end method
