.class public final Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RestrictsProtos.java"

# interfaces
.implements Lcom/google/goggles/RestrictsProtos$ColorEnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/RestrictsProtos$ColorEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/RestrictsProtos$ColorEnum;",
        "Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;",
        ">;",
        "Lcom/google/goggles/RestrictsProtos$ColorEnumOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1628
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1629
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->maybeForceBuilderInitialization()V

    .line 1630
    return-void
.end method

.method static synthetic access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 1

    .prologue
    .line 1623
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->create()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1661
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    .line 1662
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1663
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1666
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 1

    .prologue
    .line 1635
    new-instance v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    invoke-direct {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1633
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 3

    .prologue
    .line 1652
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    .line 1653
    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1654
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1656
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->build()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 3

    .prologue
    .line 1670
    new-instance v0, Lcom/google/goggles/RestrictsProtos$ColorEnum;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/RestrictsProtos$ColorEnum;-><init>(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;Lcom/google/goggles/RestrictsProtos$1;)V

    .line 1671
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 1

    .prologue
    .line 1639
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1640
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->clear()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->clear()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 3

    .prologue
    .line 1644
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->create()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildPartial()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$ColorEnum;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->clone()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->clone()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->clone()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

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
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->clone()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 2

    .prologue
    .line 1648
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1623
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 1680
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/RestrictsProtos$ColorEnum;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1675
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->getDefaultInstance()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 1676
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1688
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1689
    packed-switch v0, :pswitch_data_e

    .line 1694
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1696
    :pswitch_d
    return-object p0

    .line 1689
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1623
    check-cast p1, Lcom/google/goggles/RestrictsProtos$ColorEnum;

    invoke-virtual {p0, p1}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$ColorEnum;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method
