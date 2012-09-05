.class public Lorg/snmp4j/smi/VariantVariable;
.super Lorg/snmp4j/smi/AbstractVariable;
.source "VariantVariable.java"

# interfaces
.implements Lorg/snmp4j/smi/AssignableFromInteger;
.implements Lorg/snmp4j/smi/AssignableFromLong;
.implements Lorg/snmp4j/smi/AssignableFromString;
.implements Lorg/snmp4j/smi/AssignableFromByteArray;


# static fields
.field private static final serialVersionUID:J = -0x330ce315e54f9dd4L


# instance fields
.field private callback:Lorg/snmp4j/smi/VariantVariableCallback;

.field private variable:Lorg/snmp4j/smi/Variable;


# direct methods
.method public constructor <init>(Lorg/snmp4j/smi/Variable;)V
    .registers 3
    .parameter "initialVariable"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/snmp4j/smi/AbstractVariable;-><init>()V

    .line 62
    if-nez p1, :cond_b

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_b
    iput-object p1, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/snmp4j/smi/Variable;Lorg/snmp4j/smi/VariantVariableCallback;)V
    .registers 3
    .parameter "initialVariable"
    .parameter "callback"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/snmp4j/smi/VariantVariable;-><init>(Lorg/snmp4j/smi/Variable;)V

    .line 80
    iput-object p2, p0, Lorg/snmp4j/smi/VariantVariable;->callback:Lorg/snmp4j/smi/VariantVariableCallback;

    .line 81
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 164
    new-instance v1, Lorg/snmp4j/smi/VariantVariable;

    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0}, Lorg/snmp4j/smi/Variable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/smi/Variable;

    invoke-direct {v1, v0}, Lorg/snmp4j/smi/VariantVariable;-><init>(Lorg/snmp4j/smi/Variable;)V

    return-object v1
.end method

.method public declared-synchronized compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "o"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 85
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0, p1}, Lorg/snmp4j/smi/Variable;->compareTo(Ljava/lang/Object;)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 84
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V
    .registers 3
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0, p1}, Lorg/snmp4j/smi/Variable;->decodeBER(Lorg/snmp4j/asn1/BERInputStream;)V

    .line 102
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->variableUpdated()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 103
    monitor-exit p0

    return-void

    .line 101
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized encodeBER(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 107
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0, p1}, Lorg/snmp4j/smi/Variable;->encodeBER(Ljava/io/OutputStream;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 108
    monitor-exit p0

    return-void

    .line 106
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 149
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 148
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fromSubIndex(Lorg/snmp4j/smi/OID;Z)V
    .registers 4
    .parameter "subIndex"
    .parameter "impliedLength"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0, p1, p2}, Lorg/snmp4j/smi/Variable;->fromSubIndex(Lorg/snmp4j/smi/OID;Z)V

    .line 112
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->variableUpdated()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 113
    monitor-exit p0

    return-void

    .line 111
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBERLength()I
    .registers 2

    .prologue
    .line 116
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 117
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0}, Lorg/snmp4j/smi/Variable;->getBERLength()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 116
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSyntax()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0}, Lorg/snmp4j/smi/Variable;->getSyntax()I

    move-result v0

    return v0
.end method

.method public getVariable()Lorg/snmp4j/smi/Variable;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .registers 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 154
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 153
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDynamic()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized setValue(I)V
    .registers 5
    .parameter "value"

    .prologue
    .line 168
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    instance-of v0, v0, Lorg/snmp4j/smi/AssignableFromInteger;

    if-eqz v0, :cond_10

    .line 169
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    check-cast v0, Lorg/snmp4j/smi/AssignableFromInteger;

    invoke-interface {v0, p1}, Lorg/snmp4j/smi/AssignableFromInteger;->setValue(I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2b

    .line 175
    monitor-exit p0

    return-void

    .line 172
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "An integer value cannot be assigned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2b

    .line 168
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue(J)V
    .registers 6
    .parameter "value"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    instance-of v0, v0, Lorg/snmp4j/smi/AssignableFromLong;

    if-eqz v0, :cond_10

    .line 179
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    check-cast v0, Lorg/snmp4j/smi/AssignableFromLong;

    invoke-interface {v0, p1, p2}, Lorg/snmp4j/smi/AssignableFromLong;->setValue(J)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2b

    .line 185
    monitor-exit p0

    return-void

    .line 182
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "A long value cannot be assigned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2b

    .line 178
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue(Ljava/lang/String;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    instance-of v0, v0, Lorg/snmp4j/smi/AssignableFromString;

    if-eqz v0, :cond_10

    .line 209
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    check-cast v0, Lorg/snmp4j/smi/AssignableFromString;

    invoke-interface {v0, p1}, Lorg/snmp4j/smi/AssignableFromString;->setValue(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2b

    .line 215
    monitor-exit p0

    return-void

    .line 212
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "A string value cannot be assigned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2b

    .line 208
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue(Lorg/snmp4j/smi/OctetString;)V
    .registers 5
    .parameter "value"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    instance-of v0, v0, Lorg/snmp4j/smi/AssignableFromByteArray;

    if-eqz v0, :cond_14

    .line 189
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    check-cast v0, Lorg/snmp4j/smi/AssignableFromByteArray;

    invoke-virtual {p1}, Lorg/snmp4j/smi/OctetString;->getValue()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/snmp4j/smi/AssignableFromByteArray;->setValue([B)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2f

    .line 195
    monitor-exit p0

    return-void

    .line 192
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "An OctetString value cannot be assigned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_14 .. :try_end_2f} :catchall_2f

    .line 188
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue([B)V
    .registers 5
    .parameter "value"

    .prologue
    .line 198
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    instance-of v0, v0, Lorg/snmp4j/smi/AssignableFromByteArray;

    if-eqz v0, :cond_10

    .line 199
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    check-cast v0, Lorg/snmp4j/smi/AssignableFromByteArray;

    invoke-interface {v0, p1}, Lorg/snmp4j/smi/AssignableFromByteArray;->setValue([B)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_2b

    .line 205
    monitor-exit p0

    return-void

    .line 202
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "A byte array value cannot be assigned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_2b

    .line 198
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toByteArray()[B
    .registers 2

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 136
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    instance-of v0, v0, Lorg/snmp4j/smi/AssignableFromByteArray;

    if-eqz v0, :cond_14

    .line 137
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    check-cast v0, Lorg/snmp4j/smi/AssignableFromByteArray;

    invoke-interface {v0}, Lorg/snmp4j/smi/AssignableFromByteArray;->toByteArray()[B
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_1a

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 139
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_1a

    .line 135
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toInt()I
    .registers 2

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 126
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0}, Lorg/snmp4j/smi/Variable;->toInt()I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit p0

    return v0

    .line 125
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toLong()J
    .registers 3

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 131
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0}, Lorg/snmp4j/smi/Variable;->toLong()J
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 130
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 159
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 158
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toSubIndex(Z)Lorg/snmp4j/smi/OID;
    .registers 3
    .parameter "impliedLength"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/snmp4j/smi/VariantVariable;->updateVariable()V

    .line 144
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->variable:Lorg/snmp4j/smi/Variable;

    invoke-interface {v0, p1}, Lorg/snmp4j/smi/Variable;->toSubIndex(Z)Lorg/snmp4j/smi/OID;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_c

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 143
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateVariable()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->callback:Lorg/snmp4j/smi/VariantVariableCallback;

    if-eqz v0, :cond_9

    .line 90
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->callback:Lorg/snmp4j/smi/VariantVariableCallback;

    invoke-interface {v0, p0}, Lorg/snmp4j/smi/VariantVariableCallback;->updateVariable(Lorg/snmp4j/smi/VariantVariable;)V

    .line 92
    :cond_9
    return-void
.end method

.method protected variableUpdated()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->callback:Lorg/snmp4j/smi/VariantVariableCallback;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lorg/snmp4j/smi/VariantVariable;->callback:Lorg/snmp4j/smi/VariantVariableCallback;

    invoke-interface {v0, p0}, Lorg/snmp4j/smi/VariantVariableCallback;->variableUpdated(Lorg/snmp4j/smi/VariantVariable;)V

    .line 98
    :cond_9
    return-void
.end method
