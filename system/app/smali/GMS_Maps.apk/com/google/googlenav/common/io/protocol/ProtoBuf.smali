.class public Lcom/google/googlenav/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B = null

.field public static final FALSE:Ljava/lang/Boolean; = null

.field private static final MARKER_HOLDER:I = -0x1

.field private static final MSG_EOF:Ljava/lang/String; = "Unexp.EOF"

.field private static final MSG_MISMATCH:Ljava/lang/String; = "Type mismatch"

.field private static final MSG_UNSUPPORTED:Ljava/lang/String; = "Unsupp.Type"

.field private static final NULL_COUNTER:Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter; = null

.field private static final TEXT_FORMAT_TAB_SPACES_PER_LEVEL:I = 0x2

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

.field private msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

.field private final values:Lcom/google/googlenav/common/util/h;

.field private wireTypes:Lcom/google/googlenav/common/util/h;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 56
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    .line 57
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    .line 58
    new-array v0, v2, [B

    sput-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    .line 420
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf$1;)V

    sput-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V
    .registers 3
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->cachedSize:I

    .line 103
    iput-object p1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 104
    new-instance v0, Lcom/google/googlenav/common/util/h;

    invoke-direct {v0}, Lcom/google/googlenav/common/util/h;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    .line 105
    return-void
.end method

.method private addObject(ILjava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1522
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    .line 1523
    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1281
    return-void
.end method

.method private static checkTag(I)V
    .registers 1
    .parameter

    .prologue
    .line 1373
    return-void
.end method

.method private convert(Ljava/lang/Object;II)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1530
    packed-switch p2, :pswitch_data_ac

    .line 1600
    :pswitch_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupp.Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1535
    :pswitch_b
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    .line 1597
    :cond_f
    :goto_f
    :pswitch_f
    return-object p1

    .line 1538
    :cond_10
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    packed-switch v0, :pswitch_data_da

    .line 1544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1540
    :pswitch_22
    sget-object p1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    .line 1542
    :pswitch_25
    sget-object p1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    .line 1556
    :pswitch_28
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    .line 1557
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-wide/16 v0, 0x1

    :goto_36
    invoke-static {v0, v1}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_f

    :cond_3b
    const-wide/16 v0, 0x0

    goto :goto_36

    .line 1562
    :pswitch_3e
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_49

    .line 1563
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/googlenav/common/io/o;->a(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_f

    .line 1564
    :cond_49
    instance-of v0, p1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_f

    .line 1565
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1567
    :try_start_52
    check-cast p1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 1568
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_5c

    move-result-object p1

    goto :goto_f

    .line 1569
    :catch_5c
    move-exception v0

    .line 1570
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1576
    :pswitch_67
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    .line 1577
    check-cast p1, [B

    check-cast p1, [B

    .line 1578
    const/4 v0, 0x0

    array-length v1, p1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/common/io/o;->a([BIIZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    .line 1583
    :pswitch_77
    instance-of v0, p1, [B

    if-eqz v0, :cond_f

    .line 1586
    if-lez p3, :cond_99

    :try_start_7d
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_99

    .line 1587
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    move-object v0, v1

    .line 1592
    :goto_8f
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object p1

    goto/16 :goto_f

    .line 1589
    :cond_99
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_9f} :catch_a0

    goto :goto_8f

    .line 1593
    :catch_a0
    move-exception v0

    .line 1594
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1530
    nop

    :pswitch_data_ac
    .packed-switch 0x10
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_b
        :pswitch_3e
        :pswitch_77
        :pswitch_77
        :pswitch_67
        :pswitch_28
        :pswitch_3
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_28
        :pswitch_3e
        :pswitch_67
    .end packed-switch

    .line 1538
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private fieldToTextFormat(Ljava/io/Writer;IIILjava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 999
    invoke-virtual {p1, p5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1001
    invoke-virtual {p0, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 1002
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2e

    .line 1003
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1007
    :goto_18
    packed-switch v0, :pswitch_data_60

    .line 1040
    :pswitch_1b
    const-string v1, "UNSUPPORTED TYPE: "

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1042
    :goto_28
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 1043
    return-void

    .line 1005
    :cond_2e
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_18

    .line 1011
    :pswitch_34
    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1012
    invoke-virtual {p0, p3, p4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {v0, p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toTextFormat(Ljava/io/Writer;I)V

    .line 1013
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_28

    .line 1030
    :pswitch_48
    invoke-direct {p0, p3, p4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_28

    .line 1036
    :pswitch_54
    invoke-virtual {p0, p3, p4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(II)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/util/c;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_28

    .line 1007
    :pswitch_data_60
    .packed-switch 0x13
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_54
        :pswitch_34
        :pswitch_34
        :pswitch_48
        :pswitch_48
        :pswitch_1b
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_54
        :pswitch_48
    .end packed-switch
.end method

.method private getCachedDataSize(IIZ)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 706
    shl-int/lit8 v0, p1, 0x3

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    .line 708
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    .line 725
    :pswitch_e
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    .line 729
    instance-of v1, v0, [B

    if-eqz v1, :cond_4a

    .line 730
    check-cast v0, [B

    check-cast v0, [B

    array-length v0, v0

    .line 737
    :goto_1d
    int-to-long v3, v0

    invoke-static {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_24
    return v0

    .line 710
    :pswitch_25
    add-int/lit8 v0, v2, 0x4

    goto :goto_24

    .line 712
    :pswitch_28
    add-int/lit8 v0, v2, 0x8

    goto :goto_24

    .line 714
    :pswitch_2b
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    .line 715
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 716
    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v0

    .line 718
    :cond_39
    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_24

    .line 721
    :pswitch_3f
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {v0, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v2

    goto :goto_24

    .line 731
    :cond_4a
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_57

    .line 732
    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/google/googlenav/common/io/o;->a(Ljava/lang/String;[BI)I

    move-result v0

    goto :goto_1d

    .line 734
    :cond_57
    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    goto :goto_1d

    .line 708
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
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 634
    iget v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->cachedSize:I

    const/high16 v2, -0x8000

    if-eq v0, v2, :cond_c

    if-eqz p1, :cond_c

    .line 635
    iget v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->cachedSize:I

    .line 648
    :goto_b
    return v0

    .line 638
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->b()Lcom/google/googlenav/common/util/i;

    move-result-object v4

    move v0, v1

    .line 639
    :cond_13
    invoke-virtual {v4}, Lcom/google/googlenav/common/util/i;->a()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 640
    invoke-virtual {v4}, Lcom/google/googlenav/common/util/i;->b()I

    move-result v5

    .line 641
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    move v2, v1

    .line 642
    :goto_22
    if-ge v2, v6, :cond_13

    .line 643
    invoke-direct {p0, v5, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCachedDataSize(IIZ)I

    move-result v3

    add-int/2addr v3, v0

    .line 642
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_22

    .line 646
    :cond_2e
    iput v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->cachedSize:I

    .line 648
    iget v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->cachedSize:I

    goto :goto_b
.end method

.method private static getCount(Ljava/lang/Object;)I
    .registers 2
    .parameter

    .prologue
    .line 565
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
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1356
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_14

    .line 1362
    iget-object v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-nez v1, :cond_d

    :goto_c
    :sswitch_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    .line 1356
    :sswitch_data_14
    .sparse-switch
        0x10 -> :sswitch_c
        0x1a -> :sswitch_c
        0x1b -> :sswitch_c
    .end sparse-switch
.end method

.method private static getNumBytesUsed(Ljava/lang/Object;)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 668
    if-nez p0, :cond_4

    .line 695
    :cond_3
    :goto_3
    return v0

    .line 671
    :cond_4
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 672
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_3

    .line 674
    :cond_f
    instance-of v1, p0, Ljava/util/Vector;

    if-eqz v1, :cond_30

    move v1, v0

    move v2, v0

    :goto_15
    move-object v0, p0

    .line 676
    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    move-object v0, p0

    .line 677
    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 678
    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getNumBytesUsed(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v2, v0

    .line 676
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15

    :cond_2e
    move v0, v2

    .line 680
    goto :goto_3

    .line 682
    :cond_30
    instance-of v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_3b

    .line 683
    check-cast p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getNumBytesUsed()I

    move-result v0

    goto :goto_3

    .line 685
    :cond_3b
    instance-of v1, p0, [B

    if-eqz v1, :cond_45

    .line 686
    check-cast p0, [B

    check-cast p0, [B

    array-length v0, p0

    goto :goto_3

    .line 688
    :cond_45
    instance-of v1, p0, Ljava/lang/Long;

    if-eqz v1, :cond_4c

    .line 689
    const/16 v0, 0x8

    goto :goto_3

    .line 691
    :cond_4c
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 692
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private getObject(II)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1382
    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1383
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 1384
    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v1

    .line 1386
    if-nez v1, :cond_14

    .line 1387
    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v0

    .line 1393
    :goto_13
    return-object v0

    .line 1390
    :cond_14
    const/4 v2, 0x1

    if-le v1, v2, :cond_1d

    .line 1391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1393
    :cond_1d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13
.end method

.method private getObject(III)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1402
    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1403
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 1404
    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v1

    .line 1406
    if-lt p2, v1, :cond_15

    .line 1407
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1409
    :cond_15
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1418
    const/4 v0, 0x0

    .line 1419
    instance-of v1, p4, Ljava/util/Vector;

    if-eqz v1, :cond_1d

    .line 1420
    check-cast p4, Ljava/util/Vector;

    .line 1421
    invoke-virtual {p4, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1424
    :goto_b
    invoke-direct {p0, v0, p3, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v1

    .line 1425
    if-eq v1, v0, :cond_18

    if-eqz v0, :cond_18

    .line 1426
    if-nez p4, :cond_19

    .line 1427
    invoke-direct {p0, p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1432
    :cond_18
    :goto_18
    return-object v1

    .line 1429
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
    .parameter

    .prologue
    .line 745
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 746
    const/16 v0, 0xa

    .line 753
    :cond_8
    return v0

    .line 748
    :cond_9
    const/4 v0, 0x1

    .line 749
    :goto_a
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_8

    .line 750
    add-int/lit8 v0, v0, 0x1

    .line 751
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_a
.end method

.method private final getWireType(I)I
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x2f

    .line 1442
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 1444
    packed-switch v0, :pswitch_data_3e

    .line 1479
    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

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

    .line 1461
    :pswitch_34
    const/4 v0, 0x0

    .line 1477
    :goto_35
    :pswitch_35
    return v0

    .line 1467
    :pswitch_36
    const/4 v0, 0x2

    goto :goto_35

    .line 1471
    :pswitch_38
    const/4 v0, 0x1

    goto :goto_35

    .line 1475
    :pswitch_3a
    const/4 v0, 0x5

    goto :goto_35

    .line 1477
    :pswitch_3c
    const/4 v0, 0x3

    goto :goto_35

    .line 1444
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
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1488
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    .line 1489
    return-void
.end method

.method private insertObject(IILjava/lang/Object;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1498
    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1499
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v1

    .line 1500
    const/4 v0, 0x0

    .line 1501
    instance-of v2, v1, Ljava/util/Vector;

    if-eqz v2, :cond_11

    move-object v0, v1

    .line 1502
    check-cast v0, Ljava/util/Vector;

    .line 1504
    :cond_11
    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1f

    .line 1505
    :cond_1b
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1519
    :goto_1e
    return-void

    .line 1507
    :cond_1f
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1508
    if-nez v0, :cond_31

    .line 1509
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 1510
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1511
    iget-object v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v1, p1, v0}, Lcom/google/googlenav/common/util/h;->a(ILjava/lang/Object;)V

    .line 1513
    :cond_31
    if-eqz p4, :cond_37

    .line 1514
    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1e

    .line 1516
    :cond_37
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1e
.end method

.method private isZigZagEncodedType(I)Z
    .registers 4
    .parameter

    .prologue
    .line 928
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 929
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

.method private outputField(ILcom/google/googlenav/common/io/MarkedOutputStream;)I
    .registers 18
    .parameter
    .parameter

    .prologue
    .line 842
    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    .line 843
    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v9

    .line 844
    shl-int/lit8 v1, p1, 0x3

    or-int v10, v1, v9

    .line 847
    const/4 v2, 0x0

    .line 849
    const/4 v1, 0x0

    move v7, v1

    move v1, v2

    :goto_10
    if-ge v7, v8, :cond_f9

    .line 850
    int-to-long v2, v10

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v2

    add-int v4, v1, v2

    .line 851
    const/4 v3, 0x0

    .line 852
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v11

    .line 853
    packed-switch v9, :pswitch_data_fa

    .line 906
    :pswitch_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 856
    :pswitch_29
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 858
    const/4 v1, 0x5

    if-ne v9, v1, :cond_4d

    const/4 v1, 0x4

    .line 859
    :goto_3b
    const/4 v2, 0x0

    :goto_3c
    if-ge v2, v1, :cond_50

    .line 860
    const-wide/16 v12, 0xff

    and-long/2addr v12, v5

    long-to-int v12, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/google/googlenav/common/io/MarkedOutputStream;->write(I)V

    .line 861
    const/16 v12, 0x8

    shr-long/2addr v5, v12

    .line 859
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 858
    :cond_4d
    const/16 v1, 0x8

    goto :goto_3b

    :cond_50
    move v2, v3

    move v1, v4

    .line 908
    :goto_52
    if-nez v2, :cond_5a

    .line 909
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v2

    sub-int/2addr v2, v11

    add-int/2addr v1, v2

    .line 849
    :cond_5a
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_10

    .line 866
    :pswitch_5e
    const/16 v1, 0x13

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 867
    invoke-direct/range {p0 .. p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v5

    if-eqz v5, :cond_76

    .line 868
    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v1

    .line 870
    :cond_76
    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move v2, v3

    move v1, v4

    .line 871
    goto :goto_52

    .line 874
    :pswitch_7e
    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_a5

    const/16 v1, 0x10

    :goto_88
    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    .line 879
    instance-of v2, v1, [B

    if-eqz v2, :cond_a8

    .line 880
    check-cast v1, [B

    check-cast v1, [B

    .line 881
    array-length v2, v1

    int-to-long v5, v2

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 882
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/MarkedOutputStream;->write([B)V

    move v2, v3

    move v1, v4

    .line 883
    goto :goto_52

    .line 874
    :cond_a5
    const/16 v1, 0x19

    goto :goto_88

    .line 884
    :cond_a8
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/MarkedOutputStream;->addMarker(I)V

    .line 886
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/common/io/MarkedOutputStream;->numMarkers()I

    move-result v2

    .line 887
    const/4 v3, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/MarkedOutputStream;->addMarker(I)V

    .line 888
    check-cast v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/googlenav/common/io/MarkedOutputStream;)I

    move-result v1

    .line 890
    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/MarkedOutputStream;->setMarker(II)V

    .line 892
    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v4, v1

    .line 893
    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    .line 895
    goto/16 :goto_52

    .line 899
    :pswitch_d6
    const/16 v1, 0x1a

    move/from16 v0, p1

    invoke-direct {p0, v0, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/googlenav/common/io/MarkedOutputStream;)I

    move-result v1

    add-int/2addr v1, v4

    .line 901
    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v2

    add-int/2addr v2, v1

    .line 902
    const/4 v1, 0x1

    move v14, v1

    move v1, v2

    move v2, v14

    .line 903
    goto/16 :goto_52

    .line 912
    :cond_f9
    return v1

    .line 853
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
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 796
    new-instance v3, Lcom/google/googlenav/common/io/MarkedOutputStream;

    invoke-direct {v3}, Lcom/google/googlenav/common/io/MarkedOutputStream;-><init>()V

    .line 797
    invoke-direct {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputToInternal(Lcom/google/googlenav/common/io/MarkedOutputStream;)I

    move-result v2

    .line 799
    if-eqz p2, :cond_12

    move-object v0, p1

    .line 801
    check-cast v0, Ljava/io/DataOutput;

    invoke-interface {v0, v2}, Ljava/io/DataOutput;->writeInt(I)V

    .line 805
    :cond_12
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/MarkedOutputStream;->numMarkers()I

    move-result v4

    move v0, v1

    :goto_17
    if-ge v0, v4, :cond_30

    .line 806
    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v2

    .line 807
    sub-int v5, v2, v1

    invoke-virtual {v3, p1, v1, v5}, Lcom/google/googlenav/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    .line 808
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v1

    int-to-long v5, v1

    invoke-static {p1, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 805
    add-int/lit8 v0, v0, 0x2

    move v1, v2

    goto :goto_17

    .line 811
    :cond_30
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v0

    if-ge v1, v0, :cond_3e

    .line 812
    invoke-virtual {v3}, Lcom/google/googlenav/common/io/MarkedOutputStream;->availableContent()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {v3, p1, v1, v0}, Lcom/google/googlenav/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    .line 814
    :cond_3e
    return-void
.end method

.method private outputToInternal(Lcom/google/googlenav/common/io/MarkedOutputStream;)I
    .registers 5
    .parameter

    .prologue
    .line 823
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->b()Lcom/google/googlenav/common/util/i;

    move-result-object v1

    .line 824
    const/4 v0, 0x0

    .line 825
    :goto_7
    invoke-virtual {v1}, Lcom/google/googlenav/common/util/i;->a()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 826
    invoke-virtual {v1}, Lcom/google/googlenav/common/util/i;->b()I

    move-result v2

    .line 827
    invoke-direct {p0, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputField(ILcom/google/googlenav/common/io/MarkedOutputStream;)I

    move-result v2

    add-int/2addr v0, v2

    .line 828
    goto :goto_7

    .line 829
    :cond_17
    return v0
.end method

.method private parseInternal(Ljava/io/InputStream;IZLcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 454
    if-eqz p3, :cond_5

    .line 455
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->clear()V

    :cond_5
    move v0, p2

    .line 457
    :goto_6
    if-lez v0, :cond_13

    .line 458
    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v3

    .line 460
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_1b

    .line 541
    :cond_13
    :goto_13
    if-gez v0, :cond_e9

    .line 542
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 463
    :cond_1b
    iget v1, p4, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int v2, v0, v1

    .line 464
    long-to-int v0, v3

    and-int/lit8 v0, v0, 0x7

    .line 465
    const/4 v1, 0x4

    if-ne v0, v1, :cond_27

    move v0, v2

    .line 466
    goto :goto_13

    .line 468
    :cond_27
    const/4 v1, 0x3

    ushr-long/2addr v3, v1

    long-to-int v6, v3

    .line 470
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v1

    .line 471
    const/16 v3, 0x10

    if-ne v1, v3, :cond_46

    .line 472
    iget-object v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/googlenav/common/util/h;

    if-nez v1, :cond_3d

    .line 473
    new-instance v1, Lcom/google/googlenav/common/util/h;

    invoke-direct {v1}, Lcom/google/googlenav/common/util/h;-><init>()V

    iput-object v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/googlenav/common/util/h;

    .line 475
    :cond_3d
    iget-object v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/googlenav/common/util/h;

    invoke-static {v0}, Lcom/google/googlenav/common/util/p;->a(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lcom/google/googlenav/common/util/h;->a(ILjava/lang/Object;)V

    .line 481
    :cond_46
    packed-switch v0, :pswitch_data_ea

    .line 535
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

    .line 483
    :pswitch_68
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    .line 484
    iget v3, p4, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v2, v3

    .line 485
    invoke-direct {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_7a

    .line 486
    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v0

    .line 488
    :cond_7a
    invoke-static {v0, v1}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    move v1, v2

    .line 538
    :cond_7f
    :goto_7f
    invoke-direct {p0, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    move v0, v1

    .line 539
    goto :goto_6

    .line 494
    :pswitch_84
    const-wide/16 v4, 0x0

    .line 495
    const/4 v3, 0x0

    .line 496
    const/4 v1, 0x5

    if-ne v0, v1, :cond_9d

    const/4 v0, 0x4

    .line 497
    :goto_8b
    sub-int v1, v2, v0

    .line 499
    :goto_8d
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_a0

    .line 500
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    .line 501
    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    .line 502
    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v2

    .line 503
    goto :goto_8d

    .line 496
    :cond_9d
    const/16 v0, 0x8

    goto :goto_8b

    .line 505
    :cond_a0
    invoke-static {v4, v5}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7f

    .line 509
    :pswitch_a5
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    long-to-int v3, v0

    .line 510
    iget v0, p4, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int v0, v2, v0

    .line 511
    sub-int v1, v0, v3

    .line 513
    if-nez v3, :cond_c8

    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    .line 514
    :goto_b5
    const/4 v2, 0x0

    .line 515
    :goto_b6
    if-ge v2, v3, :cond_7f

    .line 516
    sub-int v4, v3, v2

    invoke-virtual {p1, v0, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 517
    if-gtz v4, :cond_cb

    .line 518
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    :cond_c8
    new-array v0, v3, [B

    goto :goto_b5

    .line 520
    :cond_cb
    add-int/2addr v2, v4

    goto :goto_b6

    .line 526
    :pswitch_cd
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-nez v0, :cond_e0

    const/4 v0, 0x0

    :goto_d4
    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 530
    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v0, p4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    .line 532
    goto :goto_7f

    .line 526
    :cond_e0
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    goto :goto_d4

    .line 545
    :cond_e9
    return v0

    .line 481
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
    .parameter
    .parameter

    .prologue
    .line 1617
    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->NULL_COUNTER:Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static readVarInt(Ljava/io/InputStream;ZLcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1637
    const-wide/16 v1, 0x0

    .line 1640
    iput v0, p2, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move v3, v0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    .line 1644
    :goto_a
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2d

    .line 1645
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1647
    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 1648
    if-nez v2, :cond_1c

    if-eqz p1, :cond_1c

    .line 1649
    const-wide/16 v0, -0x1

    .line 1663
    :goto_1b
    return-wide v0

    .line 1651
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1654
    :cond_24
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    .line 1656
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_32

    .line 1662
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    goto :goto_1b

    .line 1660
    :cond_32
    add-int/lit8 v3, v3, 0x7

    .line 1644
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private setObject(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1689
    if-gez p1, :cond_8

    .line 1690
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1692
    :cond_8
    if-eqz p3, :cond_d

    .line 1693
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1695
    :cond_d
    if-gez p2, :cond_15

    .line 1696
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1699
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 1700
    instance-of v1, v0, Ljava/util/Vector;

    if-eqz v1, :cond_2f

    .line 1702
    check-cast v0, Ljava/util/Vector;

    .line 1703
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne p2, v1, :cond_2b

    .line 1704
    invoke-virtual {v0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1732
    :goto_2a
    return-object p0

    .line 1706
    :cond_2b
    invoke-virtual {v0, p3, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2a

    .line 1708
    :cond_2f
    if-nez v0, :cond_3d

    .line 1710
    if-lez p2, :cond_39

    .line 1711
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1713
    :cond_39
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_2a

    .line 1716
    :cond_3d
    packed-switch p2, :pswitch_data_5c

    .line 1729
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1718
    :pswitch_46
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_2a

    .line 1723
    :pswitch_4a
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1724
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1725
    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1726
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1, v1}, Lcom/google/googlenav/common/util/h;->a(ILjava/lang/Object;)V

    goto :goto_2a

    .line 1716
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_46
        :pswitch_4a
    .end packed-switch
.end method

.method private setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1671
    if-gez p1, :cond_8

    .line 1672
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1674
    :cond_8
    if-eqz p2, :cond_d

    .line 1675
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1677
    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1, p2}, Lcom/google/googlenav/common/util/h;->a(ILjava/lang/Object;)V

    .line 1678
    return-object p0
.end method

.method private spaces(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 990
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 991
    const/4 v0, 0x0

    :goto_6
    if-ge v0, p1, :cond_10

    .line 992
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 994
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toTextFormat(Ljava/io/Writer;I)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 978
    mul-int/lit8 v0, p2, 0x2

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->spaces(I)Ljava/lang/String;

    move-result-object v5

    move v3, v6

    .line 979
    :goto_8
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->maxTag()I

    move-result v0

    if-gt v3, v0, :cond_21

    move v4, v6

    .line 980
    :goto_f
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-ge v4, v0, :cond_1e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 981
    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->fieldToTextFormat(Ljava/io/Writer;IIILjava/lang/String;)V

    .line 980
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 979
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 984
    :cond_21
    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1742
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 1744
    const-wide/16 v1, 0x7f

    and-long/2addr v1, p1

    long-to-int v1, v1

    .line 1746
    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    .line 1748
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_17

    .line 1749
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1750
    add-int/lit8 v0, v0, 0x1

    .line 1755
    :cond_16
    return v0

    .line 1752
    :cond_17
    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1742
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static zigZagDecode(J)J
    .registers 6
    .parameter

    .prologue
    .line 945
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    .line 946
    return-wide v0
.end method

.method private static zigZagEncode(J)J
    .registers 6
    .parameter

    .prologue
    .line 937
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long/2addr v0, v2

    .line 938
    return-wide v0
.end method


# virtual methods
.method public addBool(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 142
    if-eqz p2, :cond_8

    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 143
    return-void

    .line 142
    :cond_8
    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public addBytes(I[B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 149
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 150
    return-void
.end method

.method public addDouble(ID)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 178
    return-void
.end method

.method public addFloat(IF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 170
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 171
    return-void
.end method

.method public addInt(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 156
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 157
    return-void
.end method

.method public addLong(IJ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-static {p2, p3}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 185
    return-void
.end method

.method public addString(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->f()V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/googlenav/common/util/h;

    .line 129
    return-void
.end method

.method public clone()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 115
    :try_start_0
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType()Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 116
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_11

    .line 117
    return-object v0

    .line 118
    :catch_11
    move-exception v0

    .line 119
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not serialize and parse ProtoBuf."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->clone()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 135
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getType()Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    return-object v1
.end method

.method public getBool(I)Z
    .registers 3
    .parameter

    .prologue
    .line 198
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBool(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 206
    const/16 v0, 0x18

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .registers 3
    .parameter

    .prologue
    .line 214
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getBytes(II)[B
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 221
    const/16 v0, 0x19

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getCount(I)I
    .registers 3
    .parameter

    .prologue
    .line 580
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getDataSize()I
    .registers 2

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCachedDataSize(Z)I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(II)D
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 278
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getFloat(II)F
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter

    .prologue
    .line 228
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInt(II)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 235
    const/16 v0, 0x15

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter

    .prologue
    .line 243
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(II)J
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 250
    const/16 v0, 0x13

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumBytesUsed()I
    .registers 5

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->g()I

    move-result v0

    .line 657
    iget-object v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v1}, Lcom/google/googlenav/common/util/h;->b()Lcom/google/googlenav/common/util/i;

    move-result-object v1

    .line 658
    :goto_c
    invoke-virtual {v1}, Lcom/google/googlenav/common/util/i;->a()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 659
    invoke-virtual {v1}, Lcom/google/googlenav/common/util/i;->b()I

    move-result v2

    .line 660
    iget-object v3, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v2

    .line 661
    invoke-static {v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getNumBytesUsed(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 662
    goto :goto_c

    .line 663
    :cond_22
    return v0
.end method

.method public getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 285
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 293
    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getProtoBufExtension(Lcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    .line 300
    iget v0, p1, Lcom/google/googlenav/common/io/protocol/Extension;->fieldNumber:I

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    .line 301
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v2, p1, Lcom/google/googlenav/common/io/protocol/Extension;->messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 303
    :try_start_d
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_11

    .line 308
    :goto_10
    return-object v0

    .line 304
    :catch_11
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 306
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 316
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 324
    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)I
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x10

    .line 591
    .line 592
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_3d

    .line 593
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v2

    .line 596
    :goto_d
    if-ne v2, v3, :cond_3b

    .line 597
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/googlenav/common/util/h;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 598
    :goto_1b
    if-eqz v0, :cond_3b

    .line 599
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 603
    :goto_21
    if-ne v0, v3, :cond_36

    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-lez v2, :cond_36

    .line 604
    invoke-direct {p0, p1, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    .line 606
    instance-of v2, v0, Ljava/lang/Long;

    if-nez v2, :cond_35

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_39

    :cond_35
    move v0, v1

    .line 610
    :cond_36
    :goto_36
    return v0

    .line 597
    :cond_37
    const/4 v0, 0x0

    goto :goto_1b

    .line 606
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

.method public getType()Lcom/google/googlenav/common/io/protocol/ProtoBufType;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    return-object v0
.end method

.method public has(I)Z
    .registers 3
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

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
    .parameter

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public insertBool(IIZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1224
    if-eqz p3, :cond_8

    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1225
    return-void

    .line 1224
    :cond_8
    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public insertBytes(II[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1231
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1232
    return-void
.end method

.method public insertDouble(IID)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1259
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    .line 1260
    return-void
.end method

.method public insertFloat(IIF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1252
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertInt(III)V

    .line 1253
    return-void
.end method

.method public insertInt(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1238
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertLong(IIJ)V

    .line 1239
    return-void
.end method

.method public insertLong(IIJ)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1245
    invoke-static {p3, p4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1246
    return-void
.end method

.method public insertProtoBuf(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1266
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1267
    return-void
.end method

.method public insertString(IILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1273
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;)V

    .line 1274
    return-void
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->isValidProto(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

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

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->c()I

    move-result v0

    return v0
.end method

.method public outputTo(Ljava/io/OutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    .line 776
    return-void
.end method

.method public outputWithSizeTo(Ljava/io/OutputStream;)V
    .registers 3
    .parameter

    .prologue
    .line 765
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    .line 766
    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 435
    const/4 v0, 0x1

    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf$1;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLcom/google/googlenav/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 405
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 406
    return-object p0
.end method

.method public parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 390
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 391
    return-object p0
.end method

.method public remove(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-virtual {p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 553
    if-lt p2, v0, :cond_c

    .line 554
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 556
    :cond_c
    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    .line 557
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->b(I)Ljava/lang/Object;

    .line 562
    :goto_14
    return-void

    .line 559
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    .line 560
    invoke-virtual {v0, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_14
.end method

.method public setBool(IIZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1066
    if-eqz p3, :cond_9

    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1056
    if-eqz p2, :cond_9

    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    :goto_4
    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_4
.end method

.method public setBytes(II[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1083
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1073
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setDouble(ID)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1124
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setDouble(IID)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IIJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setFloat(IF)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1141
    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setFloat(IIF)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1151
    invoke-static {p3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1090
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setInt(III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1100
    int-to-long v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IIJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setLong(IIJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1117
    invoke-static {p3, p4}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1107
    invoke-static {p2, p3}, Lcom/google/googlenav/common/util/p;->a(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setProtoBuf(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1200
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1158
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setProtoBufExtension(Lcom/google/googlenav/common/io/protocol/Extension;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1165
    iget v0, p1, Lcom/google/googlenav/common/io/protocol/Extension;->fieldNumber:I

    if-gez v0, :cond_a

    .line 1166
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1169
    :cond_a
    iget-object v0, p2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    iget-object v1, p1, Lcom/google/googlenav/common/io/protocol/Extension;->messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-eq v0, v1, :cond_37

    .line 1170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type mismatch type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extension type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/googlenav/common/io/protocol/Extension;->messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1174
    :cond_37
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    iget v1, p1, Lcom/google/googlenav/common/io/protocol/Extension;->fieldNumber:I

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    .line 1175
    instance-of v1, v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_74

    .line 1177
    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v0, v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 1178
    iget-object v1, p1, Lcom/google/googlenav/common/io/protocol/Extension;->messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9b

    .line 1179
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type mismatch old type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/google/googlenav/common/io/protocol/Extension;->messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1182
    :cond_74
    if-eqz v0, :cond_9b

    .line 1184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type mismatch old type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " new type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/google/googlenav/common/io/protocol/Extension;->messageType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1188
    :cond_9b
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    iget v1, p1, Lcom/google/googlenav/common/io/protocol/Extension;->fieldNumber:I

    invoke-virtual {p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/util/h;->a(ILjava/lang/Object;)V

    .line 1189
    return-object p0
.end method

.method public setString(IILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1217
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1207
    invoke-direct {p0, p1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method setType(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 342
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->values:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->e()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-eq p1, v0, :cond_18

    .line 344
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 346
    :cond_18
    iput-object p1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->msgType:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->wireTypes:Lcom/google/googlenav/common/util/h;

    .line 348
    return-object p0
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 955
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 956
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 957
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toTextFormat(Ljava/io/Writer;)V
    .registers 3
    .parameter

    .prologue
    .line 974
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toTextFormat(Ljava/io/Writer;I)V

    .line 975
    return-void
.end method
