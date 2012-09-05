.class public Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;


# static fields
.field public static final FALSE:Ljava/lang/Boolean; = null

.field private static final MSG_EOF:Ljava/lang/String; = "Unexp.EOF"

.field private static final MSG_MISMATCH:Ljava/lang/String; = "Type mismatch"

.field private static final MSG_UNSUPPORTED:Ljava/lang/String; = "Unsupp.Type"

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

.field private msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

.field private final values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

.field private final wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->newIntMapForProtoBuf()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->newIntMapForProtoBuf()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    :goto_17
    return-void

    :cond_18
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    goto :goto_17
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .registers 7

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_d

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    :pswitch_c
    :sswitch_c
    return-void

    :cond_d
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_3c

    const/16 v2, 0x18

    if-eq v1, v2, :cond_c

    if-eqz v1, :cond_c

    :cond_17
    :goto_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type mismatch type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    instance-of v2, p2, Ljava/lang/Long;

    if-eqz v2, :cond_44

    packed-switch v1, :pswitch_data_82

    :pswitch_43
    goto :goto_17

    :cond_44
    instance-of v2, p2, [B

    if-eqz v2, :cond_4c

    sparse-switch v1, :sswitch_data_cc

    goto :goto_17

    :cond_4c
    instance-of v2, p2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    if-eqz v2, :cond_79

    sparse-switch v1, :sswitch_data_e6

    goto :goto_17

    :sswitch_54
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v0, p2

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-object v1, v0

    iget-object v1, v1, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v1, :cond_c

    check-cast p2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    iget-object v1, p2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_c

    :cond_79
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_17

    sparse-switch v1, :sswitch_data_fc

    goto :goto_17

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_43
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :sswitch_data_cc
    .sparse-switch
        0x2 -> :sswitch_c
        0x19 -> :sswitch_c
        0x1b -> :sswitch_c
        0x1c -> :sswitch_c
        0x23 -> :sswitch_c
        0x24 -> :sswitch_c
    .end sparse-switch

    :sswitch_data_e6
    .sparse-switch
        0x2 -> :sswitch_54
        0x3 -> :sswitch_54
        0x19 -> :sswitch_54
        0x1a -> :sswitch_54
        0x1b -> :sswitch_54
    .end sparse-switch

    :sswitch_data_fc
    .sparse-switch
        0x2 -> :sswitch_c
        0x19 -> :sswitch_c
        0x1c -> :sswitch_c
        0x24 -> :sswitch_c
    .end sparse-switch
.end method

.method private static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5

    packed-switch p1, :pswitch_data_a2

    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    move-object v0, p0

    :goto_c
    return-object v0

    :pswitch_d
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_13

    move-object v0, p0

    goto :goto_c

    :cond_13
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_d0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_25
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :pswitch_28
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_c

    :pswitch_2b
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_41

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3e

    const-wide/16 v0, 0x1

    :goto_39
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_c

    :cond_3e
    const-wide/16 v0, 0x0

    goto :goto_39

    :cond_41
    move-object v0, p0

    goto :goto_c

    :pswitch_43
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_4e

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_c

    :cond_4e
    instance-of v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_6c

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_57
    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

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
    move-object v0, p0

    goto :goto_c

    :pswitch_6e
    instance-of v0, p0, [B

    if-eqz v0, :cond_7e

    check-cast p0, [B

    check-cast p0, [B

    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_7e
    move-object v0, p0

    goto :goto_c

    :pswitch_80
    instance-of v0, p0, [B

    if-eqz v0, :cond_9f

    :try_start_84
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_91} :catch_94

    move-result-object v0

    goto/16 :goto_c

    :catch_94
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9f
    move-object v0, p0

    goto/16 :goto_c

    :pswitch_data_a2
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

    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method private getCachedDataSize(IIZ)I
    .registers 8

    shl-int/lit8 v0, p1, 0x3

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    :pswitch_e
    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, [B

    if-eqz v1, :cond_4a

    check-cast p0, [B

    check-cast p0, [B

    array-length v1, p0

    :goto_1d
    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    :goto_24
    return v0

    :pswitch_25
    add-int/lit8 v0, v0, 0x4

    goto :goto_24

    :pswitch_28
    add-int/lit8 v0, v0, 0x8

    goto :goto_24

    :pswitch_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v1

    :cond_39
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_24

    :pswitch_3f
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v1

    add-int/2addr v1, v0

    add-int/2addr v0, v1

    goto :goto_24

    :cond_4a
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_57

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;[BI)I

    move-result v1

    goto :goto_1d

    :cond_57
    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-direct {p0, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v1

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
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    const/high16 v1, -0x8000

    if-eq v0, v1, :cond_c

    if-eqz p1, :cond_c

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->keys()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;

    move-result-object v0

    move v1, v5

    :goto_13
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;->next()I

    move-result v2

    move v3, v1

    move v1, v5

    :goto_1f
    invoke-virtual {p0, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    if-ge v1, v4, :cond_2d

    invoke-direct {p0, v2, v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(IIZ)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_2d
    move v1, v3

    goto :goto_13

    :cond_2f
    iput v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->cachedSize:I

    goto :goto_b
.end method

.method private getDefault(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

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

.method private getObject(II)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v1, 0x1

    if-le v0, v1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method private getObject(III)Ljava/lang/Object;
    .registers 8

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lt p2, v0, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_2f

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1d
    invoke-static {v1, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_2a

    if-eqz v1, :cond_2a

    if-nez v0, :cond_2b

    invoke-direct {p0, p1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :cond_2a
    :goto_2a
    return-object v2

    :cond_2b
    invoke-virtual {v0, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2a

    :cond_2f
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1d
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

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

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
    .registers 7

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-nez v1, :cond_d

    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    :goto_c
    return-void

    :cond_d
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_20

    move-object v0, v1

    check-cast v0, Ljava/util/Vector;

    move-object p0, v0

    move-object v1, p0

    :goto_1c
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_c

    :cond_20
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    move-object v1, v2

    goto :goto_1c
.end method

.method private isZigZagEncodedType(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

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

.method private outputField(ILjava/io/OutputStream;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v2

    shl-int/lit8 v0, p1, 0x3

    or-int v3, v0, v2

    const/4 v0, 0x0

    move v4, v0

    :goto_e
    if-ge v4, v1, :cond_a6

    int-to-long v5, v3

    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    packed-switch v2, :pswitch_data_a8

    :pswitch_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1d
    const/16 v0, 0x13

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v0, 0x5

    if-ne v2, v0, :cond_41

    const/4 v0, 0x4

    :goto_2d
    const/4 v7, 0x0

    move v10, v7

    move-wide v11, v5

    move-wide v6, v11

    move v5, v10

    :goto_32
    if-ge v5, v0, :cond_5d

    const-wide/16 v8, 0xff

    and-long/2addr v8, v6

    long-to-int v8, v8

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write(I)V

    const/16 v8, 0x8

    shr-long/2addr v6, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    :cond_41
    const/16 v0, 0x8

    goto :goto_2d

    :pswitch_44
    const/16 v0, 0x13

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-static {v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v5

    :cond_5a
    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    :cond_5d
    :goto_5d
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_e

    :pswitch_61
    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v5, 0x1b

    if-ne v0, v5, :cond_80

    const/16 v0, 0x10

    :goto_6b
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, [B

    if-eqz v5, :cond_83

    check-cast v0, [B

    check-cast v0, [B

    array-length v5, v0

    int-to-long v5, v5

    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5d

    :cond_80
    const/16 v0, 0x19

    goto :goto_6b

    :cond_83
    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v5

    int-to-long v5, v5

    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    invoke-direct {v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Ljava/io/OutputStream;)V

    goto :goto_5d

    :pswitch_92
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Ljava/io/OutputStream;)V

    shl-int/lit8 v0, p1, 0x3

    or-int/lit8 v0, v0, 0x4

    int-to-long v5, v0

    invoke-static {p2, v5, v6}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)V

    goto :goto_5d

    :cond_a6
    return-void

    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_44
        :pswitch_1d
        :pswitch_61
        :pswitch_92
        :pswitch_17
        :pswitch_1d
    .end packed-switch
.end method

.method private outputToInternal(Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->keys()Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;

    move-result-object v0

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap$KeyIterator;->next()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputField(ILjava/io/OutputStream;)V

    goto :goto_6

    :cond_14
    return-void
.end method

.method static readVarInt(Ljava/io/InputStream;Z)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    move v7, v2

    move v8, v2

    move-wide v2, v0

    move v0, v7

    move v1, v8

    :goto_8
    const/16 v4, 0xa

    if-ge v0, v4, :cond_32

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_22

    if-nez v0, :cond_1a

    if-eqz p1, :cond_1a

    const-wide/16 v0, -0x1

    :goto_19
    return-wide v0

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v1

    or-long/2addr v2, v5

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_2d

    move-wide v0, v2

    goto :goto_19

    :cond_2d
    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_32
    move-wide v0, v2

    goto :goto_19
.end method

.method private setObject(ILjava/lang/Object;)V
    .registers 4

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_8
    if-eqz p2, :cond_d

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)V
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

    if-ge v0, v3, :cond_15

    const-wide/16 v3, 0x7f

    and-long/2addr v3, v1

    long-to-int v3, v3

    const/4 v4, 0x7

    ushr-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_16

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    :cond_15
    return-void

    :cond_16
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
.method public addBool(IZ)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertBool(IIZ)V

    return-void
.end method

.method public addBytes(I[B)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertBytes(II[B)V

    return-void
.end method

.method public addDouble(ID)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertDouble(IID)V

    return-void
.end method

.method public addFloat(IF)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertFloat(IIF)V

    return-void
.end method

.method public addInt(II)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertInt(III)V

    return-void
.end method

.method public addLong(IJ)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public addProtoBuf(ILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertProtoBuf(IILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertString(IILjava/lang/String;)V

    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->clear()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->clear()V

    return-void
.end method

.method public createGroup(I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .registers 4

    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType()Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method

.method public getBool(I)Z
    .registers 3

    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBool(II)Z
    .registers 4

    const/16 v0, 0x18

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .registers 3

    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getBytes(II)[B
    .registers 4

    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    return-object p0
.end method

.method public getCount(I)I
    .registers 3

    if-gez p1, :cond_8

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_1d

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_11

    :cond_1d
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public getDataSize()I
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(II)D
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFloat(II)F
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4

    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInt(II)I
    .registers 5

    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4

    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(II)J
    .registers 5

    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .registers 3

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getProtoBuf(II)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .registers 4

    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    return-object p0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getType(I)I
    .registers 6

    const/4 v3, 0x0

    const/16 v2, 0x10

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v0

    move v1, v0

    :goto_e
    if-ne v1, v2, :cond_36

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1e
    if-ne v0, v2, :cond_33

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    if-lez v1, :cond_33

    invoke-direct {p0, p1, v3, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_32

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_34

    :cond_32
    move v0, v3

    :cond_33
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x2

    goto :goto_33

    :cond_36
    move v0, v1

    goto :goto_1e

    :cond_38
    move v1, v2

    goto :goto_e
.end method

.method public getType()Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

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

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void

    :cond_8
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public insertBytes(II[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertDouble(IID)V
    .registers 7

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public insertFloat(IIF)V
    .registers 5

    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertInt(III)V

    return-void
.end method

.method public insertInt(III)V
    .registers 6

    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    return-void
.end method

.method public insertLong(IIJ)V
    .registers 6

    invoke-static {p3, p4}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertProtoBuf(IILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    return-void
.end method

.method public maxTag()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->maxKey()I

    move-result v0

    return v0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getDataSize()I

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputToInternal(Ljava/io/OutputStream;)V

    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->clear()V

    move v0, p2

    :goto_6
    if-lez v0, :cond_13

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-nez v3, :cond_1b

    :cond_13
    :goto_13
    if-gez v0, :cond_f8

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_1b
    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v3

    sub-int v3, v0, v3

    long-to-int v0, v1

    and-int/lit8 v0, v0, 0x7

    if-ne v0, v10, :cond_28

    move v0, v3

    goto :goto_13

    :cond_28
    const/4 v4, 0x3

    ushr-long/2addr v1, v4

    long-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->put(ILjava/lang/Object;)V

    packed-switch v0, :pswitch_data_fc

    :pswitch_37
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

    :pswitch_56
    invoke-static {p1, v9}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    sub-int v0, v3, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v2

    if-eqz v2, :cond_f9

    invoke-static {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v2

    :goto_6a
    invoke-static {v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v2

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    :goto_71
    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    invoke-direct {p0, v1, v3, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    move v0, v2

    goto :goto_6

    :pswitch_7a
    const-wide/16 v4, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_93

    move v0, v10

    :goto_80
    sub-int v2, v3, v0

    move v3, v9

    :goto_83
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_96

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v6

    goto :goto_83

    :cond_93
    const/16 v0, 0x8

    goto :goto_80

    :cond_96
    invoke-static {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_71

    :pswitch_9b
    invoke-static {p1, v9}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;Z)J

    move-result-wide v4

    long-to-int v2, v4

    int-to-long v4, v2

    invoke-static {v4, v5}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    sub-int v0, v3, v0

    sub-int v3, v0, v2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    const/16 v4, 0x1b

    if-ne v0, v4, :cond_c4

    new-instance v4, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-direct {v4, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v4, p1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-object v0, v4

    move v2, v3

    goto :goto_71

    :cond_c4
    new-array v0, v2, [B

    move v4, v9

    :goto_c7
    if-ge v4, v2, :cond_db

    sub-int v5, v2, v4

    invoke-virtual {p1, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-gtz v5, :cond_d9

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d9
    add-int/2addr v4, v5

    goto :goto_c7

    :cond_db
    move v2, v3

    goto :goto_71

    :pswitch_dd
    new-instance v2, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-nez v0, :cond_ef

    const/4 v0, 0x0

    :goto_e4
    invoke-direct {v2, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v2, p1, v3}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    move-result v0

    move-object v11, v2

    move v2, v0

    move-object v0, v11

    goto :goto_71

    :cond_ef
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    goto :goto_e4

    :cond_f8
    return v0

    :cond_f9
    move-wide v2, v4

    goto/16 :goto_6a

    :pswitch_data_fc
    .packed-switch 0x0
        :pswitch_56
        :pswitch_7a
        :pswitch_9b
        :pswitch_dd
        :pswitch_37
        :pswitch_7a
    .end packed-switch
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public parse([B)Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    return-object p0
.end method

.method public remove(II)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lt p2, v0, :cond_c

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->remove(I)Ljava/lang/Object;

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Vector;

    invoke-virtual {p0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_14
.end method

.method public setBool(IZ)V
    .registers 4

    if-eqz p2, :cond_8

    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void

    :cond_8
    sget-object v0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setBytes(I[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setDouble(ID)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setFloat(IF)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setInt(II)V

    return-void
.end method

.method public setInt(II)V
    .registers 5

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setLong(IJ)V

    return-void
.end method

.method public setLong(IJ)V
    .registers 5

    invoke-static {p2, p3}, Lcom/google/android/apps/uploader/googlemobile/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setProtoBuf(ILcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    return-void
.end method

.method setType(Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->values:Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/util/IntMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

    if-eq p1, v0, :cond_18

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_18
    iput-object p1, p0, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->msgType:Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBufType;

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

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
