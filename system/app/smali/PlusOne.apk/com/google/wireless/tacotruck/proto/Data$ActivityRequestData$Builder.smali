.class public final Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private collapsedDataOnly_:Z

.field private maxResults_:I

.field private shownActivitiesBlob_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 38526
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 38650
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38686
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    .line 38527
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maybeForceBuilderInitialization()V

    .line 38528
    return-void
.end method

.method static synthetic access$51900()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 1

    .prologue
    .line 38521
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 1

    .prologue
    .line 38533
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 38531
    return-void
.end method


# virtual methods
.method public build()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 3

    .prologue
    .line 38556
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    .line 38557
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 38558
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 38560
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 6

    .prologue
    .line 38574
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 38575
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38576
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 38577
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 38578
    or-int/lit8 v2, v2, 0x1

    .line 38580
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->shownActivitiesBlob_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->access$52102(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38581
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 38582
    or-int/lit8 v2, v2, 0x2

    .line 38584
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->maxResults_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->access$52202(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;I)I

    .line 38585
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 38586
    or-int/lit8 v2, v2, 0x4

    .line 38588
    :cond_28
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->collapsedDataOnly_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->access$52302(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;Z)Z

    .line 38589
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->access$52402(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;I)I

    .line 38590
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 38521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 38537
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 38538
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38539
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38540
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    .line 38541
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    .line 38543
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38544
    return-object p0
.end method

.method public clearCollapsedDataOnly()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 38721
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38722
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    .line 38724
    return-object p0
.end method

.method public clearMaxResults()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 38700
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38701
    const/16 v0, 0x14

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    .line 38703
    return-object p0
.end method

.method public clearShownActivitiesBlob()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 2

    .prologue
    .line 38674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38675
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38677
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 38521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 38521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3

    .prologue
    .line 38548
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

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
    .line 38521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCollapsedDataOnly()Z
    .registers 2

    .prologue
    .line 38712
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 38521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 38521
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 2

    .prologue
    .line 38552
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    return-object v0
.end method

.method public getMaxResults()I
    .registers 2

    .prologue
    .line 38691
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    return v0
.end method

.method public getShownActivitiesBlob()Ljava/lang/String;
    .registers 4

    .prologue
    .line 38655
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38656
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 38657
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 38658
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38661
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

.method public hasCollapsedDataOnly()Z
    .registers 3

    .prologue
    .line 38709
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

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

.method public hasMaxResults()Z
    .registers 3

    .prologue
    .line 38688
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

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

.method public hasShownActivitiesBlob()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 38652
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
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
    .line 38521
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

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
    .line 38521
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38616
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 38617
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_36

    .line 38622
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 38624
    :sswitch_d
    return-object p0

    .line 38629
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38630
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    goto :goto_0

    .line 38634
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38635
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    goto :goto_0

    .line 38639
    :sswitch_28
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38640
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    goto :goto_0

    .line 38617
    nop

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_28
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 38594
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 38604
    :cond_6
    :goto_6
    return-object p0

    .line 38595
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->hasShownActivitiesBlob()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 38596
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getShownActivitiesBlob()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    .line 38598
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->hasMaxResults()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 38599
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getMaxResults()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->setMaxResults(I)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    .line 38601
    :cond_21
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->hasCollapsedDataOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 38602
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getCollapsedDataOnly()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;

    goto :goto_6
.end method

.method public setCollapsedDataOnly(Z)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38715
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38716
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->collapsedDataOnly_:Z

    .line 38718
    return-object p0
.end method

.method public setMaxResults(I)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38694
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38695
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->maxResults_:I

    .line 38697
    return-object p0
.end method

.method public setShownActivitiesBlob(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 38665
    if-nez p1, :cond_8

    .line 38666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 38668
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->bitField0_:I

    .line 38669
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData$Builder;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 38671
    return-object p0
.end method
