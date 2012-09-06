.class public final Lcom/google/goggles/FlowProtos$FrameChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FlowProtos.java"

# interfaces
.implements Lcom/google/goggles/FlowProtos$FrameChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FlowProtos$FrameChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/FlowProtos$FrameChange;",
        "Lcom/google/goggles/FlowProtos$FrameChange$Builder;",
        ">;",
        "Lcom/google/goggles/FlowProtos$FrameChangeOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private deltas_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    .line 184
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->maybeForceBuilderInitialization()V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/FlowProtos$FrameChange$Builder;)Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 1

    .prologue
    .line 178
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->create()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/google/goggles/FlowProtos$FrameChange;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 220
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 223
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 1

    .prologue
    .line 190
    new-instance v0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    invoke-direct {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;-><init>()V

    return-object v0
.end method

.method private ensureDeltasIsMutable()V
    .registers 3

    .prologue
    .line 296
    iget v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    .line 298
    iget v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    .line 300
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method


# virtual methods
.method public addAllDeltas(Ljava/lang/Iterable;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/google/goggles/FlowProtos$FrameChange$Builder;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->ensureDeltasIsMutable()V

    .line 327
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 329
    return-object p0
.end method

.method public addDeltas(F)Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 4
    .parameter

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->ensureDeltasIsMutable()V

    .line 320
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    return-object p0
.end method

.method public build()Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/google/goggles/FlowProtos$FrameChange;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 211
    invoke-static {v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 213
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->build()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 4

    .prologue
    .line 227
    new-instance v0, Lcom/google/goggles/FlowProtos$FrameChange;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/FlowProtos$FrameChange;-><init>(Lcom/google/goggles/FlowProtos$FrameChange$Builder;Lcom/google/goggles/FlowProtos$1;)V

    .line 228
    iget v1, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    .line 229
    iget v1, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 230
    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    .line 231
    iget v1, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    .line 233
    :cond_1d
    iget-object v1, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    #setter for: Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/FlowProtos$FrameChange;->access$302(Lcom/google/goggles/FlowProtos$FrameChange;Ljava/util/List;)Ljava/util/List;

    .line 234
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 195
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    .line 196
    iget v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    .line 197
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->clear()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->clear()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearDeltas()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 2

    .prologue
    .line 332
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    .line 333
    iget v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    .line 335
    return-object p0
.end method

.method public clone()Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 3

    .prologue
    .line 201
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->create()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->buildPartial()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->clone()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->clone()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->clone()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

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
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->clone()Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FrameChange;
    .registers 2

    .prologue
    .line 205
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->getDefaultInstanceForType()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    return-object v0
.end method

.method public getDeltas(I)F
    .registers 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getDeltasCount()I
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeltasList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 4
    .parameter

    .prologue
    .line 238
    invoke-static {}, Lcom/google/goggles/FlowProtos$FrameChange;->getDefaultInstance()Lcom/google/goggles/FlowProtos$FrameChange;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 249
    :cond_6
    :goto_6
    return-object p0

    .line 239
    :cond_7
    #getter for: Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FrameChange;->access$300(Lcom/google/goggles/FlowProtos$FrameChange;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 240
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 241
    #getter for: Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FrameChange;->access$300(Lcom/google/goggles/FlowProtos$FrameChange;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    .line 242
    iget v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->bitField0_:I

    goto :goto_6

    .line 244
    :cond_26
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->ensureDeltasIsMutable()V

    .line 245
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    #getter for: Lcom/google/goggles/FlowProtos$FrameChange;->deltas_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/FlowProtos$FrameChange;->access$300(Lcom/google/goggles/FlowProtos$FrameChange;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 262
    sparse-switch v0, :sswitch_data_3a

    .line 267
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :sswitch_d
    return-object p0

    .line 274
    :sswitch_e
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->ensureDeltasIsMutable()V

    .line 275
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :sswitch_1f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v0

    .line 280
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v0

    .line 281
    :goto_27
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_35

    .line 282
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->addDeltas(F)Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    goto :goto_27

    .line 284
    :cond_35
    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_0

    .line 262
    nop

    :sswitch_data_3a
    .sparse-switch
        0x0 -> :sswitch_d
        0x12 -> :sswitch_1f
        0x15 -> :sswitch_e
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
    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 178
    check-cast p1, Lcom/google/goggles/FlowProtos$FrameChange;

    invoke-virtual {p0, p1}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/goggles/FlowProtos$FrameChange;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;

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
    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/FlowProtos$FrameChange$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setDeltas(IF)Lcom/google/goggles/FlowProtos$FrameChange$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->ensureDeltasIsMutable()V

    .line 314
    iget-object v0, p0, Lcom/google/goggles/FlowProtos$FrameChange$Builder;->deltas_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-object p0
.end method
