.class public final Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "HistoryConfigProtos.java"

# interfaces
.implements Lcom/google/goggles/HistoryConfigProtos$HistoryConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;",
        "Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;",
        ">;",
        "Lcom/google/goggles/HistoryConfigProtos$HistoryConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private recording_:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 172
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->maybeForceBuilderInitialization()V

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 1

    .prologue
    .line 166
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 208
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 211
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 1

    .prologue
    .line 178
    new-instance v0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    invoke-direct {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 176
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 3

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 199
    invoke-static {v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 201
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->build()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 215
    new-instance v2, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;-><init>(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;Lcom/google/goggles/HistoryConfigProtos$1;)V

    .line 216
    iget v3, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    .line 217
    const/4 v1, 0x0

    .line 218
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_17

    .line 221
    :goto_e
    iget-boolean v1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->recording_:Z

    #setter for: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->recording_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->access$302(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;Z)Z

    .line 222
    #setter for: Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->access$402(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;I)I

    .line 223
    return-object v2

    :cond_17
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 2

    .prologue
    .line 182
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->recording_:Z

    .line 184
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    .line 185
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->clear()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearRecording()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 2

    .prologue
    .line 285
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->recording_:Z

    .line 288
    return-object p0
.end method

.method public clone()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 3

    .prologue
    .line 189
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->create()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->buildPartial()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

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
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->clone()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;
    .registers 2

    .prologue
    .line 193
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->getDefaultInstanceForType()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    return-object v0
.end method

.method public getRecording()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->recording_:Z

    return v0
.end method

.method public hasRecording()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 273
    iget v1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

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
    .line 235
    invoke-virtual {p0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->hasRecording()Z

    move-result v0

    if-nez v0, :cond_8

    .line 237
    const/4 v0, 0x0

    .line 239
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 227
    invoke-static {}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getDefaultInstance()Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 231
    :cond_6
    :goto_6
    return-object p0

    .line 228
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->hasRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    invoke-virtual {p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;->getRecording()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->setRecording(Z)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 248
    sparse-switch v0, :sswitch_data_1c

    .line 253
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    :sswitch_d
    return-object p0

    .line 260
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    .line 261
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->recording_:Z

    goto :goto_0

    .line 248
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
    .end sparse-switch
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
    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 166
    check-cast p1, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;

    invoke-virtual {p0, p1}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/goggles/HistoryConfigProtos$HistoryConfig;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

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
    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRecording(Z)Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;
    .registers 3
    .parameter

    .prologue
    .line 279
    iget v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->bitField0_:I

    .line 280
    iput-boolean p1, p0, Lcom/google/goggles/HistoryConfigProtos$HistoryConfig$Builder;->recording_:Z

    .line 282
    return-object p0
.end method
