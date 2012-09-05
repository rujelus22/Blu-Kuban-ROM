.class public Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "DNSIncoming.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/jmdns/impl/DNSIncoming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageInputStream"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel:[I

.field private static logger1:Ljava/util/logging/Logger;


# instance fields
.field final _names:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel()[I
    .registers 3

    .prologue
    .line 35
    sget-object v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Ljavax/jmdns/impl/constants/DNSLabel;->values()[Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Compressed:Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Extended:Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Standard:Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Ljavax/jmdns/impl/constants/DNSLabel;->Unknown:Ljavax/jmdns/impl/constants/DNSLabel;

    invoke-virtual {v1}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    .line 35
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 4
    .parameter "buffer"
    .parameter "length"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;-><init>([BII)V

    .line 42
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    .line 52
    return-void
.end method


# virtual methods
.method protected declared-synchronized peek()I
    .registers 3

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->count:I

    if-ge v0, v1, :cond_11

    iget-object v0, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->buf:[B

    iget v1, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    and-int/lit16 v0, v0, 0xff

    :goto_f
    monitor-exit p0

    return v0

    :cond_11
    const/4 v0, -0x1

    goto :goto_f

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readByte()I
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    return v0
.end method

.method public readBytes(I)[B
    .registers 4
    .parameter "len"

    .prologue
    .line 67
    new-array v0, p1, [B

    .line 68
    .local v0, bytes:[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read([BII)I

    .line 69
    return-object v0
.end method

.method public readInt()I
    .registers 3

    .prologue
    .line 63
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUnsignedShort()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public readName()Ljava/lang/String;
    .registers 13

    .prologue
    .line 115
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 116
    .local v6, names:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/StringBuilder;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 118
    .local v2, finished:Z
    :goto_b
    if-eqz v2, :cond_20

    .line 156
    :goto_d
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_15
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_10b

    .line 159
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 119
    :cond_20
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v5

    .line 120
    .local v5, len:I
    if-nez v5, :cond_28

    .line 121
    const/4 v2, 0x1

    .line 122
    goto :goto_d

    .line 124
    :cond_28
    invoke-static {}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->$SWITCH_TABLE$javax$jmdns$impl$constants$DNSLabel()[I

    move-result-object v9

    invoke-static {v5}, Ljavax/jmdns/impl/constants/DNSLabel;->labelForByte(I)Ljavax/jmdns/impl/constants/DNSLabel;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/jmdns/impl/constants/DNSLabel;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_122

    .line 153
    sget-object v9, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "unsupported dns label type: \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v11, v5, 0xc0

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto :goto_b

    .line 126
    :pswitch_5a
    iget v9, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    add-int/lit8 v7, v9, -0x1

    .line 127
    .local v7, offset:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, label:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_80
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_94

    .line 132
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 129
    :cond_94
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuilder;

    .line 130
    .local v8, previousLabel:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_80

    .line 135
    .end local v4           #label:Ljava/lang/String;
    .end local v7           #offset:I
    .end local v8           #previousLabel:Ljava/lang/StringBuilder;
    :pswitch_9e
    invoke-static {v5}, Ljavax/jmdns/impl/constants/DNSLabel;->labelValue(I)I

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v10

    or-int v3, v9, v10

    .line 136
    .local v3, index:I
    iget-object v9, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, compressedLabel:Ljava/lang/String;
    if-nez v1, :cond_e4

    .line 138
    sget-object v9, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "bad domain name: possible circular name detected. Bad offset: 0x"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " at 0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->pos:I

    add-int/lit8 v11, v11, -0x2

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 139
    const-string v1, ""

    .line 141
    :cond_e4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_ef
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_f8

    .line 145
    const/4 v2, 0x1

    .line 146
    goto/16 :goto_b

    .line 142
    :cond_f8
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/StringBuilder;

    .line 143
    .restart local v8       #previousLabel:Ljava/lang/StringBuilder;
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ef

    .line 149
    .end local v1           #compressedLabel:Ljava/lang/String;
    .end local v3           #index:I
    .end local v8           #previousLabel:Ljava/lang/StringBuilder;
    :pswitch_102
    sget-object v9, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->logger1:Ljava/util/logging/Logger;

    const-string v10, "Extended label are not currently supported."

    invoke-virtual {v9, v10}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 156
    .end local v5           #len:I
    :cond_10b
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 157
    .local v3, index:Ljava/lang/Integer;
    iget-object v11, p0, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->_names:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_15

    .line 124
    :pswitch_data_122
    .packed-switch 0x2
        :pswitch_5a
        :pswitch_9e
        :pswitch_102
    .end packed-switch
.end method

.method public readNonNameString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 163
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    .line 164
    .local v0, len:I
    invoke-virtual {p0, v0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->readUTF(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readUTF(I)Ljava/lang/String;
    .registers 7
    .parameter "len"

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 74
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_6
    if-lt v2, p1, :cond_d

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 75
    :cond_d
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v1

    .line 76
    .local v1, ch:I
    shr-int/lit8 v3, v1, 0x4

    packed-switch v3, :pswitch_data_54

    .line 101
    :pswitch_16
    and-int/lit8 v3, v1, 0x3f

    shl-int/lit8 v3, v3, 0x4

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int v1, v3, v4

    .line 102
    add-int/lit8 v2, v2, 0x1

    .line 105
    :goto_24
    :pswitch_24
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 90
    :pswitch_2b
    and-int/lit8 v3, v1, 0x1f

    shl-int/lit8 v3, v3, 0x6

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int v1, v3, v4

    .line 91
    add-int/lit8 v2, v2, 0x1

    .line 92
    goto :goto_24

    .line 95
    :pswitch_3a
    and-int/lit8 v3, v1, 0xf

    shl-int/lit8 v3, v3, 0xc

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v4

    and-int/lit8 v4, v4, 0x3f

    or-int v1, v3, v4

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    add-int/lit8 v2, v2, 0x1

    .line 98
    goto :goto_24

    .line 76
    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_2b
        :pswitch_2b
        :pswitch_3a
    .end packed-switch
.end method

.method public readUnsignedShort()I
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljavax/jmdns/impl/DNSIncoming$MessageInputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
