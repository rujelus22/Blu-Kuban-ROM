.class public Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "DNSOutgoing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSOutgoing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageOutputStream"
.end annotation


# instance fields
.field private final _offset:I

.field private final _out:Ljavax/jmdns/impl/DNSOutgoing;


# direct methods
.method constructor <init>(ILjavax/jmdns/impl/DNSOutgoing;)V
    .registers 4
    .parameter "size"
    .parameter "out"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;I)V

    .line 37
    return-void
.end method

.method constructor <init>(ILjavax/jmdns/impl/DNSOutgoing;I)V
    .registers 4
    .parameter "size"
    .parameter "out"
    .parameter "offset"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 41
    iput-object p2, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    .line 42
    iput p3, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_offset:I

    .line 43
    return-void
.end method


# virtual methods
.method writeByte(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 46
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write(I)V

    .line 47
    return-void
.end method

.method writeBytes(Ljava/lang/String;II)V
    .registers 6
    .parameter "str"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 50
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p3, :cond_4

    .line 53
    return-void

    .line 51
    :cond_4
    add-int v1, p2, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method writeBytes([B)V
    .registers 4
    .parameter "data"

    .prologue
    .line 56
    if-eqz p1, :cond_7

    .line 57
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeBytes([BII)V

    .line 59
    :cond_7
    return-void
.end method

.method writeBytes([BII)V
    .registers 6
    .parameter "data"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p3, :cond_4

    .line 65
    return-void

    .line 63
    :cond_4
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method writeInt(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 73
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 74
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 75
    return-void
.end method

.method writeName(Ljava/lang/String;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;Z)V

    .line 114
    return-void
.end method

.method writeName(Ljava/lang/String;Z)V
    .registers 12
    .parameter "name"
    .parameter "useCompression"

    .prologue
    const/4 v8, 0x0

    .line 117
    move-object v0, p1

    .line 119
    .local v0, aName:Ljava/lang/String;
    :cond_2
    :goto_2
    const/16 v5, 0x2e

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 120
    .local v2, n:I
    if-gez v2, :cond_e

    .line 121
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 123
    :cond_e
    if-gtz v2, :cond_14

    .line 124
    invoke-virtual {p0, v8}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 134
    :goto_13
    return-void

    .line 127
    :cond_14
    invoke-virtual {v0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, label:Ljava/lang/String;
    if-eqz p2, :cond_66

    sget-boolean v5, Ljavax/jmdns/impl/DNSOutgoing;->USE_DOMAIN_NAME_COMPRESSION:Z

    if-eqz v5, :cond_66

    .line 129
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    iget-object v5, v5, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 130
    .local v3, offset:Ljava/lang/Integer;
    if-eqz v3, :cond_3b

    .line 131
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 132
    .local v4, val:I
    shr-int/lit8 v5, v4, 0x8

    or-int/lit16 v5, v5, 0xc0

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 133
    and-int/lit16 v5, v4, 0xff

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_13

    .line 136
    .end local v4           #val:I
    :cond_3b
    iget-object v5, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    iget-object v5, v5, Ljavax/jmdns/impl/DNSOutgoing;->_names:Ljava/util/Map;

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v6

    iget v7, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_offset:I

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v8, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    .line 141
    .end local v3           #offset:Ljava/lang/Integer;
    :goto_54
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    goto :goto_2

    .line 139
    :cond_66
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v1, v8, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeUTF(Ljava/lang/String;II)V

    goto :goto_54
.end method

.method writeQuestion(Ljavax/jmdns/impl/DNSQuestion;)V
    .registers 3
    .parameter "question"

    .prologue
    .line 149
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 151
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSQuestion;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v0

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 152
    return-void
.end method

.method writeRecord(Ljavax/jmdns/impl/DNSRecord;J)V
    .registers 11
    .parameter "rec"
    .parameter "now"

    .prologue
    const/4 v3, 0x0

    .line 155
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordType()Ljavax/jmdns/impl/constants/DNSRecordType;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordType;->indexValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 157
    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getRecordClass()Ljavax/jmdns/impl/constants/DNSRecordClass;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/jmdns/impl/constants/DNSRecordClass;->indexValue()I

    move-result v4

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->isUnique()Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    invoke-virtual {v2}, Ljavax/jmdns/impl/DNSOutgoing;->isMulticast()Z

    move-result v2

    if-eqz v2, :cond_5f

    const v2, 0x8000

    :goto_2c
    or-int/2addr v2, v4

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 158
    const-wide/16 v4, 0x0

    cmp-long v2, p2, v4

    if-nez v2, :cond_61

    invoke-virtual {p1}, Ljavax/jmdns/impl/DNSRecord;->getTTL()I

    move-result v2

    :goto_3a
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeInt(I)V

    .line 161
    new-instance v1, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;

    const/16 v2, 0x200

    iget-object v4, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_out:Ljavax/jmdns/impl/DNSOutgoing;

    iget v5, p0, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->_offset:I

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->size()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v2, v4, v5}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;-><init>(ILjavax/jmdns/impl/DNSOutgoing;I)V

    .line 162
    .local v1, record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    invoke-virtual {p1, v1}, Ljavax/jmdns/impl/DNSRecord;->write(Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;)V

    .line 163
    invoke-virtual {v1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->toByteArray()[B

    move-result-object v0

    .line 165
    .local v0, byteArray:[B
    array-length v2, v0

    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeShort(I)V

    .line 166
    array-length v2, v0

    invoke-virtual {p0, v0, v3, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->write([BII)V

    .line 167
    return-void

    .end local v0           #byteArray:[B
    .end local v1           #record:Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;
    :cond_5f
    move v2, v3

    .line 157
    goto :goto_2c

    .line 158
    :cond_61
    invoke-virtual {p1, p2, p3}, Ljavax/jmdns/impl/DNSRecord;->getRemainingTTL(J)I

    move-result v2

    goto :goto_3a
.end method

.method writeShort(I)V
    .registers 3
    .parameter "value"

    .prologue
    .line 68
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 69
    invoke-virtual {p0, p1}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 70
    return-void
.end method

.method writeUTF(Ljava/lang/String;II)V
    .registers 11
    .parameter "str"
    .parameter "off"
    .parameter "len"

    .prologue
    const/16 v6, 0x7ff

    const/16 v5, 0x7f

    const/4 v4, 0x1

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, utflen:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-lt v1, p3, :cond_10

    .line 93
    invoke-virtual {p0, v2}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 95
    const/4 v1, 0x0

    :goto_d
    if-lt v1, p3, :cond_27

    .line 110
    return-void

    .line 81
    :cond_10
    add-int v3, p2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 82
    .local v0, ch:I
    if-lt v0, v4, :cond_1f

    if-gt v0, v5, :cond_1f

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 80
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 85
    :cond_1f
    if-le v0, v6, :cond_24

    .line 86
    add-int/lit8 v2, v2, 0x3

    goto :goto_1c

    .line 88
    :cond_24
    add-int/lit8 v2, v2, 0x2

    goto :goto_1c

    .line 96
    .end local v0           #ch:I
    :cond_27
    add-int v3, p2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 97
    .restart local v0       #ch:I
    if-lt v0, v4, :cond_37

    if-gt v0, v5, :cond_37

    .line 98
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 95
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 100
    :cond_37
    if-le v0, v6, :cond_55

    .line 101
    shr-int/lit8 v3, v0, 0xc

    and-int/lit8 v3, v3, 0xf

    or-int/lit16 v3, v3, 0xe0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 102
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 103
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_34

    .line 105
    :cond_55
    shr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x1f

    or-int/lit16 v3, v3, 0xc0

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    .line 106
    shr-int/lit8 v3, v0, 0x0

    and-int/lit8 v3, v3, 0x3f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljavax/jmdns/impl/DNSOutgoing$MessageOutputStream;->writeByte(I)V

    goto :goto_34
.end method
