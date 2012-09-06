.class public final Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContainerProtos.java"

# interfaces
.implements Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/ContainerProtos$DeprecatedMessage;",
        "Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;",
        ">;",
        "Lcom/google/goggles/ContainerProtos$DeprecatedMessageOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 145
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->maybeForceBuilderInitialization()V

    .line 146
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 1

    .prologue
    .line 139
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->create()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 179
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 182
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 1

    .prologue
    .line 151
    new-instance v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    invoke-direct {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 149
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 170
    invoke-static {v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 172
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->build()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 3

    .prologue
    .line 186
    new-instance v0, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;-><init>(Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;Lcom/google/goggles/ContainerProtos$1;)V

    .line 187
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 156
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->clear()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->clear()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 3

    .prologue
    .line 160
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->create()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->buildPartial()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->clone()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->clone()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->clone()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

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
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->clone()Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;
    .registers 2

    .prologue
    .line 164
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->getDefaultInstanceForType()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 3
    .parameter

    .prologue
    .line 191
    invoke-static {}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;->getDefaultInstance()Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 192
    :cond_6
    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 205
    packed-switch v0, :pswitch_data_e

    .line 210
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    :pswitch_d
    return-object p0

    .line 205
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
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 139
    check-cast p1, Lcom/google/goggles/ContainerProtos$DeprecatedMessage;

    invoke-virtual {p0, p1}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/goggles/ContainerProtos$DeprecatedMessage;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

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
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/ContainerProtos$DeprecatedMessage$Builder;

    move-result-object v0

    return-object v0
.end method
