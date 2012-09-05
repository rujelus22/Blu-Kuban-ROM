.class public Lorg/columba/ristretto/message/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field static final serialVersionUID:J = -0x6a58cb0c950525daL


# instance fields
.field private displayName:Ljava/lang/String;

.field private mailAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "mailAddress"

    .prologue
    .line 65
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lorg/columba/ristretto/message/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "displayName"
    .parameter "mailAddress"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public static parse(Ljava/lang/CharSequence;)Lorg/columba/ristretto/message/Address;
    .registers 2
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p0}, Lorg/columba/ristretto/parser/AddressParser;->parseAddress(Ljava/lang/CharSequence;)Lorg/columba/ristretto/message/Address;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readByte()B

    move-result v0

    .line 193
    .local v0, mode:B
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 194
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    .line 197
    :cond_d
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    .line 198
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 181
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 188
    :goto_12
    return-void

    .line 185
    :cond_13
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeByte(I)V

    .line 186
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_12
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 4
    .parameter "arg0"

    .prologue
    .line 204
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    check-cast p1, Lorg/columba/ristretto/message/Address;

    .end local p1
    invoke-virtual {p1}, Lorg/columba/ristretto/message/Address;->getMailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "arg0"

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, result:Z
    if-eqz p1, :cond_1e

    instance-of v2, p1, Lorg/columba/ristretto/message/Address;

    if-eqz v2, :cond_1e

    move-object v0, p1

    .line 151
    check-cast v0, Lorg/columba/ristretto/message/Address;

    .line 152
    .local v0, a:Lorg/columba/ristretto/message/Address;
    const/4 v1, 0x1

    .line 153
    iget-object v2, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 154
    if-eqz v1, :cond_1f

    iget-object v2, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/columba/ristretto/message/Address;->getMailAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    .line 158
    .end local v0           #a:Lorg/columba/ristretto/message/Address;
    :cond_1e
    :goto_1e
    return v1

    .line 154
    .restart local v0       #a:Lorg/columba/ristretto/message/Address;
    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getCanonicalMailAddress()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getMailAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getShortAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_f

    .line 127
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    .line 129
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2
    .parameter "displayName"

    .prologue
    .line 141
    iput-object p1, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 166
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    .line 167
    :cond_c
    iget-object v0, p0, Lorg/columba/ristretto/message/Address;->mailAddress:Ljava/lang/String;

    .line 169
    :goto_e
    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/columba/ristretto/message/Address;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/columba/ristretto/message/Address;->getCanonicalMailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method
