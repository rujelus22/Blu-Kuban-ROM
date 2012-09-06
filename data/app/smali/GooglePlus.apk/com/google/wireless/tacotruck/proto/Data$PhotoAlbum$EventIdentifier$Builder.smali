.class public final Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifierOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifierOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private eventCreatorId_:Ljava/lang/Object;

.field private eventId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 14357
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 14467
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventId_:Ljava/lang/Object;

    .line 14503
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventCreatorId_:Ljava/lang/Object;

    .line 14358
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->maybeForceBuilderInitialization()V

    .line 14359
    return-void
.end method

.method static synthetic access$19000()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 1

    .prologue
    .line 14352
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 1

    .prologue
    .line 14364
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 14362
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    .registers 3

    .prologue
    .line 14385
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    .line 14386
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 14387
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 14389
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    .registers 6

    .prologue
    .line 14403
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 14404
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14405
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 14406
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 14407
    or-int/lit8 v2, v2, 0x1

    .line 14409
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->access$19202(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14410
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 14411
    or-int/lit8 v2, v2, 0x2

    .line 14413
    :cond_1c
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventCreatorId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->eventCreatorId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->access$19302(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14414
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->access$19402(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;I)I

    .line 14415
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 2

    .prologue
    .line 14368
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 14369
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventId_:Ljava/lang/Object;

    .line 14370
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14371
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventCreatorId_:Ljava/lang/Object;

    .line 14372
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14373
    return-object p0
.end method

.method public clearEventCreatorId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 2

    .prologue
    .line 14527
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14528
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getEventCreatorId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventCreatorId_:Ljava/lang/Object;

    .line 14530
    return-object p0
.end method

.method public clearEventId()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 2

    .prologue
    .line 14491
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14492
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getEventId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventId_:Ljava/lang/Object;

    .line 14494
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 3

    .prologue
    .line 14377
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

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
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 14352
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;
    .registers 2

    .prologue
    .line 14381
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getEventCreatorId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14508
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventCreatorId_:Ljava/lang/Object;

    .line 14509
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14510
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14511
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventCreatorId_:Ljava/lang/Object;

    .line 14514
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

.method public getEventId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 14472
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventId_:Ljava/lang/Object;

    .line 14473
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 14474
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 14475
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventId_:Ljava/lang/Object;

    .line 14478
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

.method public hasEventCreatorId()Z
    .registers 3

    .prologue
    .line 14505
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

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

.method public hasEventId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 14469
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

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
    .line 14430
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
    .line 14352
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 14352
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

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
    .line 14352
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14438
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 14439
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_28

    .line 14444
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14446
    :sswitch_d
    return-object p0

    .line 14451
    :sswitch_e
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14452
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventId_:Ljava/lang/Object;

    goto :goto_0

    .line 14456
    :sswitch_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14457
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventCreatorId_:Ljava/lang/Object;

    goto :goto_0

    .line 14439
    :sswitch_data_28
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 14419
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 14426
    :cond_6
    :goto_6
    return-object p0

    .line 14420
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->hasEventId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 14421
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getEventId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->setEventId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    .line 14423
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->hasEventCreatorId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14424
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier;->getEventCreatorId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->setEventCreatorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;

    goto :goto_6
.end method

.method public setEventCreatorId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14518
    if-nez p1, :cond_8

    .line 14519
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14521
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14522
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventCreatorId_:Ljava/lang/Object;

    .line 14524
    return-object p0
.end method

.method public setEventId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 14482
    if-nez p1, :cond_8

    .line 14483
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14485
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->bitField0_:I

    .line 14486
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum$EventIdentifier$Builder;->eventId_:Ljava/lang/Object;

    .line 14488
    return-object p0
.end method
