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
    .line 39850
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 39959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 39851
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->maybeForceBuilderInitialization()V

    .line 39852
    return-void
.end method

.method static synthetic access$55300(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 39845
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$55400()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 1

    .prologue
    .line 39845
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
    .line 39885
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    .line 39886
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 39887
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 39890
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 1

    .prologue
    .line 39857
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;-><init>()V

    return-object v0
.end method

.method private ensureSectionIsMutable()V
    .registers 3

    .prologue
    .line 39962
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 39963
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 39964
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 39966
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 39855
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
    .line 40029
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40030
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 40032
    return-object p0
.end method

.method public addSection(ILcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 40022
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40023
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40025
    return-object p0
.end method

.method public addSection(ILcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 40005
    if-nez p2, :cond_8

    .line 40006
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 40008
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40009
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 40011
    return-object p0
.end method

.method public addSection(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 40015
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 40016
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40018
    return-object p0
.end method

.method public addSection(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 39995
    if-nez p1, :cond_8

    .line 39996
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39998
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 39999
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40001
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 5

    .prologue
    .line 39894
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V

    .line 39895
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 39896
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 39897
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 39898
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 39900
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->access$55602(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;Ljava/util/List;)Ljava/util/List;

    .line 39901
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 39845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 2

    .prologue
    .line 39861
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 39862
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 39863
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 39864
    return-object p0
.end method

.method public clearSection()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 2

    .prologue
    .line 40035
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 40036
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    .line 40038
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 39845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 39845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 3

    .prologue
    .line 39868
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
    .line 39845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 39845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39845
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;
    .registers 2

    .prologue
    .line 39872
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    return-object v0
.end method

.method public getSection(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
    .registers 3
    .parameter "index"

    .prologue
    .line 39975
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    return-object v0
.end method

.method public getSectionCount()I
    .registers 2

    .prologue
    .line 39972
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
    .line 39969
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
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
    .line 39845
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

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
    .line 39845
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
    .line 39934
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 39935
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 39940
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39942
    :sswitch_d
    return-object p0

    .line 39947
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;

    move-result-object v0

    .line 39948
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 39949
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->addSection(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;

    goto :goto_0

    .line 39935
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
    .line 39905
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 39916
    :cond_6
    :goto_6
    return-object p0

    .line 39906
    :cond_7
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->access$55600(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 39907
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 39908
    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->access$55600(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    .line 39909
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->bitField0_:I

    goto :goto_6

    .line 39911
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 39912
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->section_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;->access$55600(Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setSection(ILcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 39989
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 39990
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Builder;->build()Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39992
    return-object p0
.end method

.method public setSection(ILcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 39979
    if-nez p2, :cond_8

    .line 39980
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 39982
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->ensureSectionIsMutable()V

    .line 39983
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Builder;->section_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 39985
    return-object p0
.end method
