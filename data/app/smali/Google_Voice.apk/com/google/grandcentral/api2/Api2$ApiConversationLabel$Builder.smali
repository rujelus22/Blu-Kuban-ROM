.class public final Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Api2.java"

# interfaces
.implements Lcom/google/grandcentral/api2/Api2$ApiConversationLabelOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;",
        "Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;",
        ">;",
        "Lcom/google/grandcentral/api2/Api2$ApiConversationLabelOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private lastModifiedTimestamp_:J

.field private name_:Ljava/lang/Object;

.field private totalCount_:I

.field private unreadCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1179
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1308
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1403
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1180
    invoke-direct {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->maybeForceBuilderInitialization()V

    .line 1181
    return-void
.end method

.method static synthetic access$1000()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 1

    .prologue
    .line 1174
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 1

    .prologue
    .line 1186
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1184
    return-void
.end method


# virtual methods
.method public build()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 3

    .prologue
    .line 1213
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    .line 1214
    .local v0, result:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1215
    invoke-static {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1217
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->build()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 6

    .prologue
    .line 1221
    new-instance v1, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/grandcentral/api2/Api2$1;)V

    .line 1222
    .local v1, result:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1223
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1224
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1225
    or-int/lit8 v2, v2, 0x1

    .line 1227
    :cond_10
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->access$1202(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1229
    or-int/lit8 v2, v2, 0x2

    .line 1231
    :cond_1c
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->totalCount_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->totalCount_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->access$1302(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;I)I

    .line 1232
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 1233
    or-int/lit8 v2, v2, 0x4

    .line 1235
    :cond_28
    iget v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->unreadCount_:I

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->unreadCount_:I
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->access$1402(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;I)I

    .line 1236
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_35

    .line 1237
    or-int/lit8 v2, v2, 0x8

    .line 1239
    :cond_35
    iget-object v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->access$1502(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1241
    or-int/lit8 v2, v2, 0x10

    .line 1243
    :cond_42
    iget-wide v3, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->lastModifiedTimestamp_:J

    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->lastModifiedTimestamp_:J
    invoke-static {v1, v3, v4}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->access$1602(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;J)J

    .line 1244
    #setter for: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->access$1702(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;I)I

    .line 1245
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1190
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1191
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1192
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1193
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->totalCount_:I

    .line 1194
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1195
    iput v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->unreadCount_:I

    .line 1196
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1198
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->lastModifiedTimestamp_:J

    .line 1200
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1201
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->clear()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLabel()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 2

    .prologue
    .line 1344
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1345
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1347
    return-object p0
.end method

.method public clearLastModifiedTimestamp()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3

    .prologue
    .line 1470
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->lastModifiedTimestamp_:J

    .line 1473
    return-object p0
.end method

.method public clearName()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 2

    .prologue
    .line 1439
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1440
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1442
    return-object p0
.end method

.method public clearTotalCount()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 2

    .prologue
    .line 1375
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1376
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->totalCount_:I

    .line 1378
    return-object p0
.end method

.method public clearUnreadCount()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 2

    .prologue
    .line 1396
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->unreadCount_:I

    .line 1399
    return-object p0
.end method

.method public clone()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3

    .prologue
    .line 1205
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->create()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->buildPartial()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->clone()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    .registers 2

    .prologue
    .line 1209
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->getDefaultInstanceForType()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1314
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1315
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1319
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getLabelBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1324
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1325
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1326
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1328
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1331
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 1461
    iget-wide v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->lastModifiedTimestamp_:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1409
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1410
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1411
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1414
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1420
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1421
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1423
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1426
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getTotalCount()I
    .registers 2

    .prologue
    .line 1366
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->totalCount_:I

    return v0
.end method

.method public getUnreadCount()I
    .registers 2

    .prologue
    .line 1387
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->unreadCount_:I

    return v0
.end method

.method public hasLabel()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1310
    iget v1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasLastModifiedTimestamp()Z
    .registers 3

    .prologue
    .line 1458
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasName()Z
    .registers 3

    .prologue
    .line 1405
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasTotalCount()Z
    .registers 3

    .prologue
    .line 1363
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasUnreadCount()Z
    .registers 3

    .prologue
    .line 1384
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1273
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->hasLabel()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1285
    :cond_7
    :goto_7
    return v0

    .line 1277
    :cond_8
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->hasTotalCount()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1281
    invoke-virtual {p0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->hasUnreadCount()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1285
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1249
    invoke-static {}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getDefaultInstance()Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1269
    :cond_6
    :goto_6
    return-object p0

    .line 1250
    :cond_7
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1251
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1252
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->label_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->access$1200(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1255
    :cond_19
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->hasTotalCount()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1256
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getTotalCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setTotalCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 1258
    :cond_26
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->hasUnreadCount()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1259
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getUnreadCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setUnreadCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 1261
    :cond_33
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->hasName()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1262
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1263
    #getter for: Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->name_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->access$1500(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1266
    :cond_45
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->hasLastModifiedTimestamp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1267
    invoke-virtual {p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->getLastModifiedTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->setLastModifiedTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1292
    const/4 v2, 0x0

    .line 1294
    .local v2, parsedMessage:Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;
    :try_start_1
    sget-object v3, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 1299
    if-eqz v2, :cond_10

    .line 1300
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    .line 1303
    :cond_10
    return-object p0

    .line 1295
    :catch_11
    move-exception v1

    .line 1296
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    move-object v2, v0

    .line 1297
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 1299
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 1300
    invoke-virtual {p0, v2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    :cond_21
    throw v3
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1174
    check-cast p1, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->mergeFrom(Lcom/google/grandcentral/api2/Api2$ApiConversationLabel;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-virtual {p0, p1, p2}, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1335
    if-nez p1, :cond_8

    .line 1336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1338
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1339
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1341
    return-object p0
.end method

.method public setLabelBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1351
    if-nez p1, :cond_8

    .line 1352
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1354
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1355
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->label_:Ljava/lang/Object;

    .line 1357
    return-object p0
.end method

.method public setLastModifiedTimestamp(J)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1464
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1465
    iput-wide p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->lastModifiedTimestamp_:J

    .line 1467
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1430
    if-nez p1, :cond_8

    .line 1431
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1433
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1434
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1436
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1446
    if-nez p1, :cond_8

    .line 1447
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1449
    :cond_8
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1450
    iput-object p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->name_:Ljava/lang/Object;

    .line 1452
    return-object p0
.end method

.method public setTotalCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1369
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1370
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->totalCount_:I

    .line 1372
    return-object p0
.end method

.method public setUnreadCount(I)Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1390
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->bitField0_:I

    .line 1391
    iput p1, p0, Lcom/google/grandcentral/api2/Api2$ApiConversationLabel$Builder;->unreadCount_:I

    .line 1393
    return-object p0
.end method
