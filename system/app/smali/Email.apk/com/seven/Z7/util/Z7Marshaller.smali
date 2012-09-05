.class public Lcom/seven/Z7/util/Z7Marshaller;
.super Ljava/lang/Object;
.source "Z7Marshaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/util/Z7Marshaller$1;,
        Lcom/seven/Z7/util/Z7Marshaller$CountOutputStream;
    }
.end annotation


# instance fields
.field private m_in:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "strm"

    .prologue
    .line 291
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 292
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/io/DataInputStream;

    .end local p1
    :goto_9
    iput-object p1, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    .line 294
    return-void

    .line 292
    .restart local p1
    :cond_c
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    goto :goto_9
.end method

.method public static decode(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/seven/Z7/util/Z7Marshaller;

    invoke-direct {v0, p0}, Lcom/seven/Z7/util/Z7Marshaller;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v0, m:Lcom/seven/Z7/util/Z7Marshaller;
    invoke-virtual {v0}, Lcom/seven/Z7/util/Z7Marshaller;->read()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static decode([B)Ljava/lang/Object;
    .registers 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/seven/Z7/util/Z7Marshaller;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private decodeObject(I)Ljava/lang/Object;
    .registers 5
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    packed-switch p1, :pswitch_data_70

    .line 326
    :pswitch_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad marshal tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_1c
    const/4 v0, 0x0

    .line 323
    :goto_1d
    return-object v0

    .line 305
    :pswitch_1e
    invoke-virtual {p0}, Lcom/seven/Z7/util/Z7Marshaller;->readStringData()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 307
    :pswitch_23
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1d

    .line 309
    :pswitch_2a
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto :goto_1d

    .line 311
    :pswitch_31
    new-instance v0, Ljava/lang/Short;

    iget-object v1, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_1d

    .line 313
    :pswitch_3d
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_1d

    .line 315
    :pswitch_49
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1d

    .line 317
    :pswitch_55
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_1d

    .line 319
    :pswitch_61
    invoke-virtual {p0}, Lcom/seven/Z7/util/Z7Marshaller;->readListData()Ljava/util/List;

    move-result-object v0

    goto :goto_1d

    .line 321
    :pswitch_66
    invoke-virtual {p0}, Lcom/seven/Z7/util/Z7Marshaller;->readBlobData()[B

    move-result-object v0

    goto :goto_1d

    .line 323
    :pswitch_6b
    invoke-virtual {p0}, Lcom/seven/Z7/util/Z7Marshaller;->readIntArrayMapData()Lcom/seven/util/IntArrayMap;

    move-result-object v0

    goto :goto_1d

    .line 301
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2a
        :pswitch_23
        :pswitch_31
        :pswitch_3d
        :pswitch_49
        :pswitch_1e
        :pswitch_55
        :pswitch_66
        :pswitch_61
        :pswitch_3
        :pswitch_6b
    .end packed-switch
.end method


# virtual methods
.method public read()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-direct {p0, v0}, Lcom/seven/Z7/util/Z7Marshaller;->decodeObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readBlobData()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v5, 0x4

    .line 441
    iget-object v2, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 443
    .local v0, len:I
    if-le v0, v5, :cond_2d

    .line 444
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data structure exceeds maximum ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_2d
    new-array v1, v0, [B

    .line 448
    .local v1, result:[B
    iget-object v2, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 449
    return-object v1
.end method

.method public readIntArrayMapData()Lcom/seven/util/IntArrayMap;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x4

    .line 453
    iget-object v3, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 455
    .local v1, len:I
    if-le v1, v6, :cond_2d

    .line 456
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data structure exceeds maximum ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    :cond_2d
    new-instance v2, Lcom/seven/util/IntArrayMap;

    invoke-direct {v2, v1}, Lcom/seven/util/IntArrayMap;-><init>(I)V

    .line 460
    .local v2, map:Lcom/seven/util/IntArrayMap;
    move v0, v1

    .local v0, i:I
    :goto_33
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_45

    .line 465
    iget-object v3, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/seven/Z7/util/Z7Marshaller;->read()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/seven/util/IntArrayMap;->uncheckedAdd(ILjava/lang/Object;)V

    goto :goto_33

    .line 467
    :cond_45
    return-object v2
.end method

.method public readListData()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x4

    .line 427
    iget-object v3, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 429
    .local v2, len:I
    if-le v2, v6, :cond_2d

    .line 430
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data structure exceeds maximum ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 433
    :cond_2d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 434
    .local v1, l:Ljava/util/List;
    move v0, v2

    .local v0, i:I
    :goto_33
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3f

    .line 435
    invoke-virtual {p0}, Lcom/seven/Z7/util/Z7Marshaller;->read()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 437
    :cond_3f
    return-object v1
.end method

.method public readStringData()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 406
    iget-object v3, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 407
    .local v1, encoding:B
    if-eq v1, v4, :cond_2a

    if-eq v1, v5, :cond_2a

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2a

    .line 409
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :cond_2a
    iget-object v3, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 412
    .local v2, len:I
    if-le v2, v6, :cond_55

    .line 413
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data structure exceeds maximum ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 416
    :cond_55
    new-array v0, v2, [B

    .line 417
    .local v0, buf:[B
    iget-object v3, p0, Lcom/seven/Z7/util/Z7Marshaller;->m_in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 418
    if-ne v1, v4, :cond_66

    .line 419
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 423
    :goto_65
    return-object v3

    .line 420
    :cond_66
    if-ne v1, v5, :cond_70

    .line 421
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16LE"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_65

    .line 423
    :cond_70
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-16BE"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_65
.end method