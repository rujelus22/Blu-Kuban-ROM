.class public final Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$ImageRotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$ImageRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/GogglesProtos$ImageRotation;",
        "Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$ImageRotationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

.field private offsetAlreadyApplied_:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 2132
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2267
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 2133
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->maybeForceBuilderInitialization()V

    .line 2134
    return-void
.end method

.method static synthetic access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 1

    .prologue
    .line 2127
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->create()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2169
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    .line 2170
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2171
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 2174
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 1

    .prologue
    .line 2139
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 2137
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 3

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    .line 2161
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2162
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 2164
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->build()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 2178
    new-instance v2, Lcom/google/goggles/GogglesProtos$ImageRotation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesProtos$ImageRotation;-><init>(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;Lcom/google/goggles/GogglesProtos$1;)V

    .line 2179
    iget v3, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2180
    const/4 v1, 0x0

    .line 2181
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 2184
    :goto_e
    iget-boolean v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->offsetAlreadyApplied_:Z

    #setter for: Lcom/google/goggles/GogglesProtos$ImageRotation;->offsetAlreadyApplied_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageRotation;->access$3002(Lcom/google/goggles/GogglesProtos$ImageRotation;Z)Z

    .line 2185
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 2186
    or-int/lit8 v0, v0, 0x2

    .line 2188
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    #setter for: Lcom/google/goggles/GogglesProtos$ImageRotation;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageRotation;->access$3102(Lcom/google/goggles/GogglesProtos$ImageRotation;Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 2189
    #setter for: Lcom/google/goggles/GogglesProtos$ImageRotation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->access$3202(Lcom/google/goggles/GogglesProtos$ImageRotation;I)I

    .line 2190
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 2

    .prologue
    .line 2143
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 2144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->offsetAlreadyApplied_:Z

    .line 2145
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2146
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 2147
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2148
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->clear()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->clear()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 2

    .prologue
    .line 2284
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2285
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 2287
    return-object p0
.end method

.method public clearOffsetAlreadyApplied()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 2

    .prologue
    .line 2260
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->offsetAlreadyApplied_:Z

    .line 2263
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 3

    .prologue
    .line 2152
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->create()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$ImageRotation;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->clone()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->clone()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->clone()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

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
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->clone()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 2

    .prologue
    .line 2156
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2127
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public getImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    .registers 2

    .prologue
    .line 2272
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    return-object v0
.end method

.method public getOffsetAlreadyApplied()Z
    .registers 2

    .prologue
    .line 2251
    iget-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->offsetAlreadyApplied_:Z

    return v0
.end method

.method public hasImageOffsetFromRightSideUp()Z
    .registers 3

    .prologue
    .line 2269
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

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

.method public hasOffsetAlreadyApplied()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2248
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

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
    .line 2205
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesProtos$ImageRotation;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2194
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2201
    :cond_6
    :goto_6
    return-object p0

    .line 2195
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageRotation;->hasOffsetAlreadyApplied()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2196
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getOffsetAlreadyApplied()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->setOffsetAlreadyApplied(Z)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    .line 2198
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageRotation;->hasImageOffsetFromRightSideUp()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2199
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->setImageOffsetFromRightSideUp(Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2213
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 2214
    sparse-switch v0, :sswitch_data_2e

    .line 2219
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2221
    :sswitch_d
    return-object p0

    .line 2226
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2227
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->offsetAlreadyApplied_:Z

    goto :goto_0

    .line 2231
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2232
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->valueOf(I)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    move-result-object v0

    .line 2233
    if-eqz v0, :cond_0

    .line 2234
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2235
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_0

    .line 2214
    :sswitch_data_2e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
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
    .line 2127
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2127
    check-cast p1, Lcom/google/goggles/GogglesProtos$ImageRotation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$ImageRotation;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

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
    .line 2127
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setImageOffsetFromRightSideUp(Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2275
    if-nez p1, :cond_8

    .line 2276
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2278
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2279
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 2281
    return-object p0
.end method

.method public setOffsetAlreadyApplied(Z)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2254
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->bitField0_:I

    .line 2255
    iput-boolean p1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->offsetAlreadyApplied_:Z

    .line 2257
    return-object p0
.end method
