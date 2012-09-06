.class public final Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "EventsCommonData.java"

# interfaces
.implements Lcom/google/apps/people/events/proto/EventsCommonData$EventCategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;",
        ">;",
        "Lcom/google/apps/people/events/proto/EventsCommonData$EventCategoryOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1445
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1346
    invoke-direct {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->maybeForceBuilderInitialization()V

    .line 1347
    return-void
.end method

.method static synthetic access$1800()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 1

    .prologue
    .line 1340
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 1

    .prologue
    .line 1352
    new-instance v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    invoke-direct {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1350
    return-void
.end method


# virtual methods
.method public build()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .registers 3

    .prologue
    .line 1371
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    .line 1372
    .local v0, result:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    invoke-virtual {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1373
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1375
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->build()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .registers 6

    .prologue
    .line 1389
    new-instance v1, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;-><init>(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;Lcom/google/apps/people/events/proto/EventsCommonData$1;)V

    .line 1390
    .local v1, result:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->bitField0_:I

    .line 1391
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1392
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 1393
    or-int/lit8 v2, v2, 0x1

    .line 1395
    :cond_10
    iget-object v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
    invoke-static {v1, v3}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->access$2002(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1396
    #setter for: Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->access$2102(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;I)I

    .line 1397
    return-object v1
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 2

    .prologue
    .line 1356
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1357
    sget-object v0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->DEFAULT:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    iput-object v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1358
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->bitField0_:I

    .line 1359
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->clear()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 3

    .prologue
    .line 1363
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->create()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->buildPartial()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

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
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->clone()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;
    .registers 2

    .prologue
    .line 1367
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->getDefaultInstanceForType()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1409
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 1401
    invoke-static {}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getDefaultInstance()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1405
    :cond_6
    :goto_6
    return-object p0

    .line 1402
    :cond_7
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->hasCategory()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1403
    invoke-virtual {p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;->getCategory()Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->setCategory(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1417
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1418
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 1423
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1425
    :sswitch_d
    return-object p0

    .line 1430
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1431
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;->valueOf(I)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    move-result-object v2

    .line 1432
    .local v2, value:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;
    if-eqz v2, :cond_0

    .line 1433
    iget v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->bitField0_:I

    .line 1434
    iput-object v2, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    goto :goto_0

    .line 1418
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
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
    .line 1340
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1340
    check-cast p1, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->mergeFrom(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

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
    .line 1340
    invoke-virtual {p0, p1, p2}, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCategory(Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;)Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 1453
    if-nez p1, :cond_8

    .line 1454
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1456
    :cond_8
    iget v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->bitField0_:I

    .line 1457
    iput-object p1, p0, Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Builder;->category_:Lcom/google/apps/people/events/proto/EventsCommonData$EventCategory$Category;

    .line 1459
    return-object p0
.end method
