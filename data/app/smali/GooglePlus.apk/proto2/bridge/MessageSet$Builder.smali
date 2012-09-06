.class public final Lproto2/bridge/MessageSet$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "MessageSet.java"

# interfaces
.implements Lproto2/bridge/MessageSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lproto2/bridge/MessageSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lproto2/bridge/MessageSet;",
        "Lproto2/bridge/MessageSet$Builder;",
        ">;",
        "Lproto2/bridge/MessageSetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 144
    invoke-direct {p0}, Lproto2/bridge/MessageSet$Builder;->maybeForceBuilderInitialization()V

    .line 145
    return-void
.end method

.method static synthetic access$100()Lproto2/bridge/MessageSet$Builder;
    .registers 1

    .prologue
    .line 139
    invoke-static {}, Lproto2/bridge/MessageSet$Builder;->create()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lproto2/bridge/MessageSet$Builder;
    .registers 1

    .prologue
    .line 150
    new-instance v0, Lproto2/bridge/MessageSet$Builder;

    invoke-direct {v0}, Lproto2/bridge/MessageSet$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 148
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->build()Lproto2/bridge/MessageSet;

    move-result-object v0

    return-object v0
.end method

.method public build()Lproto2/bridge/MessageSet;
    .registers 3

    .prologue
    .line 167
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->buildPartial()Lproto2/bridge/MessageSet;

    move-result-object v0

    .line 168
    .local v0, result:Lproto2/bridge/MessageSet;
    invoke-virtual {v0}, Lproto2/bridge/MessageSet;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 169
    invoke-static {v0}, Lproto2/bridge/MessageSet$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 171
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->buildPartial()Lproto2/bridge/MessageSet;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lproto2/bridge/MessageSet;
    .registers 3

    .prologue
    .line 185
    new-instance v0, Lproto2/bridge/MessageSet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lproto2/bridge/MessageSet;-><init>(Lproto2/bridge/MessageSet$Builder;Lproto2/bridge/MessageSet$1;)V

    .line 186
    .local v0, result:Lproto2/bridge/MessageSet;
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->clear()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->clear()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->clear()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lproto2/bridge/MessageSet$Builder;
    .registers 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 155
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->clone()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->clone()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->clone()Lproto2/bridge/MessageSet$Builder;

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
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->clone()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lproto2/bridge/MessageSet$Builder;
    .registers 3

    .prologue
    .line 159
    invoke-static {}, Lproto2/bridge/MessageSet$Builder;->create()Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->buildPartial()Lproto2/bridge/MessageSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Lproto2/bridge/MessageSet$Builder;->mergeFrom(Lproto2/bridge/MessageSet;)Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->getDefaultInstanceForType()Lproto2/bridge/MessageSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->getDefaultInstanceForType()Lproto2/bridge/MessageSet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lproto2/bridge/MessageSet;
    .registers 2

    .prologue
    .line 163
    invoke-static {}, Lproto2/bridge/MessageSet;->getDefaultInstance()Lproto2/bridge/MessageSet;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 196
    invoke-virtual {p0}, Lproto2/bridge/MessageSet$Builder;->extensionsAreInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

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
    .line 139
    invoke-virtual {p0, p1, p2}, Lproto2/bridge/MessageSet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 139
    check-cast p1, Lproto2/bridge/MessageSet;

    .end local p1
    invoke-virtual {p0, p1}, Lproto2/bridge/MessageSet$Builder;->mergeFrom(Lproto2/bridge/MessageSet;)Lproto2/bridge/MessageSet$Builder;

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
    .line 139
    invoke-virtual {p0, p1, p2}, Lproto2/bridge/MessageSet$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lproto2/bridge/MessageSet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lproto2/bridge/MessageSet$Builder;
    .registers 5
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 209
    .local v0, tag:I
    packed-switch v0, :pswitch_data_e

    .line 214
    invoke-virtual {p0, p1, p2, v0}, Lproto2/bridge/MessageSet$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    :pswitch_d
    return-object p0

    .line 209
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

.method public mergeFrom(Lproto2/bridge/MessageSet;)Lproto2/bridge/MessageSet$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 190
    invoke-static {}, Lproto2/bridge/MessageSet;->getDefaultInstance()Lproto2/bridge/MessageSet;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 192
    :goto_6
    return-object p0

    .line 191
    :cond_7
    invoke-virtual {p0, p1}, Lproto2/bridge/MessageSet$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method
