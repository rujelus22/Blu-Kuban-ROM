.class public final Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "OndeviceSpec.java"

# interfaces
.implements Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;",
        ">;",
        "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecsOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private spec_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    .line 180
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->maybeForceBuilderInitialization()V

    .line 181
    return-void
.end method

.method static synthetic access$000(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 1

    .prologue
    .line 174
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 216
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 219
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 1

    .prologue
    .line 186
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    invoke-direct {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSpecIsMutable()V
    .registers 3

    .prologue
    .line 285
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    .line 287
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    .line 289
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 184
    return-void
.end method


# virtual methods
.method public addAllSpec(Ljava/lang/Iterable;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;",
            ">;)",
            "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;"
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 353
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 355
    return-object p0
.end method

.method public addSpec(ILcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 346
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 348
    return-object p0
.end method

.method public addSpec(ILcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 328
    if-nez p2, :cond_8

    .line 329
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 331
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 332
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 334
    return-object p0
.end method

.method public addSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 4
    .parameter

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 339
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    return-object p0
.end method

.method public addSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 3
    .parameter

    .prologue
    .line 318
    if-nez p1, :cond_8

    .line 319
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 321
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 322
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 207
    invoke-static {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 209
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 4

    .prologue
    .line 223
    new-instance v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;-><init>(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;Lcom/google/protos/research_handwriting/OndeviceSpec$1;)V

    .line 224
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    .line 225
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 226
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    .line 227
    iget v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    .line 229
    :cond_1d
    iget-object v1, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    #setter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->access$302(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;Ljava/util/List;)Ljava/util/List;

    .line 230
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->clear()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 2

    .prologue
    .line 190
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    .line 192
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    .line 193
    return-object p0
.end method

.method public clearSpec()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 2

    .prologue
    .line 358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    .line 359
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    .line 361
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 3

    .prologue
    .line 197
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->create()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

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
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->clone()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;
    .registers 2

    .prologue
    .line 201
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    return-object v0
.end method

.method public getSpec(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;
    .registers 3
    .parameter

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    return-object v0
.end method

.method public getSpecCount()I
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSpecList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 249
    const/4 v0, 0x1

    return v0
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
    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 174
    check-cast p1, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    invoke-virtual {p0, p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

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
    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 258
    sparse-switch v0, :sswitch_data_1e

    .line 263
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :sswitch_d
    return-object p0

    .line 270
    :sswitch_e
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;->newBuilder()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 272
    invoke-virtual {v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->buildPartial()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->addSpec(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;

    goto :goto_0

    .line 258
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 4
    .parameter

    .prologue
    .line 234
    invoke-static {}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->getDefaultInstance()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 245
    :cond_6
    :goto_6
    return-object p0

    .line 235
    :cond_7
    #getter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->access$300(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 236
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 237
    #getter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->access$300(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    .line 238
    iget v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->bitField0_:I

    goto :goto_6

    .line 240
    :cond_26
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 241
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    #getter for: Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->spec_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;->access$300(Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public removeSpec(I)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 3
    .parameter

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 365
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 367
    return-object p0
.end method

.method public setSpec(ILcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 313
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec$Builder;->build()Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object p0
.end method

.method public setSpec(ILcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpec;)Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 302
    if-nez p2, :cond_8

    .line 303
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 305
    :cond_8
    invoke-direct {p0}, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->ensureSpecIsMutable()V

    .line 306
    iget-object v0, p0, Lcom/google/protos/research_handwriting/OndeviceSpec$HandwritingRecognizerSpecs$Builder;->spec_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 308
    return-object p0
.end method
