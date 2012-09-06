.class public final Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Storage.java"

# interfaces
.implements Lcom/google/feedreader/rpc/Storage$LabelDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$LabelData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/feedreader/rpc/Storage$LabelData;",
        "Lcom/google/feedreader/rpc/Storage$LabelData$Builder;",
        ">;",
        "Lcom/google/feedreader/rpc/Storage$LabelDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$LabelData$Label;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1289
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    .line 1181
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->maybeForceBuilderInitialization()V

    .line 1182
    return-void
.end method

.method static synthetic access$1400(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1175
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 1

    .prologue
    .line 1175
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->create()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    .line 1216
    .local v0, result:Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$LabelData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1217
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1220
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 1

    .prologue
    .line 1187
    new-instance v0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    invoke-direct {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureLabelIsMutable()V
    .registers 3

    .prologue
    .line 1292
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 1293
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    .line 1294
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    .line 1296
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1185
    return-void
.end method


# virtual methods
.method public addAllLabel(Ljava/lang/Iterable;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/feedreader/rpc/Storage$LabelData$Label;",
            ">;)",
            "Lcom/google/feedreader/rpc/Storage$LabelData$Builder;"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/feedreader/rpc/Storage$LabelData$Label;>;"
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1360
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1362
    return-object p0
.end method

.method public addLabel(ILcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 1352
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1353
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->build()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1355
    return-object p0
.end method

.method public addLabel(ILcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 1335
    if-nez p2, :cond_8

    .line 1336
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1338
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1339
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1341
    return-object p0
.end method

.method public addLabel(Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1346
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->build()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    return-object p0
.end method

.method public addLabel(Lcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1325
    if-nez p1, :cond_8

    .line 1326
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1328
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1329
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1331
    return-object p0
.end method

.method public build()Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 3

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    .line 1207
    .local v0, result:Lcom/google/feedreader/rpc/Storage$LabelData;
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$LabelData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1208
    invoke-static {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1210
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->build()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 4

    .prologue
    .line 1224
    new-instance v0, Lcom/google/feedreader/rpc/Storage$LabelData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/feedreader/rpc/Storage$LabelData;-><init>(Lcom/google/feedreader/rpc/Storage$LabelData$Builder;Lcom/google/feedreader/rpc/Storage$1;)V

    .line 1225
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 1227
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    .line 1228
    iget v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    .line 1230
    :cond_1b
    iget-object v1, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    #setter for: Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/feedreader/rpc/Storage$LabelData;->access$1702(Lcom/google/feedreader/rpc/Storage$LabelData;Ljava/util/List;)Ljava/util/List;

    .line 1231
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 2

    .prologue
    .line 1191
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    .line 1193
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    .line 1194
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->clear()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->clear()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLabel()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 2

    .prologue
    .line 1365
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    .line 1366
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    .line 1368
    return-object p0
.end method

.method public clone()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 3

    .prologue
    .line 1198
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->create()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$LabelData;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->clone()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->clone()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->clone()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

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
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->clone()Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData;
    .registers 2

    .prologue
    .line 1202
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->getDefaultInstanceForType()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(I)Lcom/google/feedreader/rpc/Storage$LabelData$Label;
    .registers 3
    .parameter "index"

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    return-object p0
.end method

.method public getLabelCount()I
    .registers 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLabelList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$LabelData$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 1250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->getLabelCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 1251
    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->getLabel(I)Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1253
    const/4 v1, 0x0

    .line 1256
    :goto_12
    return v1

    .line 1250
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1256
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/feedreader/rpc/Storage$LabelData;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1235
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData;->getDefaultInstance()Lcom/google/feedreader/rpc/Storage$LabelData;

    move-result-object v0

    if-ne p1, v0, :cond_8

    move-object v0, p0

    .line 1246
    :goto_7
    return-object v0

    .line 1236
    :cond_8
    #getter for: Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$LabelData;->access$1700(Lcom/google/feedreader/rpc/Storage$LabelData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1237
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1238
    #getter for: Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$LabelData;->access$1700(Lcom/google/feedreader/rpc/Storage$LabelData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    .line 1239
    iget v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->bitField0_:I

    :cond_26
    :goto_26
    move-object v0, p0

    .line 1246
    goto :goto_7

    .line 1241
    :cond_28
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1242
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    #getter for: Lcom/google/feedreader/rpc/Storage$LabelData;->label_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/feedreader/rpc/Storage$LabelData;->access$1700(Lcom/google/feedreader/rpc/Storage$LabelData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_26
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1264
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1265
    sparse-switch v0, :sswitch_data_22

    .line 1270
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 1272
    :goto_e
    return-object v0

    :sswitch_f
    move-object v0, p0

    .line 1268
    goto :goto_e

    .line 1277
    :sswitch_11
    invoke-static {}, Lcom/google/feedreader/rpc/Storage$LabelData$Label;->newBuilder()Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;

    move-result-object v0

    .line 1278
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readGroup(ILcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1279
    invoke-virtual {v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->buildPartial()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->addLabel(Lcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    goto :goto_0

    .line 1265
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_f
        0xb -> :sswitch_11
    .end sparse-switch
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
    .line 1175
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1175
    check-cast p1, Lcom/google/feedreader/rpc/Storage$LabelData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/feedreader/rpc/Storage$LabelData;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

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
    .line 1175
    invoke-virtual {p0, p1, p2}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeLabel(I)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1371
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1372
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1374
    return-object p0
.end method

.method public setLabel(ILcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1319
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1320
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/feedreader/rpc/Storage$LabelData$Label$Builder;->build()Lcom/google/feedreader/rpc/Storage$LabelData$Label;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1322
    return-object p0
.end method

.method public setLabel(ILcom/google/feedreader/rpc/Storage$LabelData$Label;)Lcom/google/feedreader/rpc/Storage$LabelData$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1309
    if-nez p2, :cond_8

    .line 1310
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1312
    :cond_8
    invoke-direct {p0}, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->ensureLabelIsMutable()V

    .line 1313
    iget-object v0, p0, Lcom/google/feedreader/rpc/Storage$LabelData$Builder;->label_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1315
    return-object p0
.end method
