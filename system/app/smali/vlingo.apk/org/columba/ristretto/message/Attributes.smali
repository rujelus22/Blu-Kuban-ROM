.class public Lorg/columba/ristretto/message/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Lorg/columba/ristretto/message/Saveable;
.implements Ljava/lang/Cloneable;


# instance fields
.field private attributes:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/io/ObjectInputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lorg/columba/ristretto/message/Attributes;->load(Ljava/io/ObjectInputStream;)V

    .line 73
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 133
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/columba/ristretto/message/Attributes;

    .line 134
    .local v0, clone:Lorg/columba/ristretto/message/Attributes;
    iget-object v2, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    iput-object v2, v0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_11

    .line 135
    return-object v0

    .line 136
    .end local v0           #clone:Lorg/columba/ristretto/message/Attributes;
    :catch_11
    move-exception v1

    .line 137
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public count()I
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "obj"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, isEqual:Z
    if-eqz p1, :cond_12

    instance-of v2, p1, Lorg/columba/ristretto/message/Attributes;

    if-eqz v2, :cond_12

    move-object v1, p1

    .line 145
    check-cast v1, Lorg/columba/ristretto/message/Attributes;

    .line 146
    .local v1, other:Lorg/columba/ristretto/message/Attributes;
    iget-object v2, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    iget-object v3, v1, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 148
    .end local v1           #other:Lorg/columba/ristretto/message/Attributes;
    :cond_12
    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "key"

    .prologue
    .line 91
    iget-object v0, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->hashCode()I

    move-result v0

    return v0
.end method

.method public final load(Ljava/io/ObjectInputStream;)V
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 98
    .local v2, size:I
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3, v2}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v3, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    .line 99
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    if-ge v1, v2, :cond_23

    .line 101
    :try_start_e
    iget-object v3, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_1b} :catch_1e

    .line 99
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 102
    :catch_1e
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1b

    .line 106
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_23
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 81
    iget-object v0, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public final save(Ljava/io/ObjectOutputStream;)V
    .registers 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v3, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 111
    iget-object v3, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 113
    .local v1, keys:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 114
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, key:Ljava/lang/String;
    iget-object v3, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 116
    .local v2, value:Ljava/lang/Object;
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_13

    .line 119
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/Object;
    :cond_2c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    .local v0, buffer:Ljava/lang/StringBuffer;
    const-string v4, "Attributes["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    iget-object v4, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 161
    .local v3, set:Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v4, p0, Lorg/columba/ristretto/message/Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 167
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 170
    .end local v2           #key:Ljava/lang/String;
    :cond_3d
    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
