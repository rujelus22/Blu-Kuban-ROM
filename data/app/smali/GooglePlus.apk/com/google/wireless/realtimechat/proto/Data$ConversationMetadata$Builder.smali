.class public final Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;",
        "Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private joinCode_:Ljava/lang/Object;

.field private location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private tag_:Lcom/google/protobuf/LazyStringList;

.field private visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1382
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 1406
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1449
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    .line 1505
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->joinCode_:Ljava/lang/Object;

    .line 1228
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->maybeForceBuilderInitialization()V

    .line 1229
    return-void
.end method

.method static synthetic access$1100()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 1

    .prologue
    .line 1222
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 1

    .prologue
    .line 1234
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;-><init>()V

    return-object v0
.end method

.method private ensureTagIsMutable()V
    .registers 3

    .prologue
    .line 1451
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 1452
    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    .line 1453
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1455
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1232
    return-void
.end method


# virtual methods
.method public addAllTag(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;"
        }
    .end annotation

    .prologue
    .line 1487
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->ensureTagIsMutable()V

    .line 1488
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1490
    return-object p0
.end method

.method public addTag(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1477
    if-nez p1, :cond_8

    .line 1478
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1480
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->ensureTagIsMutable()V

    .line 1481
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1483
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 3

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    .line 1260
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1261
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1263
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 6

    .prologue
    .line 1277
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V

    .line 1278
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1279
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1280
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1281
    or-int/lit8 v2, v2, 0x1

    .line 1283
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->access$1302(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 1284
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 1285
    or-int/lit8 v2, v2, 0x2

    .line 1287
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->access$1402(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1288
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_37

    .line 1289
    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v4}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    .line 1291
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1293
    :cond_37
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->access$1502(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    .line 1294
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    .line 1295
    or-int/lit8 v2, v2, 0x4

    .line 1297
    :cond_44
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->joinCode_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->access$1602(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    #setter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->access$1702(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;I)I

    .line 1299
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2

    .prologue
    .line 1238
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1239
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 1240
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1241
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1242
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1243
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    .line 1244
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1245
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->joinCode_:Ljava/lang/Object;

    .line 1246
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1247
    return-object p0
.end method

.method public clearJoinCode()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2

    .prologue
    .line 1529
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1530
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getJoinCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->joinCode_:Ljava/lang/Object;

    .line 1532
    return-object p0
.end method

.method public clearLocation()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2

    .prologue
    .line 1442
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1444
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1445
    return-object p0
.end method

.method public clearTag()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2

    .prologue
    .line 1493
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    .line 1494
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1496
    return-object p0
.end method

.method public clearVisibility()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2

    .prologue
    .line 1399
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1400
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 1402
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 3

    .prologue
    .line 1251
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

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
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2

    .prologue
    .line 1255
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getJoinCode()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->joinCode_:Ljava/lang/Object;

    .line 1511
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 1512
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1513
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->joinCode_:Ljava/lang/Object;

    .line 1516
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

.method public getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getTag(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagCount()I
    .registers 2

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getTagList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVisibility()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object v0
.end method

.method public hasJoinCode()Z
    .registers 3

    .prologue
    .line 1507
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

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

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 1408
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

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

.method public hasVisibility()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1384
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1327
    const/4 v0, 0x1

    return v0
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
    .line 1222
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1222
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

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
    .line 1222
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 9
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1335
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    .line 1336
    .local v2, tag:I
    sparse-switch v2, :sswitch_data_58

    .line 1341
    invoke-virtual {p0, p1, p2, v2}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1343
    :sswitch_d
    return-object p0

    .line 1348
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1349
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->valueOf(I)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    move-result-object v3

    .line 1350
    .local v3, value:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    if-eqz v3, :cond_0

    .line 1351
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1352
    iput-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    goto :goto_0

    .line 1357
    .end local v0           #rawValue:I
    .end local v3           #value:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    :sswitch_21
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v1

    .line 1358
    .local v1, subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->hasLocation()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1359
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    .line 1361
    :cond_32
    invoke-virtual {p1, v1, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1362
    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    goto :goto_0

    .line 1366
    .end local v1           #subBuilder:Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;
    :sswitch_3d
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->ensureTagIsMutable()V

    .line 1367
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 1371
    :sswitch_4a
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1372
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->joinCode_:Ljava/lang/Object;

    goto :goto_0

    .line 1336
    nop

    :sswitch_data_58
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_21
        0x1a -> :sswitch_3d
        0x22 -> :sswitch_4a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 1303
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1323
    :cond_6
    :goto_6
    return-object p0

    .line 1304
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->hasVisibility()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1305
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getVisibility()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->setVisibility(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    .line 1307
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1308
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    .line 1310
    :cond_21
    #getter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->access$1500(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 1311
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1312
    #getter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->access$1500(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    .line 1313
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1320
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->hasJoinCode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1321
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getJoinCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->setJoinCode(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    goto :goto_6

    .line 1315
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->ensureTagIsMutable()V

    .line 1316
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    #getter for: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->access$1500(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public mergeLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 4
    .parameter "value"

    .prologue
    .line 1430
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 1432
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1438
    :goto_1f
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1439
    return-object p0

    .line 1435
    :cond_26
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    goto :goto_1f
.end method

.method public setJoinCode(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1520
    if-nez p1, :cond_8

    .line 1521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1523
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1524
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->joinCode_:Ljava/lang/Object;

    .line 1526
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 3
    .parameter "builderForValue"

    .prologue
    .line 1424
    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Data$Location$Builder;->build()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1426
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1427
    return-object p0
.end method

.method public setLocation(Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1414
    if-nez p1, :cond_8

    .line 1415
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1417
    :cond_8
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1419
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1420
    return-object p0
.end method

.method public setTag(ILjava/lang/String;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1468
    if-nez p2, :cond_8

    .line 1469
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1471
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->ensureTagIsMutable()V

    .line 1472
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1474
    return-object p0
.end method

.method public setVisibility(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1390
    if-nez p1, :cond_8

    .line 1391
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1393
    :cond_8
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->bitField0_:I

    .line 1394
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 1396
    return-object p0
.end method
