.class public final Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private section_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40646
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 40755
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 40647
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->maybeForceBuilderInitialization()V

    .line 40648
    return-void
.end method

.method static synthetic access$56200(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40641
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$56300()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 1

    .prologue
    .line 40641
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 40681
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    .line 40682
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 40683
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 40686
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 1

    .prologue
    .line 40653
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSectionIsMutable()V
    .registers 3

    .prologue
    .line 40758
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 40759
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 40760
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 40762
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 40651
    return-void
.end method


# virtual methods
.method public addAllSection(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;"
        }
    .end annotation

    .prologue
    .line 40825
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40826
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40828
    return-object p0
.end method

.method public addSection(ILcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40818
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40819
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40821
    return-object p0
.end method

.method public addSection(ILcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40801
    if-nez p2, :cond_8

    .line 40802
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40804
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40805
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40807
    return-object p0
.end method

.method public addSection(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 40811
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40812
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40814
    return-object p0
.end method

.method public addSection(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 40791
    if-nez p1, :cond_8

    .line 40792
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40794
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40795
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40797
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 3

    .prologue
    .line 40672
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    .line 40673
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 40674
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 40676
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 5

    .prologue
    .line 40690
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 40691
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 40692
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 40693
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 40694
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 40696
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->access$56502(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;Ljava/util/List;)Ljava/util/List;

    .line 40697
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 2

    .prologue
    .line 40657
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 40658
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 40659
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 40660
    return-object p0
.end method

.method public clearSection()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 2

    .prologue
    .line 40831
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 40832
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 40834
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 3

    .prologue
    .line 40664
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

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
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 40641
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 2

    .prologue
    .line 40668
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .registers 3
    .parameter "index"

    .prologue
    .line 40771
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    return-object v0
.end method

.method public getSectionCount()I
    .registers 2

    .prologue
    .line 40768
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40765
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 3

    .prologue
    .line 40716
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->getSectionCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 40717
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->getSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 40719
    const/4 v1, 0x0

    .line 40722
    :goto_12
    return v1

    .line 40716
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40722
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
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
    .line 40641
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 40641
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

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
    .line 40641
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40730
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 40731
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 40736
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40738
    :sswitch_d
    return-object p0

    .line 40743
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    .line 40744
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 40745
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->addSection(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    goto :goto_0

    .line 40731
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 40701
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 40712
    :cond_6
    :goto_6
    return-object p0

    .line 40702
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->access$56500(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 40703
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 40704
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->access$56500(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 40705
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 40707
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40708
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->access$56500(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setSection(ILcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40785
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40786
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40788
    return-object p0
.end method

.method public setSection(ILcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40775
    if-nez p2, :cond_8

    .line 40776
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40778
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40779
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 40781
    return-object p0
.end method
