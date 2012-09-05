.class Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;
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
    name = "CVSTableListener"
.end annotation


# instance fields
.field private finished:Z

.field private requestTime:J

.field private final this$0:Lorg/snmp4j/tools/console/SnmpRequest;


# direct methods
.method public constructor <init>(Lorg/snmp4j/tools/console/SnmpRequest;J)V
    .registers 4
    .parameter
    .parameter "time"

    .prologue
    .line 1117
    iput-object p1, p0, Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;->this$0:Lorg/snmp4j/tools/console/SnmpRequest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    iput-wide p2, p0, Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;->requestTime:J

    .line 1119
    return-void
.end method


# virtual methods
.method public finished(Lorg/snmp4j/util/TableEvent;)V
    .registers 4
    .parameter "event"

    .prologue
    .line 1163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;->finished:Z

    .line 1164
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1165
    :try_start_8
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1166
    monitor-exit v1

    .line 1167
    return-void

    .line 1166
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public isFinished()Z
    .registers 2

    .prologue
    .line 1170
    iget-boolean v0, p0, Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;->finished:Z

    return v0
.end method

.method public next(Lorg/snmp4j/util/TableEvent;)Z
    .registers 12
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 1122
    iget-object v6, p0, Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;->this$0:Lorg/snmp4j/tools/console/SnmpRequest;

    iget v6, v6, Lorg/snmp4j/tools/console/SnmpRequest;->operation:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_16

    .line 1123
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-wide v7, p0, Lorg/snmp4j/tools/console/SnmpRequest$CVSTableListener;->requestTime:J

    invoke-virtual {v6, v7, v8}, Ljava/io/PrintStream;->print(J)V

    .line 1124
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1126
    :cond_16
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getIndex()Lorg/snmp4j/smi/OID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_39
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getColumns()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_ac

    .line 1128
    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getColumns()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lorg/snmp4j/smi/VariableBinding;->getVariable()Lorg/snmp4j/smi/Variable;

    move-result-object v4

    .line 1129
    .local v4, v:Lorg/snmp4j/smi/Variable;
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1130
    .local v5, value:Ljava/lang/String;
    invoke-interface {v4}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v6

    sparse-switch v6, :sswitch_data_b2

    .line 1151
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1154
    :goto_5a
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Lorg/snmp4j/util/TableEvent;->getColumns()[Lorg/snmp4j/smi/VariableBinding;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_6a

    .line 1155
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1127
    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 1132
    :sswitch_6d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1133
    .local v0, escapedString:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v6, "\""

    invoke-direct {v2, v5, v6, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1134
    .local v2, st:Ljava/util/StringTokenizer;
    :cond_7d
    :goto_7d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_98

    .line 1135
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 1136
    .local v3, token:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1137
    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    .line 1138
    const-string v6, "\""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7d

    .line 1145
    .end local v0           #escapedString:Ljava/lang/StringBuffer;
    .end local v2           #st:Ljava/util/StringTokenizer;
    .end local v3           #token:Ljava/lang/String;
    :cond_98
    :sswitch_98
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1146
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1147
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_5a

    .line 1158
    .end local v4           #v:Lorg/snmp4j/smi/Variable;
    .end local v5           #value:Ljava/lang/String;
    :cond_ac
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Ljava/io/PrintStream;->println()V

    .line 1159
    return v9

    .line 1130
    :sswitch_data_b2
    .sparse-switch
        0x4 -> :sswitch_6d
        0x6 -> :sswitch_98
        0x40 -> :sswitch_98
        0x44 -> :sswitch_98
    .end sparse-switch
.end method
