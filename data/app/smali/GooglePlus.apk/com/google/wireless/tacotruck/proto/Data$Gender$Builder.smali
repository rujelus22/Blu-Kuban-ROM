.class public final Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$GenderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Gender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Gender;",
        "Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$GenderOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 30427
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 30527
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 30428
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->maybeForceBuilderInitialization()V

    .line 30429
    return-void
.end method

.method static synthetic access$41200()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 1

    .prologue
    .line 30422
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 1

    .prologue
    .line 30434
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 30432
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 3

    .prologue
    .line 30453
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    .line 30454
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$Gender;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 30455
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 30457
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 6

    .prologue
    .line 30471
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$Gender;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$Gender;-><init>(Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 30472
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$Gender;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 30473
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 30474
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 30475
    or-int/lit8 v2, v2, 0x1

    .line 30477
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Gender;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->access$41402(Lcom/google/wireless/tacotruck/proto/Data$Gender;Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 30478
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$Gender;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->access$41502(Lcom/google/wireless/tacotruck/proto/Data$Gender;I)I

    .line 30479
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 2

    .prologue
    .line 30438
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 30439
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 30440
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 30441
    return-object p0
.end method

.method public clearType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 2

    .prologue
    .line 30544
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 30545
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->MALE:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 30547
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 3

    .prologue
    .line 30445
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

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
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30422
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$Gender;
    .registers 2

    .prologue
    .line 30449
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    .registers 2

    .prologue
    .line 30532
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    return-object v0
.end method

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 30529
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

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
    .line 30491
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
    .line 30422
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30422
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$Gender;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

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
    .line 30422
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30499
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 30500
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 30505
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 30507
    :sswitch_d
    return-object p0

    .line 30512
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 30513
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    move-result-object v2

    .line 30514
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;
    if-eqz v2, :cond_0

    .line 30515
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 30516
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    goto :goto_0

    .line 30500
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$Gender;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 30483
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Gender;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 30487
    :cond_6
    :goto_6
    return-object p0

    .line 30484
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->hasType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30485
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Gender;->getType()Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->setType(Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;

    goto :goto_6
.end method

.method public setType(Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;)Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 30535
    if-nez p1, :cond_8

    .line 30536
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 30538
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->bitField0_:I

    .line 30539
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$Gender$Builder;->type_:Lcom/google/wireless/tacotruck/proto/Data$Gender$Type;

    .line 30541
    return-object p0
.end method
