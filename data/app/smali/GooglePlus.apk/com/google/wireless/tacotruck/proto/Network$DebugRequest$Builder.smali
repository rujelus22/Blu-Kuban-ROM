.class public final Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$DebugRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$DebugRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 55557
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 55657
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 55558
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->maybeForceBuilderInitialization()V

    .line 55559
    return-void
.end method

.method static synthetic access$78400()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 1

    .prologue
    .line 55552
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 1

    .prologue
    .line 55564
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 55562
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    .registers 3

    .prologue
    .line 55583
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    .line 55584
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 55585
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 55587
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    .registers 6

    .prologue
    .line 55601
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 55602
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 55603
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 55604
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 55605
    or-int/lit8 v2, v2, 0x1

    .line 55607
    :cond_10
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->access$78602(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 55608
    #setter for: Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->access$78702(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;I)I

    .line 55609
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 2

    .prologue
    .line 55568
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 55569
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 55570
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 55571
    return-object p0
.end method

.method public clearDebugType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 2

    .prologue
    .line 55674
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 55675
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->CLEAR_USER_PREFS:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 55677
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 3

    .prologue
    .line 55575
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

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
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDebugType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    .registers 2

    .prologue
    .line 55662
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 55552
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;
    .registers 2

    .prologue
    .line 55579
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    return-object v0
.end method

.method public hasDebugType()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 55659
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

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
    .line 55621
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
    .line 55552
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 55552
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

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
    .line 55552
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55629
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 55630
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_22

    .line 55635
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55637
    :sswitch_d
    return-object p0

    .line 55642
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 55643
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    move-result-object v2

    .line 55644
    .local v2, value:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;
    if-eqz v2, :cond_0

    .line 55645
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 55646
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    goto :goto_0

    .line 55630
    nop

    :sswitch_data_22
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 55613
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 55617
    :cond_6
    :goto_6
    return-object p0

    .line 55614
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->hasDebugType()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55615
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest;->getDebugType()Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->setDebugType(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;

    goto :goto_6
.end method

.method public setDebugType(Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;)Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 55665
    if-nez p1, :cond_8

    .line 55666
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55668
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->bitField0_:I

    .line 55669
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Builder;->debugType_:Lcom/google/wireless/tacotruck/proto/Network$DebugRequest$Type;

    .line 55671
    return-object p0
.end method
