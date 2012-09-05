.class public Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$1;,
        Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final FALSE:Ljava/lang/Boolean;

.field private static final NULL_COUNTER:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;

.field public static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private cachedSize:I

.field private msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

.field private final values:Lcom/google/mobile/googlenav/common/util/IntMap;

.field private wireTypes:Lcom/google/mobile/googlenav/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    new-array v0, v2, [B

    sput-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$1;)V

    sput-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;

    return-void
.end method

.method public constructor <init>(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->cachedSize:I

    iput-object p1, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    return-void
.end method

.method private addObject(ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .registers 3

    return-void
.end method

.method private static checkTag(I)V
    .registers 1

    return-void
.end method

.method private convert(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7

    packed-switch p2, :pswitch_data_b6

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    move-object v0, p1

    :goto_c
    return-object v0

    :pswitch_d
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    move-object v0, p1

    goto :goto_c

    :cond_13
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_e4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    sget-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :pswitch_28
    sget-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :pswitch_2b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_41

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-wide/16 v0, 0x1

    :goto_39
    invoke-static {v0, v1}, Lcom/google/mobile/googlenav/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_39

    :cond_41
    move-object v0, p1

    goto :goto_c

    :pswitch_43
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4e

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/mobile/googlenav/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_c

    :cond_4e
    instance-of v0, p1, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_57
    check-cast p1, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5f} :catch_61

    move-result-object v0

    goto :goto_c

    :catch_61
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6c
    move-object v0, p1

    goto :goto_c

    :pswitch_6e
    instance-of v0, p1, [B

    if-eqz v0, :cond_7e

    check-cast p1, [B

    check-cast p1, [B

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/mobile/googlenav/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_7e
    move-object v0, p1

    goto :goto_c

    :pswitch_80
    instance-of v0, p1, [B

    if-eqz v0, :cond_b3

    if-lez p3, :cond_a1

    :try_start_86
    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_a1

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, p3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;)V

    :goto_97
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto/16 :goto_c

    :cond_a1
    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;)V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_a7} :catch_a8

    goto :goto_97

    :catch_a8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b3
    move-object v0, p1

    goto/16 :goto_c

    :pswitch_data_b6
    .packed-switch 0x10
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_2b
        :pswitch_3
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_d
        :pswitch_43
        :pswitch_80
        :pswitch_80
        :pswitch_6e
        :pswitch_3
        :pswitch_3
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_43
        :pswitch_6e
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x0
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method private static getCount(Ljava/lang/Object;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_3

    :cond_f
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private getDefault(I)Ljava/lang/Object;
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_18

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    if-nez v0, :cond_10

    move-object v0, v1

    :goto_d
    return-object v0

    :sswitch_e
    move-object v0, v1

    goto :goto_d

    :cond_10
    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    nop

    :sswitch_data_18
    .sparse-switch
        0x10 -> :sswitch_e
        0x1a -> :sswitch_e
        0x1b -> :sswitch_e
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .registers 6

    invoke-static {p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    :goto_13
    return-object v0

    :cond_14
    const/4 v2, 0x1

    if-le v1, v2, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13
.end method

.method private getObject(III)Ljava/lang/Object;
    .registers 6

    invoke-static {p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v1

    if-lt p2, v1, :cond_15

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_15
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p4, Ljava/util/Vector;

    if-eqz v1, :cond_1f

    check-cast p4, Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    move-object v0, p4

    :goto_d
    invoke-direct {p0, v1, p3, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_1a

    if-eqz v1, :cond_1a

    if-nez v0, :cond_1b

    invoke-direct {p0, p1, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :cond_1a
    :goto_1a
    return-object v2

    :cond_1b
    invoke-virtual {v0, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_1a

    :cond_1f
    move-object v1, p4

    goto :goto_d
.end method

.method private static getVarIntSize(J)I
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const/16 v0, 0xa

    :cond_8
    return v0

    :cond_9
    const/4 v0, 0x1

    move-wide v1, p0

    :goto_b
    const-wide/16 v3, 0x80

    cmp-long v3, v1, v3

    if-ltz v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x7

    shr-long/2addr v1, v3

    goto :goto_b
.end method

.method private final getWireType(I)I
    .registers 7

    const/16 v4, 0x2f

    invoke-virtual {p0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_34
    const/4 v0, 0x0

    :goto_35
    :pswitch_35
    return v0

    :pswitch_36
    const/4 v0, 0x2

    goto :goto_35

    :pswitch_38
    const/4 v0, 0x1

    goto :goto_35

    :pswitch_3a
    const/4 v0, 0x5

    goto :goto_35

    :pswitch_3c
    const/4 v0, 0x3

    goto :goto_35

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_9
        :pswitch_35
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_35
        :pswitch_38
        :pswitch_3a
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_38
        :pswitch_3a
        :pswitch_34
        :pswitch_36
        :pswitch_3c
        :pswitch_36
        :pswitch_36
        :pswitch_34
        :pswitch_34
        :pswitch_3a
        :pswitch_38
        :pswitch_34
        :pswitch_34
        :pswitch_36
        :pswitch_36
    .end packed-switch
.end method

.method private insertObject(IILjava/lang/Object;Z)V
    .registers 9

    invoke-static {p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v1, p1}, Lcom/google/mobile/googlenav/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    instance-of v3, v2, Ljava/util/Vector;

    if-eqz v3, :cond_12

    move-object v0, v2

    check-cast v0, Ljava/util/Vector;

    move-object v1, v0

    :cond_12
    if-eqz v2, :cond_1c

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_20

    :cond_1c
    invoke-direct {p0, p1, p3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0, p1, p3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    if-nez v1, :cond_32

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v2, p1, v1}, Lcom/google/mobile/googlenav/common/util/IntMap;->put(ILjava/lang/Object;)V

    :cond_32
    if-eqz p4, :cond_38

    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1f

    :cond_38
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1f
.end method

.method private isZigZagEncodedType(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private outputField(ILcom/google/mobile/googlenav/common/io/MarkedOutputStream;)I
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    invoke-direct/range {p0 .. p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v6

    shl-int/lit8 v4, p1, 0x3

    or-int v7, v4, v6

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v5, :cond_119

    int-to-long v9, v7

    move-object/from16 v0, p2

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v9

    add-int/2addr v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v11

    packed-switch v6, :pswitch_data_11e

    :pswitch_21
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :pswitch_27
    const/16 v4, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const/4 v4, 0x5

    if-ne v6, v4, :cond_58

    const/4 v4, 0x4

    :goto_3d
    const/4 v14, 0x0

    move/from16 v17, v14

    move-wide/from16 v18, v12

    move-wide/from16 v13, v18

    move/from16 v12, v17

    :goto_46
    if-ge v12, v4, :cond_5b

    const-wide/16 v15, 0xff

    and-long/2addr v15, v13

    long-to-int v15, v15

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->write(I)V

    const/16 v15, 0x8

    shr-long/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_46

    :cond_58
    const/16 v4, 0x8

    goto :goto_3d

    :cond_5b
    move v4, v10

    :goto_5c
    if-nez v4, :cond_11a

    invoke-virtual/range {p2 .. p2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v4

    sub-int/2addr v4, v11

    add-int/2addr v4, v9

    :goto_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :pswitch_67
    const/16 v4, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct/range {p0 .. p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-static {v12, v13}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v12

    :cond_83
    move-object/from16 v0, p2

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move v4, v10

    goto :goto_5c

    :pswitch_8b
    invoke-virtual/range {p0 .. p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v4

    const/16 v12, 0x1b

    if-ne v4, v12, :cond_b7

    const/16 v4, 0x10

    :goto_95
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    instance-of v12, v4, [B

    if-eqz v12, :cond_ba

    check-cast v4, [B

    check-cast v4, [B

    array-length v12, v4

    int-to-long v12, v12

    move-object/from16 v0, p2

    move-wide v1, v12

    invoke-static {v0, v1, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->write([B)V

    move v4, v10

    goto :goto_5c

    :cond_b7
    const/16 v4, 0x19

    goto :goto_95

    :cond_ba
    invoke-virtual/range {p2 .. p2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v10

    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->addMarker(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->numMarkers()I

    move-result v10

    const/4 v12, -0x1

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->addMarker(I)V

    check-cast v4, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;)I

    move-result v4

    move-object/from16 v0, p2

    move v1, v10

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->setMarker(II)V

    int-to-long v12, v4

    invoke-static {v12, v13}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v10

    add-int/2addr v4, v10

    add-int/2addr v4, v9

    const/4 v9, 0x1

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    goto/16 :goto_5c

    :pswitch_ee
    const/16 v4, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;)I

    move-result v4

    add-int/2addr v4, v9

    shl-int/lit8 v9, p1, 0x3

    or-int/lit8 v9, v9, 0x4

    int-to-long v9, v9

    move-object/from16 v0, p2

    move-wide v1, v9

    invoke-static {v0, v1, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v9

    add-int/2addr v4, v9

    const/4 v9, 0x1

    move/from16 v17, v9

    move v9, v4

    move/from16 v4, v17

    goto/16 :goto_5c

    :cond_119
    return v4

    :cond_11a
    move v4, v9

    goto/16 :goto_64

    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_67
        :pswitch_27
        :pswitch_8b
        :pswitch_ee
        :pswitch_21
        :pswitch_27
    .end packed-switch
.end method

.method private outputTo(Ljava/io/OutputStream;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v2, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;

    invoke-direct {v2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;-><init>()V

    invoke-direct {p0, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;)I

    move-result v3

    if-eqz p2, :cond_13

    move-object v0, p1

    check-cast v0, Ljava/io/DataOutput;

    move-object v1, v0

    invoke-interface {v1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_13
    invoke-virtual {v2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->numMarkers()I

    move-result v1

    move v3, v4

    :goto_18
    if-ge v3, v1, :cond_31

    invoke-virtual {v2, v3}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v5

    sub-int v6, v5, v4

    invoke-virtual {v2, p1, v4, v6}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v2, v4}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v4

    int-to-long v6, v4

    invoke-static {p1, v6, v7}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    add-int/lit8 v3, v3, 0x2

    move v4, v5

    goto :goto_18

    :cond_31
    invoke-virtual {v2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v1

    if-ge v4, v1, :cond_3f

    invoke-virtual {v2}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v2, p1, v4, v1}, Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    :cond_3f
    return-void
.end method

.method private outputToInternal(Lcom/google/mobile/googlenav/common/io/MarkedOutputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/util/IntMap;->keys()Lcom/google/mobile/googlenav/common/util/IntMap$KeyIterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/util/IntMap$KeyIterator;->next()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->outputField(ILcom/google/mobile/googlenav/common/io/MarkedOutputStream;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_7

    :cond_17
    return v1
.end method

.method private parseInternal(Ljava/io/InputStream;IZLcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->clear()V

    :cond_5
    move v0, p2

    :goto_6
    if-lez v0, :cond_13

    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1b

    :cond_13
    if-gez v0, :cond_ef

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1b
    iget v3, p4, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v3

    long-to-int v3, v1

    and-int/lit8 v3, v3, 0x7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_13

    const/4 v4, 0x3

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v2

    const/16 v4, 0x10

    if-ne v2, v4, :cond_43

    iget-object v2, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/mobile/googlenav/common/util/IntMap;

    if-nez v2, :cond_3a

    new-instance v2, Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-direct {v2}, Lcom/google/mobile/googlenav/common/util/IntMap;-><init>()V

    iput-object v2, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/mobile/googlenav/common/util/IntMap;

    :cond_3a
    iget-object v2, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-static {v3}, Lcom/google/mobile/googlenav/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/google/mobile/googlenav/common/util/IntMap;->put(ILjava/lang/Object;)V

    :cond_43
    packed-switch v3, :pswitch_data_f0

    :pswitch_46
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown wire type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reading garbage data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_65
    const/4 v2, 0x0

    invoke-static {p1, v2, p4}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v2

    iget v4, p4, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v4

    invoke-direct {p0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-static {v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v2

    :cond_77
    invoke-static {v2, v3}, Lcom/google/mobile/googlenav/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    :goto_7e
    invoke-direct {p0, v1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_6

    :pswitch_83
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x5

    if-ne v3, v6, :cond_9e

    const/4 v3, 0x4

    :goto_8a
    sub-int/2addr v0, v3

    move v9, v3

    move v3, v2

    move v2, v9

    :goto_8e
    add-int/lit8 v6, v2, -0x1

    if-lez v2, :cond_a1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-long v7, v2

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v2, v3, 0x8

    move v3, v2

    move v2, v6

    goto :goto_8e

    :cond_9e
    const/16 v3, 0x8

    goto :goto_8a

    :cond_a1
    invoke-static {v4, v5}, Lcom/google/mobile/googlenav/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_7e

    :pswitch_a9
    const/4 v2, 0x0

    invoke-static {p1, v2, p4}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p4, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    if-nez v2, :cond_ca

    sget-object v3, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    :goto_b7
    const/4 v4, 0x0

    :goto_b8
    if-ge v4, v2, :cond_cf

    sub-int v5, v2, v4

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_cd

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ca
    new-array v3, v2, [B

    goto :goto_b7

    :cond_cd
    add-int/2addr v4, v5

    goto :goto_b8

    :cond_cf
    move v2, v0

    move-object v0, v3

    goto :goto_7e

    :pswitch_d2
    new-instance v2, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    iget-object v3, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    if-nez v3, :cond_e5

    const/4 v3, 0x0

    :goto_d9
    invoke-direct {v2, v3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;)V

    const/4 v3, 0x0

    invoke-direct {v2, p1, v0, v3, p4}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    goto :goto_7e

    :cond_e5
    iget-object v3, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-object v3, p2

    goto :goto_d9

    :cond_ef
    return v0

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_65
        :pswitch_83
        :pswitch_a9
        :pswitch_d2
        :pswitch_46
        :pswitch_83
    .end packed-switch
.end method

.method private static readVarInt(Ljava/io/InputStream;ZLcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput v2, p2, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move v7, v2

    move v8, v2

    move-wide v2, v0

    move v0, v7

    move v1, v8

    :goto_a
    const/16 v4, 0xa

    if-ge v0, v4, :cond_39

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    if-nez v0, :cond_1c

    if-eqz p1, :cond_1c

    const-wide/16 v0, -0x1

    :goto_1b
    return-wide v0

    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_34

    move-wide v1, v2

    :goto_2e
    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move-wide v0, v1

    goto :goto_1b

    :cond_34
    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_39
    move-wide v1, v2

    goto :goto_2e
.end method

.method private setObject(ILjava/lang/Object;)V
    .registers 4

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    if-eqz p2, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    :cond_d
    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/mobile/googlenav/common/util/IntMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-wide v1, p1

    :goto_2
    const/16 v3, 0xa

    if-ge v0, v3, :cond_17

    const-wide/16 v3, 0x7f

    and-long/2addr v3, v1

    long-to-int v3, v3

    const/4 v4, 0x7

    ushr-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_18

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_17
    return v0

    :cond_18
    or-int/lit16 v3, v3, 0x80

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private static zigZagDecode(J)J
    .registers 6

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static zigZagEncode(J)J
    .registers 6

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addInt(II)V
    .registers 5

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    return-void
.end method

.method public addLong(IJ)V
    .registers 5

    invoke-static {p2, p3}, Lcom/google/mobile/googlenav/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public addProtoBuf(ILcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/util/IntMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/mobile/googlenav/common/util/IntMap;

    return-void
.end method

.method public clone()Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getType()Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;)V

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    :catch_11
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not serialize and parse ProtoBuf."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->clone()Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public createGroup(I)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    new-instance v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getType()Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method

.method public getBool(I)Z
    .registers 3

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .registers 3

    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4

    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getProtoBuf(I)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getProtoBuf(II)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(I)I
    .registers 6

    const/4 v3, 0x0

    const/16 v2, 0x10

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v0

    move v1, v0

    :goto_e
    if-ne v1, v2, :cond_3c

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/mobile/googlenav/common/util/IntMap;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_1c
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_22
    if-ne v0, v2, :cond_37

    invoke-virtual {p0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-lez v1, :cond_37

    invoke-direct {p0, p1, v3, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_36

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3a

    :cond_36
    move v0, v3

    :cond_37
    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_1c

    :cond_3a
    const/4 v0, 0x2

    goto :goto_37

    :cond_3c
    move v0, v1

    goto :goto_22

    :cond_3e
    move v1, v2

    goto :goto_e
.end method

.method public getType()Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hasFieldSet(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public outputWithSizeTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-instance v1, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$1;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/mobile/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public parse([B)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public setBool(IZ)V
    .registers 4

    if-eqz p2, :cond_8

    sget-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void

    :cond_8
    sget-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setInt(II)V
    .registers 5

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setLong(IJ)V
    .registers 5

    invoke-static {p2, p3}, Lcom/google/mobile/googlenav/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setProtoBuf(ILcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public toByteArray()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
