.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponseOrBuilder;"
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
    .line 26590
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 26693
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26591
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->maybeForceBuilderInitialization()V

    .line 26592
    return-void
.end method

.method static synthetic access$36600(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26585
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$36700()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 1

    .prologue
    .line 26585
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 26625
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    .line 26626
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 26627
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 26630
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 1

    .prologue
    .line 26597
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensurePersonIsMutable()V
    .registers 3

    .prologue
    .line 26696
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 26697
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26698
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26700
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 26595
    return-void
.end method


# virtual methods
.method public addAllPerson(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$Person;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 26763
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$Person;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26764
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 26766
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 26756
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26757
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26759
    return-object p0
.end method

.method public addPerson(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 26739
    if-nez p2, :cond_8

    .line 26740
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26742
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26743
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 26745
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 26749
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26750
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26752
    return-object p0
.end method

.method public addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 26729
    if-nez p1, :cond_8

    .line 26730
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26732
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26733
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26735
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 3

    .prologue
    .line 26616
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    .line 26617
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 26618
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 26620
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 5

    .prologue
    .line 26634
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 26635
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26636
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 26637
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26638
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26640
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->access$36902(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;Ljava/util/List;)Ljava/util/List;

    .line 26641
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 2

    .prologue
    .line 26601
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26602
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26603
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26604
    return-object p0
.end method

.method public clearPerson()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 2

    .prologue
    .line 26769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26770
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    .line 26772
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 3

    .prologue
    .line 26608
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

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
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 26585
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;
    .registers 2

    .prologue
    .line 26612
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    return-object v0
.end method

.method public getPerson(I)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 3
    .parameter "index"

    .prologue
    .line 26709
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getPersonCount()I
    .registers 2

    .prologue
    .line 26706
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

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
    .line 26703
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 26660
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
    .line 26585
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 26585
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

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
    .line 26585
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26668
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 26669
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 26674
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 26676
    :sswitch_d
    return-object p0

    .line 26681
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;

    move-result-object v0

    .line 26682
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 26683
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->addPerson(Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;

    goto :goto_0

    .line 26669
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 26645
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 26656
    :cond_6
    :goto_6
    return-object p0

    .line 26646
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->access$36900(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 26647
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 26648
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->access$36900(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    .line 26649
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 26651
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26652
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->person_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;->access$36900(Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setPerson(ILcom/google/wireless/tacotruck/proto/Data$Person$Builder;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 26723
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26724
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$Person$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26726
    return-object p0
.end method

.method public setPerson(ILcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 26713
    if-nez p2, :cond_8

    .line 26714
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 26716
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->ensurePersonIsMutable()V

    .line 26717
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPlusOnePeopleResponse$Builder;->person_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 26719
    return-object p0
.end method
