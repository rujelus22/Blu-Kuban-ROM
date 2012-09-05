.class Ljava/util/jar/InitManifest;
.super Ljava/lang/Object;
.source "InitManifest.java"


# instance fields
.field private final buf:[B

.field private consecutiveLineBreaks:I

.field private name:Ljava/util/jar/Attributes$Name;

.field private pos:I

.field private value:Ljava/lang/String;

.field private final valueBuffer:Ljava/lang/UnsafeByteSequence;


# direct methods
.method constructor <init>([BLjava/util/jar/Attributes;Ljava/util/jar/Attributes$Name;)V
    .registers 7
    .parameter "buf"
    .parameter "main"
    .parameter "ver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/UnsafeByteSequence;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/UnsafeByteSequence;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    .line 41
    iput-object p1, p0, Ljava/util/jar/InitManifest;->buf:[B

    .line 44
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz p3, :cond_3a

    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, p3}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    .line 45
    :cond_21
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing version attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_3a
    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_41
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 50
    iget-object v0, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 52
    :cond_4f
    return-void
.end method

.method private readHeader()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    iget v2, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-le v2, v0, :cond_9

    .line 101
    iput v1, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    .line 109
    :goto_8
    return v1

    .line 104
    :cond_9
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readName()V

    .line 105
    iput v1, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    .line 106
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readValue()V

    .line 109
    iget v2, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-lez v2, :cond_17

    :goto_15
    move v1, v0

    goto :goto_8

    :cond_17
    move v0, v1

    goto :goto_15
.end method

.method private readName()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    iget v1, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 115
    .local v1, mark:I
    :cond_2
    iget v3, p0, Ljava/util/jar/InitManifest;->pos:I

    iget-object v4, p0, Ljava/util/jar/InitManifest;->buf:[B

    array-length v4, v4

    if-ge v3, v4, :cond_4c

    .line 116
    iget-object v3, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_2

    .line 120
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    sget-object v5, Ljava/nio/charset/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 122
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    if-eq v3, v4, :cond_45

    .line 123
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Invalid value for attribute \'%s\'"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    :cond_45
    :try_start_45
    new-instance v3, Ljava/util/jar/Attributes$Name;

    invoke-direct {v3, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;
    :try_end_4c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 134
    .end local v2           #name:Ljava/lang/String;
    :cond_4c
    return-void

    .line 128
    .restart local v2       #name:Ljava/lang/String;
    :catch_4d
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readValue()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 137
    const/4 v1, 0x0

    .line 138
    .local v1, lastCr:Z
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 139
    .local v2, mark:I
    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 140
    .local v0, last:I
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    invoke-virtual {v4}, Ljava/lang/UnsafeByteSequence;->rewind()V

    .line 141
    :goto_b
    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    array-length v5, v5

    if-ge v4, v5, :cond_29

    .line 142
    iget-object v4, p0, Ljava/util/jar/InitManifest;->buf:[B

    iget v5, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/jar/InitManifest;->pos:I

    aget-byte v3, v4, v5

    .line 143
    .local v3, next:B
    sparse-switch v3, :sswitch_data_6e

    .line 166
    :cond_1f
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-lt v4, v7, :cond_6b

    .line 167
    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 173
    .end local v3           #next:B
    :cond_29
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/UnsafeByteSequence;->write([BII)V

    .line 174
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    sget-object v5, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/UnsafeByteSequence;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    .line 175
    return-void

    .line 145
    .restart local v3       #next:B
    :sswitch_3d
    new-instance v4, Ljava/io/IOException;

    const-string v5, "NUL character in a manifest"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 147
    :sswitch_45
    if-eqz v1, :cond_49

    .line 148
    const/4 v1, 0x0

    goto :goto_b

    .line 150
    :cond_49
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_b

    .line 154
    :sswitch_50
    const/4 v1, 0x1

    .line 155
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_b

    .line 158
    :sswitch_58
    iget v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    if-ne v4, v7, :cond_1f

    .line 159
    iget-object v4, p0, Ljava/util/jar/InitManifest;->valueBuffer:Ljava/lang/UnsafeByteSequence;

    iget-object v5, p0, Ljava/util/jar/InitManifest;->buf:[B

    sub-int v6, v0, v2

    invoke-virtual {v4, v5, v2, v6}, Ljava/lang/UnsafeByteSequence;->write([BII)V

    .line 160
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 161
    const/4 v4, 0x0

    iput v4, p0, Ljava/util/jar/InitManifest;->consecutiveLineBreaks:I

    goto :goto_b

    .line 170
    :cond_6b
    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 171
    goto :goto_b

    .line 143
    :sswitch_data_6e
    .sparse-switch
        0x0 -> :sswitch_3d
        0xa -> :sswitch_45
        0xd -> :sswitch_50
        0x20 -> :sswitch_58
    .end sparse-switch
.end method


# virtual methods
.method getPos()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Ljava/util/jar/InitManifest;->pos:I

    return v0
.end method

.method initEntries(Ljava/util/Map;Ljava/util/Map;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Manifest$Chunk;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    .local p1, entries:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes;>;"
    .local p2, chunks:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Manifest$Chunk;>;"
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 58
    .local v2, mark:I
    :goto_2
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 59
    sget-object v3, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v4}, Ljava/util/jar/Attributes$Name;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 60
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Entry is not named"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    :cond_1a
    iget-object v1, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    .line 64
    .local v1, entryNameValue:Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    .line 65
    .local v0, entry:Ljava/util/jar/Attributes;
    if-nez v0, :cond_2b

    .line 66
    new-instance v0, Ljava/util/jar/Attributes;

    .end local v0           #entry:Ljava/util/jar/Attributes;
    const/16 v3, 0xc

    invoke-direct {v0, v3}, Ljava/util/jar/Attributes;-><init>(I)V

    .line 69
    .restart local v0       #entry:Ljava/util/jar/Attributes;
    :cond_2b
    :goto_2b
    invoke-direct {p0}, Ljava/util/jar/InitManifest;->readHeader()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 70
    iget-object v3, p0, Ljava/util/jar/InitManifest;->name:Ljava/util/jar/Attributes$Name;

    iget-object v4, p0, Ljava/util/jar/InitManifest;->value:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/jar/Attributes;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    .line 73
    :cond_39
    if-eqz p2, :cond_55

    .line 74
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 81
    new-instance v3, Ljava/io/IOException;

    const-string v4, "A jar verifier does not support more than one entry with the same name"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    :cond_49
    new-instance v3, Ljava/util/jar/Manifest$Chunk;

    iget v4, p0, Ljava/util/jar/InitManifest;->pos:I

    invoke-direct {v3, v2, v4}, Ljava/util/jar/Manifest$Chunk;-><init>(II)V

    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget v2, p0, Ljava/util/jar/InitManifest;->pos:I

    .line 87
    :cond_55
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 89
    .end local v0           #entry:Ljava/util/jar/Attributes;
    .end local v1           #entryNameValue:Ljava/lang/String;
    :cond_59
    return-void
.end method
