.class public Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
.super Ljava/lang/Object;
.source "ProtoBuf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;,
        Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;
    }
.end annotation


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final FALSE:Ljava/lang/Boolean;

.field private static final NULL_COUNTER:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

.field public static final TRUE:Ljava/lang/Boolean;


# instance fields
.field private cachedSize:I

.field private msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

.field private final values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

.field private wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 52
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    .line 53
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    .line 54
    new-array v0, v2, [B

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    .line 381
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->NULL_COUNTER:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V
    .registers 3
    .parameter "type"

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/high16 v0, -0x8000

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->cachedSize:I

    .line 96
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    .line 97
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    .line 98
    return-void
.end method

.method private addObject(ILjava/lang/Object;)V
    .registers 5
    .parameter "tag"
    .parameter "o"

    .prologue
    .line 1249
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->insertObject(IILjava/lang/Object;Z)V

    .line 1250
    return-void
.end method

.method private assertTypeMatch(ILjava/lang/Object;)V
    .registers 3
    .parameter "tag"
    .parameter "object"

    .prologue
    .line 1009
    return-void
.end method

.method private static checkTag(I)V
    .registers 1
    .parameter "tag"

    .prologue
    .line 1101
    return-void
.end method

.method private static convert(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 8
    .parameter "obj"
    .parameter "tagType"

    .prologue
    .line 1257
    packed-switch p1, :pswitch_data_96

    .line 1318
    :pswitch_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unsupp.Type"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1262
    :pswitch_b
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_10

    .line 1315
    .end local p0
    :cond_f
    :goto_f
    :pswitch_f
    return-object p0

    .line 1265
    .restart local p0
    :cond_10
    check-cast p0, Ljava/lang/Long;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    long-to-int v3, v3

    packed-switch v3, :pswitch_data_c4

    .line 1271
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Type mismatch"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1267
    :pswitch_22
    sget-object p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    .line 1269
    :pswitch_25
    sget-object p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    .line 1281
    .restart local p0
    :pswitch_28
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_f

    .line 1282
    check-cast p0, Ljava/lang/Boolean;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3b

    const-wide/16 v3, 0x1

    :goto_36
    invoke-static {v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_f

    :cond_3b
    const-wide/16 v3, 0x0

    goto :goto_36

    .line 1287
    .restart local p0
    :pswitch_3e
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_49

    .line 1288
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->encodeUtf8(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_f

    .line 1289
    .restart local p0
    :cond_49
    instance-of v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    if-eqz v3, :cond_f

    .line 1290
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1292
    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_52
    check-cast p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .end local p0
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 1293
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_5a} :catch_5c

    move-result-object p0

    goto :goto_f

    .line 1294
    :catch_5c
    move-exception v2

    .line 1295
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1301
    .end local v0           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v2           #e:Ljava/io/IOException;
    .restart local p0
    :pswitch_67
    instance-of v3, p0, [B

    if-eqz v3, :cond_f

    .line 1302
    check-cast p0, [B

    .end local p0
    move-object v1, p0

    check-cast v1, [B

    .line 1303
    .local v1, data:[B
    const/4 v3, 0x0

    array-length v4, v1

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->decodeUtf8([BIIZ)Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    .line 1308
    .end local v1           #data:[B
    .restart local p0
    :pswitch_78
    instance-of v3, p0, [B

    if-eqz v3, :cond_f

    .line 1310
    :try_start_7c
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-virtual {v3, p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse([B)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_89} :catch_8b

    move-result-object p0

    goto :goto_f

    .line 1311
    :catch_8b
    move-exception v2

    .line 1312
    .restart local v2       #e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1257
    :pswitch_data_96
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
        :pswitch_78
        :pswitch_78
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

    .line 1265
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method private static getCount(Ljava/lang/Object;)I
    .registers 2
    .parameter "o"

    .prologue
    .line 533
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .end local p0
    :goto_3
    return v0

    .restart local p0
    :cond_4
    instance-of v0, p0, Ljava/util/Vector;

    if-eqz v0, :cond_f

    check-cast p0, Ljava/util/Vector;

    .end local p0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_3

    .restart local p0
    :cond_f
    const/4 v0, 0x1

    goto :goto_3
.end method

.method private getDefault(I)Ljava/lang/Object;
    .registers 3
    .parameter "tag"

    .prologue
    .line 1084
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    .line 1090
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0

    .line 1088
    :sswitch_e
    const/4 v0, 0x0

    goto :goto_d

    .line 1084
    :sswitch_data_10
    .sparse-switch
        0x10 -> :sswitch_e
        0x1a -> :sswitch_e
        0x1b -> :sswitch_e
    .end sparse-switch
.end method

.method private getObject(II)Ljava/lang/Object;
    .registers 6
    .parameter "tag"
    .parameter "desiredType"

    .prologue
    .line 1110
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1111
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1112
    .local v1, o:Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 1114
    .local v0, count:I
    if-nez v0, :cond_14

    .line 1115
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

    move-result-object v2

    .line 1121
    :goto_13
    return-object v2

    .line 1118
    :cond_14
    const/4 v2, 0x1

    if-le v0, v2, :cond_1d

    .line 1119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1121
    :cond_1d
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, p2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_13
.end method

.method private getObject(III)Ljava/lang/Object;
    .registers 7
    .parameter "tag"
    .parameter "index"
    .parameter "desiredType"

    .prologue
    .line 1130
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1131
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1132
    .local v1, o:Ljava/lang/Object;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    .line 1134
    .local v0, count:I
    if-lt p2, v0, :cond_15

    .line 1135
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1137
    :cond_15
    invoke-direct {p0, p1, p2, p3, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private getObjectWithoutArgChecking(IIILjava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "tag"
    .parameter "index"
    .parameter "desiredType"
    .parameter "o"

    .prologue
    .line 1145
    const/4 v1, 0x0

    .line 1146
    .local v1, v:Ljava/util/Vector;
    instance-of v2, p4, Ljava/util/Vector;

    if-eqz v2, :cond_c

    move-object v1, p4

    .line 1147
    check-cast v1, Ljava/util/Vector;

    .line 1148
    invoke-virtual {v1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p4

    .line 1151
    :cond_c
    invoke-static {p4, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->convert(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 1153
    .local v0, o2:Ljava/lang/Object;
    if-eq v0, p4, :cond_19

    if-eqz p4, :cond_19

    .line 1154
    if-nez v1, :cond_1a

    .line 1155
    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1160
    :cond_19
    :goto_19
    return-object v0

    .line 1157
    :cond_1a
    invoke-virtual {v1, v0, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_19
.end method

.method private static getVarIntSize(J)I
    .registers 5
    .parameter "i"

    .prologue
    .line 666
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-gez v1, :cond_9

    .line 667
    const/16 v0, 0xa

    .line 674
    :cond_8
    return v0

    .line 669
    :cond_9
    const/4 v0, 0x1

    .line 670
    .local v0, size:I
    :goto_a
    const-wide/16 v1, 0x80

    cmp-long v1, p0, v1

    if-ltz v1, :cond_8

    .line 671
    add-int/lit8 v0, v0, 0x1

    .line 672
    const/4 v1, 0x7

    shr-long/2addr p0, v1

    goto :goto_a
.end method

.method private final getWireType(I)I
    .registers 7
    .parameter

    .prologue
    const/16 v4, 0x2f

    .line 1170
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 1172
    packed-switch v0, :pswitch_data_3e

    .line 1207
    :pswitch_9
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupp.Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

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

    .line 1189
    :pswitch_34
    const/4 v0, 0x0

    .line 1205
    :goto_35
    :pswitch_35
    return v0

    .line 1195
    :pswitch_36
    const/4 v0, 0x2

    goto :goto_35

    .line 1199
    :pswitch_38
    const/4 v0, 0x1

    goto :goto_35

    .line 1203
    :pswitch_3a
    const/4 v0, 0x5

    goto :goto_35

    .line 1205
    :pswitch_3c
    const/4 v0, 0x3

    goto :goto_35

    .line 1172
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
    .registers 8
    .parameter "tag"
    .parameter "index"
    .parameter "o"
    .parameter "appendToEnd"

    .prologue
    .line 1225
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->checkTag(I)V

    .line 1226
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1227
    .local v0, current:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 1228
    .local v1, v:Ljava/util/Vector;
    instance-of v2, v0, Ljava/util/Vector;

    if-eqz v2, :cond_11

    move-object v1, v0

    .line 1229
    check-cast v1, Ljava/util/Vector;

    .line 1231
    :cond_11
    if-eqz v0, :cond_1b

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_1f

    .line 1232
    :cond_1b
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 1246
    :goto_1e
    return-void

    .line 1234
    :cond_1f
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1235
    if-nez v1, :cond_31

    .line 1236
    new-instance v1, Ljava/util/Vector;

    .end local v1           #v:Ljava/util/Vector;
    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 1237
    .restart local v1       #v:Ljava/util/Vector;
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1238
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v2, p1, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 1240
    :cond_31
    if-eqz p4, :cond_37

    .line 1241
    invoke-virtual {v1, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1e

    .line 1243
    :cond_37
    invoke-virtual {v1, p3, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_1e
.end method

.method private isZigZagEncodedType(I)Z
    .registers 4
    .parameter "tag"

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 850
    .local v0, declaredType:I
    const/16 v1, 0x21

    if-eq v0, v1, :cond_c

    const/16 v1, 0x22

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private outputField(ILandroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I
    .registers 23
    .parameter "tag"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v11

    .line 764
    .local v11, size:I
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getWireType(I)I

    move-result v16

    .line 765
    .local v16, wireType:I
    shl-int/lit8 v18, p1, 0x3

    or-int v17, v18, v16

    .line 768
    .local v17, wireTypeTag:I
    const/4 v13, 0x0

    .line 770
    .local v13, totalSize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_e
    if-ge v8, v11, :cond_12f

    .line 771
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v18

    add-int v13, v13, v18

    .line 772
    const/4 v3, 0x0

    .line 773
    .local v3, added:Z
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    .line 774
    .local v6, contentStart:I
    packed-switch v16, :pswitch_data_130

    .line 827
    :pswitch_27
    new-instance v18, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 777
    :pswitch_2d
    const/16 v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 779
    .local v14, v:J
    const/16 v18, 0x5

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_62

    const/4 v5, 0x4

    .line 780
    .local v5, cnt:I
    :goto_48
    const/4 v4, 0x0

    .local v4, b:I
    :goto_49
    if-ge v4, v5, :cond_86

    .line 781
    const-wide/16 v18, 0xff

    and-long v18, v18, v14

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->write(I)V

    .line 782
    const/16 v18, 0x8

    shr-long v14, v14, v18

    .line 780
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 779
    .end local v4           #b:I
    .end local v5           #cnt:I
    :cond_62
    const/16 v5, 0x8

    goto :goto_48

    .line 787
    .end local v14           #v:J
    :pswitch_65
    const/16 v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 788
    .restart local v14       #v:J
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v18

    if-eqz v18, :cond_81

    .line 789
    invoke-static {v14, v15}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->zigZagEncode(J)J

    move-result-wide v14

    .line 791
    :cond_81
    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 829
    .end local v14           #v:J
    :cond_86
    :goto_86
    if-nez v3, :cond_90

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v18

    sub-int v18, v18, v6

    add-int v13, v13, v18

    .line 770
    :cond_90
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_e

    .line 795
    :pswitch_94
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v18

    const/16 v19, 0x1b

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_cc

    const/16 v18, 0x10

    :goto_a2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v9

    .line 800
    .local v9, o:Ljava/lang/Object;
    instance-of v0, v9, [B

    move/from16 v18, v0

    if-eqz v18, :cond_cf

    .line 801
    check-cast v9, [B

    .end local v9           #o:Ljava/lang/Object;
    move-object v7, v9

    check-cast v7, [B

    .line 802
    .local v7, data:[B
    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 803
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->write([B)V

    goto :goto_86

    .line 795
    .end local v7           #data:[B
    :cond_cc
    const/16 v18, 0x19

    goto :goto_a2

    .line 805
    .restart local v9       #o:Ljava/lang/Object;
    :cond_cf
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->addMarker(I)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->numMarkers()I

    move-result v12

    .line 808
    .local v12, tmpPos:I
    const/16 v18, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->addMarker(I)V

    .line 809
    check-cast v9, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    .end local v9           #o:Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v10

    .line 811
    .local v10, protoSize:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v10}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->setMarker(II)V

    .line 813
    int-to-long v0, v10

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getVarIntSize(J)I

    move-result v18

    add-int v18, v18, v10

    add-int v13, v13, v18

    .line 814
    const/4 v3, 0x1

    .line 816
    goto :goto_86

    .line 820
    .end local v10           #protoSize:I
    .end local v12           #tmpPos:I
    :pswitch_101
    const/16 v18, 0x1a

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v8, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v18

    add-int v13, v13, v18

    .line 822
    shl-int/lit8 v18, p1, 0x3

    or-int/lit8 v18, v18, 0x4

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p2

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    move-result v18

    add-int v13, v13, v18

    .line 823
    const/4 v3, 0x1

    .line 824
    goto/16 :goto_86

    .line 833
    .end local v3           #added:Z
    .end local v6           #contentStart:I
    :cond_12f
    return v13

    .line 774
    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_65
        :pswitch_2d
        :pswitch_94
        :pswitch_101
        :pswitch_27
        :pswitch_2d
    .end packed-switch
.end method

.method private outputTo(Ljava/io/OutputStream;Z)V
    .registers 11
    .parameter "os"
    .parameter "addSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 717
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;

    invoke-direct {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;-><init>()V

    .line 718
    .local v2, mos:Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;
    invoke-direct {p0, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v5

    .line 720
    .local v5, size:I
    if-eqz p2, :cond_11

    move-object v6, p1

    .line 722
    check-cast v6, Ljava/io/DataOutput;

    invoke-interface {v6, v5}, Ljava/io/DataOutput;->writeInt(I)V

    .line 725
    :cond_11
    const/4 v4, 0x0

    .line 726
    .local v4, previous:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->numMarkers()I

    move-result v3

    .local v3, n:I
    :goto_17
    if-ge v1, v3, :cond_30

    .line 727
    invoke-virtual {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v0

    .line 728
    .local v0, current:I
    sub-int v6, v0, v4

    invoke-virtual {v2, p1, v4, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    .line 729
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v2, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->getMarker(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {p1, v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->writeVarInt(Ljava/io/OutputStream;J)I

    .line 730
    move v4, v0

    .line 726
    add-int/lit8 v1, v1, 0x2

    goto :goto_17

    .line 732
    .end local v0           #current:I
    :cond_30
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    if-ge v4, v6, :cond_3e

    .line 733
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->availableContent()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, p1, v4, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;->writeContentsTo(Ljava/io/OutputStream;II)V

    .line 735
    :cond_3e
    return-void
.end method

.method private outputToInternal(Landroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I
    .registers 6
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->keys()Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;

    move-result-object v0

    .line 745
    .local v0, itr:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;
    const/4 v2, 0x0

    .line 746
    .local v2, totalSize:I
    :goto_7
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 747
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap$KeyIterator;->next()I

    move-result v1

    .line 748
    .local v1, tag:I
    invoke-direct {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputField(ILandroid_maps_conflict_avoidance/com/google/common/io/MarkedOutputStream;)I

    move-result v3

    add-int/2addr v2, v3

    .line 749
    goto :goto_7

    .line 750
    .end local v1           #tag:I
    :cond_17
    return v2
.end method

.method private parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    if-eqz p3, :cond_5

    .line 416
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->clear()V

    :cond_5
    move v0, p2

    .line 418
    :goto_6
    if-lez v0, :cond_13

    .line 419
    const/4 v1, 0x1

    invoke-static {p1, v1, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v3

    .line 421
    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_1b

    .line 509
    :cond_13
    :goto_13
    if-gez v0, :cond_104

    .line 510
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 424
    :cond_1b
    iget v1, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int v2, v0, v1

    .line 425
    long-to-int v0, v3

    and-int/lit8 v1, v0, 0x7

    .line 426
    const/4 v0, 0x4

    if-ne v1, v0, :cond_27

    move v0, v2

    .line 427
    goto :goto_13

    .line 429
    :cond_27
    const/4 v0, 0x3

    ushr-long/2addr v3, v0

    long-to-int v6, v3

    .line 431
    invoke-virtual {p0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getType(I)I

    move-result v0

    .line 432
    const/16 v3, 0x10

    if-ne v0, v3, :cond_47

    .line 433
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-nez v0, :cond_3d

    .line 434
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    .line 436
    :cond_3d
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    move v0, v1

    .line 442
    :cond_47
    packed-switch v1, :pswitch_data_106

    .line 503
    :pswitch_4a
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown wire type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", reading garbage data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :pswitch_69
    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v0

    .line 445
    iget v3, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int/2addr v2, v3

    .line 446
    invoke-direct {p0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->isZigZagEncodedType(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 447
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->zigZagDecode(J)J

    move-result-wide v0

    .line 449
    :cond_7b
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    move v1, v2

    .line 506
    :goto_80
    invoke-direct {p0, v6, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    move v0, v1

    .line 507
    goto :goto_6

    .line 455
    :pswitch_85
    const-wide/16 v4, 0x0

    .line 456
    const/4 v3, 0x0

    .line 457
    const/4 v0, 0x5

    if-ne v1, v0, :cond_9e

    const/4 v0, 0x4

    .line 458
    :goto_8c
    sub-int v1, v2, v0

    .line 460
    :goto_8e
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_a1

    .line 461
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-long v7, v0

    .line 462
    shl-long/2addr v7, v3

    or-long/2addr v4, v7

    .line 463
    add-int/lit8 v0, v3, 0x8

    move v3, v0

    move v0, v2

    .line 464
    goto :goto_8e

    .line 457
    :cond_9e
    const/16 v0, 0x8

    goto :goto_8c

    .line 466
    :cond_a1
    invoke-static {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_80

    .line 470
    :pswitch_a6
    const/4 v1, 0x0

    invoke-static {p1, v1, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J

    move-result-wide v3

    long-to-int v3, v3

    .line 471
    iget v1, p4, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    sub-int v1, v2, v1

    .line 472
    sub-int v2, v1, v3

    .line 474
    const/16 v1, 0x1b

    if-ne v0, v1, :cond_ca

    .line 475
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 477
    const/4 v0, 0x0

    invoke-direct {v1, p1, v3, v0, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-object v0, v1

    move v1, v2

    .line 479
    goto :goto_80

    .line 480
    :cond_ca
    if-nez v3, :cond_e1

    sget-object v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->EMPTY_BYTE_ARRAY:[B

    .line 481
    :goto_ce
    const/4 v1, 0x0

    .line 482
    :goto_cf
    if-ge v1, v3, :cond_e6

    .line 483
    sub-int v4, v3, v1

    invoke-virtual {p1, v0, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 484
    if-gtz v4, :cond_e4

    .line 485
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexp.EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_e1
    new-array v0, v3, [B

    goto :goto_ce

    .line 487
    :cond_e4
    add-int/2addr v1, v4

    goto :goto_cf

    :cond_e6
    move v1, v2

    .line 491
    goto :goto_80

    .line 494
    :pswitch_e8
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    if-nez v0, :cond_fb

    const/4 v0, 0x0

    :goto_ef
    invoke-direct {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    .line 498
    const/4 v0, 0x0

    invoke-direct {v1, p1, v2, v0, p4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    move-object v9, v1

    move v1, v0

    move-object v0, v9

    .line 500
    goto :goto_80

    .line 494
    :cond_fb
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v6}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    goto :goto_ef

    .line 513
    :cond_104
    return v0

    .line 442
    nop

    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_69
        :pswitch_85
        :pswitch_a6
        :pswitch_e8
        :pswitch_4a
        :pswitch_85
    .end packed-switch
.end method

.method private static readVarInt(Ljava/io/InputStream;ZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)J
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1355
    const-wide/16 v1, 0x0

    .line 1358
    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    move v3, v0

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    .line 1362
    :goto_a
    const/16 v4, 0xa

    if-ge v2, v4, :cond_2d

    .line 1363
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 1365
    const/4 v5, -0x1

    if-ne v4, v5, :cond_24

    .line 1366
    if-nez v2, :cond_1c

    if-eqz p1, :cond_1c

    .line 1367
    const-wide/16 v0, -0x1

    .line 1381
    :goto_1b
    return-wide v0

    .line 1369
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "EOF"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1372
    :cond_24
    and-int/lit8 v5, v4, 0x7f

    int-to-long v5, v5

    shl-long/2addr v5, v3

    or-long/2addr v0, v5

    .line 1374
    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_32

    .line 1380
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    iput v2, p2, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;->count:I

    goto :goto_1b

    .line 1378
    :cond_32
    add-int/lit8 v3, v3, 0x7

    .line 1362
    add-int/lit8 v2, v2, 0x1

    goto :goto_a
.end method

.method private setObject(ILjava/lang/Object;)V
    .registers 4
    .parameter "tag"
    .parameter "o"

    .prologue
    .line 1389
    if-gez p1, :cond_8

    .line 1390
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1392
    :cond_8
    if-eqz p2, :cond_d

    .line 1393
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->assertTypeMatch(ILjava/lang/Object;)V

    .line 1395
    :cond_d
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 1396
    return-void
.end method

.method static writeVarInt(Ljava/io/OutputStream;J)I
    .registers 7
    .parameter "os"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1405
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0xa

    if-ge v0, v2, :cond_16

    .line 1407
    const-wide/16 v2, 0x7f

    and-long/2addr v2, p1

    long-to-int v1, v2

    .line 1409
    .local v1, toWrite:I
    const/4 v2, 0x7

    ushr-long/2addr p1, v2

    .line 1411
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_17

    .line 1412
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 1413
    add-int/lit8 v0, v0, 0x1

    .line 1418
    .end local v0           #i:I
    .end local v1           #toWrite:I
    :cond_16
    return v0

    .line 1415
    .restart local v0       #i:I
    .restart local v1       #toWrite:I
    :cond_17
    or-int/lit16 v2, v1, 0x80

    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write(I)V

    .line 1405
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static zigZagDecode(J)J
    .registers 6
    .parameter "v"

    .prologue
    .line 866
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 867
    return-wide p0
.end method

.method private static zigZagEncode(J)J
    .registers 6
    .parameter "v"

    .prologue
    .line 858
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    ushr-long v2, p0, v2

    neg-long v2, v2

    xor-long p0, v0, v2

    .line 859
    return-wide p0
.end method


# virtual methods
.method public addProtoBuf(ILandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->addObject(ILjava/lang/Object;)V

    .line 164
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->clear()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    .line 106
    return-void
.end method

.method public getBool(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 177
    const/16 v0, 0x18

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getBytes(I)[B
    .registers 3
    .parameter "tag"

    .prologue
    .line 193
    const/16 v0, 0x19

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method

.method public getCount(I)I
    .registers 3
    .parameter "tag"

    .prologue
    .line 548
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->values:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 4
    .parameter "tag"

    .prologue
    .line 207
    const/16 v0, 0x15

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "tag"

    .prologue
    .line 222
    const/16 v0, 0x13

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProtoBuf(I)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "tag"

    .prologue
    .line 272
    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 280
    const/16 v0, 0x1a

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "tag"

    .prologue
    .line 288
    const/16 v0, 0x1c

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getString(II)Ljava/lang/String;
    .registers 4
    .parameter "tag"
    .parameter "index"

    .prologue
    .line 296
    const/16 v0, 0x1c

    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType(I)I
    .registers 8
    .parameter "tag"

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x10

    .line 559
    const/16 v1, 0x10

    .line 560
    .local v1, tagType:I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    if-eqz v3, :cond_f

    .line 561
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->msgType:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v1

    .line 564
    :cond_f
    if-ne v1, v5, :cond_24

    .line 565
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->wireTypes:Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;

    invoke-virtual {v3, p1}, Landroid_maps_conflict_avoidance/com/google/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 566
    .local v2, tagTypeObj:Ljava/lang/Integer;
    :goto_1e
    if-eqz v2, :cond_24

    .line 567
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 571
    .end local v2           #tagTypeObj:Ljava/lang/Integer;
    :cond_24
    if-ne v1, v5, :cond_39

    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-lez v3, :cond_39

    .line 572
    invoke-direct {p0, p1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getObject(III)Ljava/lang/Object;

    move-result-object v0

    .line 574
    .local v0, o:Ljava/lang/Object;
    instance-of v3, v0, Ljava/lang/Long;

    if-nez v3, :cond_38

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_3c

    :cond_38
    move v1, v4

    .line 578
    .end local v0           #o:Ljava/lang/Object;
    :cond_39
    :goto_39
    return v1

    .line 565
    :cond_3a
    const/4 v2, 0x0

    goto :goto_1e

    .line 574
    .restart local v0       #o:Ljava/lang/Object;
    :cond_3c
    const/4 v1, 0x2

    goto :goto_39
.end method

.method public has(I)Z
    .registers 3
    .parameter "tag"

    .prologue
    .line 338
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-gtz v0, :cond_c

    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getDefault(I)Ljava/lang/Object;

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

.method public outputTo(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    .line 697
    return-void
.end method

.method public outputWithSizeTo(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;Z)V

    .line 687
    return-void
.end method

.method public parse(Ljava/io/InputStream;I)I
    .registers 6
    .parameter "is"
    .parameter "available"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v0, 0x1

    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$1;)V

    invoke-direct {p0, p1, p2, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parseInternal(Ljava/io/InputStream;IZLandroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf$SimpleCounter;)I

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 367
    return-object p0
.end method

.method public parse([B)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length v1, p1

    invoke-virtual {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 352
    return-object p0
.end method

.method public setInt(II)V
    .registers 5
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 906
    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setLong(IJ)V

    .line 907
    return-void
.end method

.method public setLong(IJ)V
    .registers 5
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 913
    invoke-static {p2, p3}, Landroid_maps_conflict_avoidance/com/google/common/util/Primitives;->toLong(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 914
    return-void
.end method

.method public setString(ILjava/lang/String;)V
    .registers 3
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 943
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->setObject(ILjava/lang/Object;)V

    .line 944
    return-void
.end method
