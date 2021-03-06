.class public Lcom/googlex/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlex/common/io/protocol/ProtoBuf$1;,
        Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B = null

.field public static final FALSE:Ljava/lang/Boolean; = null

.field private static final MARKER_HOLDER:I = -0x1

.field private static final MSG_EOF:Ljava/lang/String; = "Unexp.EOF"

.field private static final MSG_MISMATCH:Ljava/lang/String; = "Type mismatch"

.field private static final MSG_UNSUPPORTED:Ljava/lang/String; = "Unsupp.Type"

.field private static final NULL_COUNTER:Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter; = null

.field public static final TRUE:Ljava/lang/Boolean; = null

.field private static final VARINT_MAX_BYTES:I = 0xa

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# instance fields
.field private cachedSize:I

.field private msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

.field private final values:Lcom/googlex/common/util/IntMap;

.field private wireTypes:Lcom/googlex/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    new-array v0, v2, [B

    sput-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    new-instance v0, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/googlex/common/io/protocol/ProtoBuf$1;)V

    sput-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;

    return-void
.end method

.method public constructor <init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->cachedSize:I

    iput-object p1, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    new-instance v0, Lcom/googlex/common/util/IntMap;

    invoke-direct {v0}, Lcom/googlex/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    return-void
.end method

.method private addObject(ILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

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

    packed-switch p2, :pswitch_data_ac

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    :pswitch_f
    return-object p1

    :cond_10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_da

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    sget-object p1, Lcom/googlex/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :pswitch_25
    sget-object p1, Lcom/googlex/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :pswitch_28
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-wide/16 v0, 0x1

    :goto_36
    invoke-static {v0, v1}, Lcom/googlex/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_f

    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_36

    :pswitch_3e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_49

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/googlex/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_f

    :cond_49
    instance-of v0, p1, Lcom/googlex/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_52
    check-cast p1, Lcom/googlex/common/io/protocol/ProtoBuf;

    invoke-virtual {p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_5c

    move-result-object p1

    goto :goto_f

    :catch_5c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_67
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    check-cast p1, [B

    check-cast p1, [B

    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/googlex/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :pswitch_77
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    if-lez p3, :cond_99

    :try_start_7d
    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_99

    new-instance v1, Lcom/googlex/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p3}, Lcom/googlex/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V

    move-object v0, v1

    :goto_8f
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->parse([B)Lcom/googlex/common/io/protocol/ProtoBuf;

    move-result-object p1

    goto/16 :goto_f

    :cond_99
    new-instance v0, Lcom/googlex/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_9f} :catch_a0

    goto :goto_8f

    :catch_a0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_ac
    .packed-switch 0x10
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_28
        :pswitch_3
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_b
        :pswitch_3e
        :pswitch_77
        :pswitch_77
        :pswitch_67
        :pswitch_3
        :pswitch_3
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_3e
        :pswitch_67
    .end packed-switch

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private getCachedDataSize(IIZ)I
    .registers 9

    shl-int/lit8 v0, p1, 0x3

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    :pswitch_e
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    if-eqz v1, :cond_4a

    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    :goto_1d
    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/googlex/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_24
    return v0

    :pswitch_25
    add-int/lit8 v0, v2, 0x4

    goto :goto_24

    :pswitch_28
    add-int/lit8 v0, v2, 0x8

    goto :goto_24

    :pswitch_2b
    invoke-virtual {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v0

    :cond_39
    invoke-static {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_24

    :pswitch_3f
    invoke-virtual {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/googlex/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {v0, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v2

    goto :goto_24

    :cond_4a
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_57

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/googlex/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v0

    goto :goto_1d

    :cond_57
    check-cast v0, Lcom/googlex/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    goto :goto_1d

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_28
        :pswitch_e
        :pswitch_3f
        :pswitch_e
        :pswitch_25
    .end packed-switch
.end method

.method private getCachedDataSize(Z)I
    .registers 9

    const/4 v1, 0x0

    iget v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->cachedSize:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_c

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->cachedSize:I

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0}, Lcom/googlex/common/util/IntMap;->keys()Lcom/googlex/common/util/IntMap$KeyIterator;

    move-result-object v4

    move v0, v1

    :cond_13
    invoke-virtual {v4}, Lcom/googlex/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual {v4}, Lcom/googlex/common/util/IntMap$KeyIterator;->next()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    move v2, v1

    :goto_22
    if-ge v2, v6, :cond_13

    invoke-direct {p0, v5, v2, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCachedDataSize(IIZ)I

    move-result v3

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_22

    :cond_2e
    iput v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->cachedSize:I

    iget v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->cachedSize:I

    goto :goto_b
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
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/googlex/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    :sswitch_e
    const/4 v0, 0x0

    goto :goto_d

    :sswitch_data_10
    .sparse-switch
        0x10 -> :sswitch_e
        0x1a -> :sswitch_e
        0x1b -> :sswitch_e
    .end sparse-switch
.end method

.method private static getNumBytesUsed(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3

    :cond_f
    instance-of v1, p0, Ljava/util/Vector;

    if-eqz v1, :cond_30

    move v1, v0

    move v2, v0

    :goto_15
    move-object v0, p0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    move-object v0, p0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getNumBytesUsed(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_2e
    move v0, v2

    goto :goto_3

    :cond_30
    instance-of v1, p0, Lcom/googlex/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_3b

    check-cast p0, Lcom/googlex/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getNumBytesUsed()I

    move-result v0

    goto :goto_3

    :cond_3b
    instance-of v1, p0, [B

    if-eqz v1, :cond_45

    check-cast p0, [B

    check-cast p0, [B

    array-length v0, p0

    goto :goto_3

    :cond_45
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_4c

    const/16 v0, 0x8

    goto :goto_3

    :cond_4c
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method private getObject(II)Ljava/lang/Object;
    .registers 6

    invoke-static {p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/googlex/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_14

    invoke-direct {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

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

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13
.end method

.method private getObject(III)Ljava/lang/Object;
    .registers 6

    invoke-static {p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/googlex/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v1

    if-lt p2, v1, :cond_15

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_15
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v0, 0x0

    instance-of v1, p4, Ljava/util/Vector;

    if-eqz v1, :cond_1d

    check-cast p4, Ljava/util/Vector;

    invoke-virtual {p4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_b
    invoke-direct {p0, v0, p3, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_18

    if-eqz v0, :cond_18

    if-nez p4, :cond_19

    invoke-direct {p0, p1, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :cond_18
    :goto_18
    return-object v1

    :cond_19
    invoke-virtual {p4, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_18

    :cond_1d
    move-object v2, v0

    move-object v0, p4

    move-object p4, v2

    goto :goto_b
.end method

.method private static getVarIntSize(J)I
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    const/16 v0, 0xa

    :cond_8
    return v0

    :cond_9
    const/4 v0, 0x1

    :goto_a
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_a
.end method

.method private final getWireType(I)I
    .registers 7

    const/16 v4, 0x2f

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

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

.method private insertObject(IILjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    return-void
.end method

.method private insertObject(IILjava/lang/Object;Z)V
    .registers 8

    invoke-static {p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->checkTag(I)V

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/googlex/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_11

    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    :cond_11
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1f

    :cond_1b
    invoke-direct {p0, p1, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :goto_1e
    return-void

    :cond_1f
    invoke-direct {p0, p1, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    if-nez v0, :cond_31

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v1, p1, v0}, Lcom/googlex/common/util/IntMap;->put(ILjava/lang/Object;)V

    :cond_31
    if-eqz p4, :cond_37

    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1e

    :cond_37
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1e
.end method

.method private isZigZagEncodedType(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getType(I)I

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

.method private outputField(ILcom/googlex/common/io/MarkedOutputStream;)I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    invoke-direct/range {p0 .. p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v9

    shl-int/lit8 v1, p1, 0x3

    or-int v10, v1, v9

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v7, v1

    move v1, v2

    :goto_10
    if-ge v7, v8, :cond_f9

    int-to-long v2, v10

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v2

    add-int v4, v1, v2

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/googlex/common/io/MarkedOutputStream;->availableContent()I

    move-result v11

    packed-switch v9, :pswitch_data_fa

    :pswitch_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_29
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v1, 0x5

    if-ne v9, v1, :cond_4d

    const/4 v1, 0x4

    :goto_3b
    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_50

    const-wide/16 v12, 0xff

    and-long/2addr v12, v5

    long-to-int v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/googlex/common/io/MarkedOutputStream;->write(I)V

    const/16 v12, 0x8

    shr-long/2addr v5, v12

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4d
    const/16 v1, 0x8

    goto :goto_3b

    :cond_50
    move v2, v3

    move v1, v4

    :goto_52
    if-nez v2, :cond_5a

    invoke-virtual/range {p2 .. p2}, Lcom/googlex/common/io/MarkedOutputStream;->availableContent()I

    move-result v2

    sub-int/2addr v2, v11

    add-int/2addr v1, v2

    :cond_5a
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_10

    :pswitch_5e
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct/range {p0 .. p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v5

    if-eqz v5, :cond_76

    invoke-static {v1, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v1

    :cond_76
    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move v2, v3

    move v1, v4

    goto :goto_52

    :pswitch_7e
    invoke-virtual/range {p0 .. p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_a5

    const/16 v1, 0x10

    :goto_88
    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_a8

    check-cast v1, [B

    check-cast v1, [B

    array-length v2, v1

    int-to-long v5, v2

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/googlex/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/googlex/common/io/MarkedOutputStream;->write([B)V

    move v2, v3

    move v1, v4

    goto :goto_52

    :cond_a5
    const/16 v1, 0x19

    goto :goto_88

    :cond_a8
    invoke-virtual/range {p2 .. p2}, Lcom/googlex/common/io/MarkedOutputStream;->availableContent()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/googlex/common/io/MarkedOutputStream;->addMarker(I)V

    invoke-virtual/range {p2 .. p2}, Lcom/googlex/common/io/MarkedOutputStream;->numMarkers()I

    move-result v2

    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/googlex/common/io/MarkedOutputStream;->addMarker(I)V

    check-cast v1, Lcom/googlex/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/googlex/common/io/MarkedOutputStream;)I

    move-result v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1}, Lcom/googlex/common/io/MarkedOutputStream;->setMarker(II)V

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v4, v1

    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    goto/16 :goto_52

    :pswitch_d6
    const/16 v1, 0x1a

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/googlex/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/googlex/common/io/MarkedOutputStream;)I

    move-result v1

    add-int/2addr v1, v4

    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    goto/16 :goto_52

    :cond_f9
    return v1

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_29
        :pswitch_7e
        :pswitch_d6
        :pswitch_23
        :pswitch_29
    .end packed-switch
.end method

.method private outputTo(Ljava/io/OutputStream;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Lcom/googlex/common/io/MarkedOutputStream;

    invoke-direct {v3}, Lcom/googlex/common/io/MarkedOutputStream;-><init>()V

    invoke-direct {p0, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/googlex/common/io/MarkedOutputStream;)I

    move-result v2

    if-eqz p2, :cond_12

    move-object v0, p1

    check-cast v0, Ljava/io/DataOutput;

    invoke-interface {v0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_12
    invoke-virtual {v3}, Lcom/googlex/common/io/MarkedOutputStream;->numMarkers()I

    move-result v4

    move v0, v1

    :goto_17
    if-ge v0, v4, :cond_30

    invoke-virtual {v3, v0}, Lcom/googlex/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v2

    sub-int v5, v2, v1

    invoke-virtual {v3, p1, v1, v5}, Lcom/googlex/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v1}, Lcom/googlex/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v1

    int-to-long v5, v1

    invoke-static {p1, v5, v6}, Lcom/googlex/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_17

    :cond_30
    invoke-virtual {v3}, Lcom/googlex/common/io/MarkedOutputStream;->availableContent()I

    move-result v0

    if-ge v1, v0, :cond_3e

    invoke-virtual {v3}, Lcom/googlex/common/io/MarkedOutputStream;->availableContent()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, p1, v1, v0}, Lcom/googlex/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    :cond_3e
    return-void
.end method

.method private outputToInternal(Lcom/googlex/common/io/MarkedOutputStream;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0}, Lcom/googlex/common/util/IntMap;->keys()Lcom/googlex/common/util/IntMap$KeyIterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1}, Lcom/googlex/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v1}, Lcom/googlex/common/util/IntMap$KeyIterator;->next()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputField(ILcom/googlex/common/io/MarkedOutputStream;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_7

    :cond_17
    return v0
.end method

.method private parseInternal(Ljava/io/InputStream;IZLcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/googlex/common/io/protocol/ProtoBuf;->clear()V

    :cond_5
    move v0, p2

    :goto_6
    if-lez v0, :cond_13

    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Lcom/googlex/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v3

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_1b

    :cond_13
    :goto_13
    if-gez v0, :cond_e9

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1b
    iget v1, p4, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int v2, v0, v1

    long-to-int v0, v3

    and-int/lit8 v0, v0, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_27

    move v0, v2

    goto :goto_13

    :cond_27
    const/4 v1, 0x3

    ushr-long/2addr v3, v1

    long-to-int v6, v3

    invoke-virtual {p0, v6}, Lcom/googlex/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    const/16 v3, 0x10

    if-ne v1, v3, :cond_46

    iget-object v1, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->wireTypes:Lcom/googlex/common/util/IntMap;

    if-nez v1, :cond_3d

    new-instance v1, Lcom/googlex/common/util/IntMap;

    invoke-direct {v1}, Lcom/googlex/common/util/IntMap;-><init>()V

    iput-object v1, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->wireTypes:Lcom/googlex/common/util/IntMap;

    :cond_3d
    iget-object v1, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->wireTypes:Lcom/googlex/common/util/IntMap;

    invoke-static {v0}, Lcom/googlex/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/googlex/common/util/IntMap;->put(ILjava/lang/Object;)V

    :cond_46
    packed-switch v0, :pswitch_data_ea

    :pswitch_49
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown wire type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", reading garbage data?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_68
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lcom/googlex/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    iget v3, p4, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v6}, Lcom/googlex/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    invoke-static {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v0

    :cond_7a
    invoke-static {v0, v1}, Lcom/googlex/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    move v1, v2

    :cond_7f
    :goto_7f
    invoke-direct {p0, v6, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_6

    :pswitch_84
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9d

    const/4 v0, 0x4

    :goto_8b
    sub-int v1, v2, v0

    :goto_8d
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_a0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v2

    goto :goto_8d

    :cond_9d
    const/16 v0, 0x8

    goto :goto_8b

    :cond_a0
    invoke-static {v4, v5}, Lcom/googlex/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7f

    :pswitch_a5
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lcom/googlex/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    long-to-int v3, v0

    iget v0, p4, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int v0, v2, v0

    sub-int v1, v0, v3

    if-nez v3, :cond_c8

    sget-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    :goto_b5
    const/4 v2, 0x0

    :goto_b6
    if-ge v2, v3, :cond_7f

    sub-int v4, v3, v2

    invoke-virtual {p1, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gtz v4, :cond_cb

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c8
    new-array v0, v3, [B

    goto :goto_b5

    :cond_cb
    add-int/2addr v2, v4

    goto :goto_b6

    :pswitch_cd
    new-instance v1, Lcom/googlex/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    if-nez v0, :cond_e0

    const/4 v0, 0x0

    :goto_d4
    invoke-direct {v1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V

    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v0, p4}, Lcom/googlex/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_7f

    :cond_e0
    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6}, Lcom/googlex/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/io/protocol/ProtoBufType;

    goto :goto_d4

    :cond_e9
    return v0

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_68
        :pswitch_84
        :pswitch_a5
        :pswitch_cd
        :pswitch_49
        :pswitch_84
    .end packed-switch
.end method

.method static readVarInt(Ljava/io/InputStream;Z)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;

    invoke-static {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readVarInt(Ljava/io/InputStream;ZLcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iput v0, p2, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move v3, v0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    :goto_a
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2d

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    if-nez v2, :cond_1c

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

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_32

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    goto :goto_1b

    :cond_32
    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private setObject(ILjava/lang/Object;)V
    .registers 4

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    if-eqz p2, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    :cond_d
    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/googlex/common/util/IntMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    const-wide/16 v1, 0x7f

    and-long/2addr v1, p1

    long-to-int v1, v1

    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_17

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    :cond_16
    return v0

    :cond_17
    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
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
.method public addBool(IZ)V
    .registers 4

    if-eqz p2, :cond_8

    sget-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void

    :cond_8
    sget-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public addBytes(I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public addDouble(ID)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public addFloat(IF)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->setInt(II)V

    return-void
.end method

.method public addInt(II)V
    .registers 5

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->addLong(IJ)V

    return-void
.end method

.method public addLong(IJ)V
    .registers 5

    invoke-static {p2, p3}, Lcom/googlex/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public addProtoBuf(ILcom/googlex/common/io/protocol/ProtoBuf;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0}, Lcom/googlex/common/util/IntMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->wireTypes:Lcom/googlex/common/util/IntMap;

    return-void
.end method

.method public createGroup(I)Lcom/googlex/common/io/protocol/ProtoBuf;
    .registers 4

    new-instance v1, Lcom/googlex/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getType()Lcom/googlex/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/googlex/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V

    return-object v1
.end method

.method public getBool(I)Z
    .registers 3

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBool(II)Z
    .registers 4

    const/16 v0, 0x18

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .registers 3

    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getBytes(II)[B
    .registers 4

    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getCount(I)I
    .registers 3

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/googlex/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(II)D
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFloat(II)F
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4

    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInt(II)I
    .registers 5

    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(II)J
    .registers 5

    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumBytesUsed()I
    .registers 5

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0}, Lcom/googlex/common/util/IntMap;->getNumBytesOverhead()I

    move-result v0

    iget-object v1, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v1}, Lcom/googlex/common/util/IntMap;->keys()Lcom/googlex/common/util/IntMap$KeyIterator;

    move-result-object v1

    :goto_c
    invoke-virtual {v1}, Lcom/googlex/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Lcom/googlex/common/util/IntMap$KeyIterator;->next()I

    move-result v2

    iget-object v3, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v3, v2}, Lcom/googlex/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->getNumBytesUsed(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_c

    :cond_22
    return v0
.end method

.method public getProtoBuf(I)Lcom/googlex/common/io/protocol/ProtoBuf;
    .registers 3

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getProtoBuf(II)Lcom/googlex/common/io/protocol/ProtoBuf;
    .registers 4

    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)I
    .registers 6

    const/4 v1, 0x0

    const/16 v3, 0x10

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/googlex/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v2

    :goto_d
    if-ne v2, v3, :cond_3b

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->wireTypes:Lcom/googlex/common/util/IntMap;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->wireTypes:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/googlex/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    :goto_1b
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_21
    if-ne v0, v3, :cond_36

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-lez v2, :cond_36

    invoke-direct {p0, p1, v1, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_35

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    :cond_35
    move v0, v1

    :cond_36
    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_1b

    :cond_39
    const/4 v0, 0x2

    goto :goto_36

    :cond_3b
    move v0, v2

    goto :goto_21

    :cond_3d
    move v2, v3

    goto :goto_d
.end method

.method public getType()Lcom/googlex/common/io/protocol/ProtoBufType;
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

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

.method public insertBool(IIZ)V
    .registers 5

    if-eqz p3, :cond_8

    sget-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void

    :cond_8
    sget-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public insertBytes(II[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertDouble(IID)V
    .registers 7

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public insertFloat(IIF)V
    .registers 5

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertInt(III)V

    return-void
.end method

.method public insertInt(III)V
    .registers 6

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public insertLong(IIJ)V
    .registers 6

    invoke-static {p3, p4}, Lcom/googlex/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertProtoBuf(IILcom/googlex/common/io/protocol/ProtoBuf;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p0}, Lcom/googlex/common/io/protocol/ProtoBufType;->isValidProto(Lcom/googlex/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public maxTag()I
    .registers 2

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0}, Lcom/googlex/common/util/IntMap;->maxKey()I

    move-result v0

    return v0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

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

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

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

    new-instance v1, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/googlex/common/io/protocol/ProtoBuf$1;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/googlex/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/googlex/common/io/protocol/ProtoBuf;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public parse([B)Lcom/googlex/common/io/protocol/ProtoBuf;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public remove(II)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lt p2, v0, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/googlex/common/util/IntMap;->remove(I)Ljava/lang/Object;

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/googlex/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_14
.end method

.method public setBool(IZ)V
    .registers 4

    if-eqz p2, :cond_8

    sget-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void

    :cond_8
    sget-object v0, Lcom/googlex/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setBytes(I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setDouble(ID)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setFloat(IF)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->setInt(II)V

    return-void
.end method

.method public setInt(II)V
    .registers 5

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setLong(IJ)V
    .registers 5

    invoke-static {p2, p3}, Lcom/googlex/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setProtoBuf(ILcom/googlex/common/io/protocol/ProtoBuf;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method setType(Lcom/googlex/common/io/protocol/ProtoBufType;)V
    .registers 3

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->values:Lcom/googlex/common/util/IntMap;

    invoke-virtual {v0}, Lcom/googlex/common/util/IntMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    if-eq p1, v0, :cond_18

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_18
    iput-object p1, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->msgType:Lcom/googlex/common/io/protocol/ProtoBufType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlex/common/io/protocol/ProtoBuf;->wireTypes:Lcom/googlex/common/util/IntMap;

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

    invoke-virtual {p0, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
