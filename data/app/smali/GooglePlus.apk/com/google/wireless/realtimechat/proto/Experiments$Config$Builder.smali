.class public final Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Experiments.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Experiments$ConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Experiments$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Experiments$Config;",
        "Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;",
        ">;",
        "Lcom/google/wireless/realtimechat/proto/Experiments$ConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private experimentMapping_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1959
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2062
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    .line 1960
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->maybeForceBuilderInitialization()V

    .line 1961
    return-void
.end method

.method static synthetic access$2000()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 1

    .prologue
    .line 1954
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->create()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 1

    .prologue
    .line 1966
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;-><init>()V

    return-object v0
.end method

.method private ensureExperimentMappingIsMutable()V
    .registers 3

    .prologue
    .line 2065
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 2066
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    .line 2067
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    .line 2069
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1964
    return-void
.end method


# virtual methods
.method public addAllExperimentMapping(Ljava/lang/Iterable;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;",
            ">;)",
            "Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;"
        }
    .end annotation

    .prologue
    .line 2132
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;>;"
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->ensureExperimentMappingIsMutable()V

    .line 2133
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2135
    return-object p0
.end method

.method public addExperimentMapping(ILcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2125
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->ensureExperimentMappingIsMutable()V

    .line 2126
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->build()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2128
    return-object p0
.end method

.method public addExperimentMapping(ILcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2108
    if-nez p2, :cond_8

    .line 2109
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2111
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->ensureExperimentMappingIsMutable()V

    .line 2112
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2114
    return-object p0
.end method

.method public addExperimentMapping(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 2118
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->ensureExperimentMappingIsMutable()V

    .line 2119
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->build()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    return-object p0
.end method

.method public addExperimentMapping(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 2098
    if-nez p1, :cond_8

    .line 2099
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2101
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->ensureExperimentMappingIsMutable()V

    .line 2102
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2104
    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->build()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/wireless/realtimechat/proto/Experiments$Config;
    .registers 3

    .prologue
    .line 1985
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v0

    .line 1986
    .local v0, result:Lcom/google/wireless/realtimechat/proto/Experiments$Config;
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1987
    invoke-static {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 1989
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$Config;
    .registers 5

    .prologue
    .line 2003
    new-instance v1, Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;-><init>(Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;Lcom/google/wireless/realtimechat/proto/Experiments$1;)V

    .line 2004
    .local v1, result:Lcom/google/wireless/realtimechat/proto/Experiments$Config;
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    .line 2005
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1d

    .line 2006
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    .line 2007
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    .line 2009
    :cond_1d
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    #setter for: Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->access$2202(Lcom/google/wireless/realtimechat/proto/Experiments$Config;Ljava/util/List;)Ljava/util/List;

    .line 2010
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->clear()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 2

    .prologue
    .line 1970
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1971
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    .line 1972
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    .line 1973
    return-object p0
.end method

.method public clearExperimentMapping()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 2

    .prologue
    .line 2138
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    .line 2139
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    .line 2141
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 3

    .prologue
    .line 1977
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->create()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

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
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->clone()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1954
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$Config;
    .registers 2

    .prologue
    .line 1981
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentMapping(I)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    .registers 3
    .parameter "index"

    .prologue
    .line 2078
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    return-object v0
.end method

.method public getExperimentMappingCount()I
    .registers 2

    .prologue
    .line 2075
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getExperimentMappingList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2072
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 2029
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
    .line 1954
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1954
    check-cast p1, Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

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
    .line 1954
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2037
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2038
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_1e

    .line 2043
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2045
    :sswitch_d
    return-object p0

    .line 2050
    :sswitch_e
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;->newBuilder()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;

    move-result-object v0

    .line 2051
    .local v0, subBuilder:Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2052
    invoke-virtual {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->buildPartial()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->addExperimentMapping(Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    goto :goto_0

    .line 2038
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 2014
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 2025
    :cond_6
    :goto_6
    return-object p0

    .line 2015
    :cond_7
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->access$2200(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2016
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2017
    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->access$2200(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    .line 2018
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->bitField0_:I

    goto :goto_6

    .line 2020
    :cond_26
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->ensureExperimentMappingIsMutable()V

    .line 2021
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    #getter for: Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->access$2200(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public setExperimentMapping(ILcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 2092
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->ensureExperimentMappingIsMutable()V

    .line 2093
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping$Builder;->build()Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2095
    return-object p0
.end method

.method public setExperimentMapping(ILcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 2082
    if-nez p2, :cond_8

    .line 2083
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2085
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->ensureExperimentMappingIsMutable()V

    .line 2086
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->experimentMapping_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2088
    return-object p0
.end method
