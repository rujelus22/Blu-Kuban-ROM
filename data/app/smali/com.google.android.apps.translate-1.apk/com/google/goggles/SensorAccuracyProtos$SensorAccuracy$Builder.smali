.class public final Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SensorAccuracyProtos.java"

# interfaces
.implements Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;",
        "Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;",
        ">;",
        "Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracyOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 314
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    iput-object v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 215
    invoke-direct {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->maybeForceBuilderInitialization()V

    .line 216
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 1

    .prologue
    .line 209
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->create()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildPartial()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 251
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 254
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 1

    .prologue
    .line 221
    new-instance v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    invoke-direct {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 219
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 3

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildPartial()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 242
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 244
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->build()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 258
    new-instance v2, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;-><init>(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;Lcom/google/goggles/SensorAccuracyProtos$1;)V

    .line 259
    iget v3, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    .line 260
    const/4 v1, 0x0

    .line 261
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_17

    .line 264
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    #setter for: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    invoke-static {v2, v1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->access$302(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 265
    #setter for: Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->access$402(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;I)I

    .line 266
    return-object v2

    :cond_17
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildPartial()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 226
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    iput-object v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 227
    iget v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    .line 228
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->clear()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->clear()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDiscreteAccuracy()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 2

    .prologue
    .line 331
    iget v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    .line 332
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    iput-object v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 334
    return-object p0
.end method

.method public clone()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 3

    .prologue
    .line 232
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->create()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->buildPartial()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->clone()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->clone()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->clone()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

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
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->clone()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
    .registers 2

    .prologue
    .line 236
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDefaultInstance()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->getDefaultInstanceForType()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->getDefaultInstanceForType()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    return-object v0
.end method

.method public getDiscreteAccuracy()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    return-object v0
.end method

.method public hasDiscreteAccuracy()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 316
    iget v1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

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
    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 3
    .parameter

    .prologue
    .line 270
    invoke-static {}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDefaultInstance()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 274
    :cond_6
    :goto_6
    return-object p0

    .line 271
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->hasDiscreteAccuracy()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 272
    invoke-virtual {p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;->getDiscreteAccuracy()Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->setDiscreteAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 287
    sparse-switch v0, :sswitch_data_22

    .line 292
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    :sswitch_d
    return-object p0

    .line 299
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 300
    invoke-static {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->valueOf(I)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    iget v1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    .line 303
    iput-object v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto :goto_0

    .line 287
    nop

    :sswitch_data_22
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
    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 209
    check-cast p1, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;

    invoke-virtual {p0, p1}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

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
    .line 209
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDiscreteAccuracy(Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;
    .registers 3
    .parameter

    .prologue
    .line 322
    if-nez p1, :cond_8

    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 325
    :cond_8
    iget v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->bitField0_:I

    .line 326
    iput-object p1, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$Builder;->discreteAccuracy_:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 328
    return-object p0
.end method
