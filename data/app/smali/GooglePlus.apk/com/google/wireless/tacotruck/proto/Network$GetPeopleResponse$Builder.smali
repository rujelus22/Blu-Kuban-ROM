.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private person_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 10246
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 10349
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 10247
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->maybeForceBuilderInitialization()V

    .line 10248
    return-void
.end method

.method static synthetic access$13400(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10241
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13500()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 1

    .prologue
    .line 10241
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 10281
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    .line 10282
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 10283
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 10286
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 1

    .prologue
    .line 10253
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePersonIsMutable()V
    .registers 3

    .prologue
    .line 10352
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 10353
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 10354
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 10356
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 10251
    return-void
.end method


# virtual methods
.method public addAllPerson(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 10419
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10420
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 10422
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10412
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10413
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10415
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10395
    if-nez p2, :cond_8

    .line 10396
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10398
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10399
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10401
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 10405
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10406
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10408
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 10385
    if-nez p1, :cond_8

    .line 10386
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10388
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10389
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10391
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 3

    .prologue
    .line 10272
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    .line 10273
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 10274
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 10276
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 5

    .prologue
    .line 10290
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 10291
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 10292
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 10293
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 10294
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 10296
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->person_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->access$13702(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;Ljava/util/List;)Ljava/util/List;

    .line 10297
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 2

    .prologue
    .line 10257
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 10258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 10259
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 10260
    return-object p0
.end method

.method public clearPerson()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 2

    .prologue
    .line 10425
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 10426
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    .line 10428
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 3

    .prologue
    .line 10264
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

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
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 10241
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;
    .registers 2

    .prologue
    .line 10268
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .parameter "index"

    .prologue
    .line 10365
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getPersonCount()I
    .registers 2

    .prologue
    .line 10362
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPersonList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10359
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 10316
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
    .line 10241
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 10241
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

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
    .line 10241
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10324
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 10325
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 10330
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10332
    :sswitch_d
    return-object p0

    .line 10337
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 10338
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 10339
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;

    goto :goto_0

    .line 10325
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 10301
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 10312
    :cond_6
    :goto_6
    return-object p0

    .line 10302
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->access$13700(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 10303
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 10304
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->access$13700(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    .line 10305
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 10307
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10308
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;->access$13700(Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPerson(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 10379
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10380
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10382
    return-object p0
.end method

.method public setPerson(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 10369
    if-nez p2, :cond_8

    .line 10370
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 10372
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 10373
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 10375
    return-object p0
.end method
