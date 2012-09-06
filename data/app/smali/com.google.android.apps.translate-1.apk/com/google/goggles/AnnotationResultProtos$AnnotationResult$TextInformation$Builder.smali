.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;",
        ">;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private translatedTitle_:Ljava/lang/Object;

.field private words_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1863
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1988
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    .line 2024
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    .line 1864
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->maybeForceBuilderInitialization()V

    .line 1865
    return-void
.end method

.method static synthetic access$2000(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1858
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 1

    .prologue
    .line 1858
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1900
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    .line 1901
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1902
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1905
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 1

    .prologue
    .line 1870
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;-><init>()V

    return-object v0
.end method

.method private ensureWordsIsMutable()V
    .registers 3

    .prologue
    .line 2027
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 2028
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    .line 2029
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 2031
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 1868
    return-void
.end method


# virtual methods
.method public addAllWords(Ljava/lang/Iterable;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;)",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;"
        }
    .end annotation

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 2095
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 2097
    return-object p0
.end method

.method public addWords(ILcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2087
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 2088
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2090
    return-object p0
.end method

.method public addWords(ILcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2070
    if-nez p2, :cond_8

    .line 2071
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2073
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 2074
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2076
    return-object p0
.end method

.method public addWords(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 2080
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 2081
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2083
    return-object p0
.end method

.method public addWords(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2060
    if-nez p1, :cond_8

    .line 2061
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2063
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 2064
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2066
    return-object p0
.end method

.method public build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 3

    .prologue
    .line 1891
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    .line 1892
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1893
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 1895
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 1909
    new-instance v2, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V

    .line 1910
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 1911
    const/4 v1, 0x0

    .line 1912
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_31

    .line 1915
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->translatedTitle_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->access$2302(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1916
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_28

    .line 1917
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    .line 1918
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 1920
    :cond_28
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->access$2402(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;Ljava/util/List;)Ljava/util/List;

    .line 1921
    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->access$2502(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;I)I

    .line 1922
    return-object v2

    :cond_31
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 2

    .prologue
    .line 1874
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 1875
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    .line 1876
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 1877
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    .line 1878
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 1879
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearTranslatedTitle()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 2

    .prologue
    .line 2012
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 2013
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getTranslatedTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    .line 2015
    return-object p0
.end method

.method public clearWords()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 2

    .prologue
    .line 2100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    .line 2101
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 2103
    return-object p0
.end method

.method public clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 3

    .prologue
    .line 1883
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

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
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;
    .registers 2

    .prologue
    .line 1887
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1858
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    return-object v0
.end method

.method public getTranslatedTitle()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    .line 1994
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1995
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1996
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    .line 1999
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getWords(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;
    .registers 3
    .parameter

    .prologue
    .line 2040
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    return-object v0
.end method

.method public getWordsCount()I
    .registers 2

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWordsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2034
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasTranslatedTitle()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1990
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1944
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->getWordsCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 1945
    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->getWords(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1950
    :goto_12
    return v1

    .line 1944
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1950
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1926
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 1940
    :cond_6
    :goto_6
    return-object p0

    .line 1927
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->hasTranslatedTitle()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1928
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->getTranslatedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->setTranslatedTitle(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    .line 1930
    :cond_14
    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->access$2400(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1931
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1932
    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->access$2400(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    .line 1933
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    goto :goto_6

    .line 1935
    :cond_33
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 1936
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    #getter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->words_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;->access$2400(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1958
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1959
    sparse-switch v0, :sswitch_data_2a

    .line 1964
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1966
    :sswitch_d
    return-object p0

    .line 1971
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 1972
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    goto :goto_0

    .line 1976
    :sswitch_1b
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;

    move-result-object v0

    .line 1977
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1978
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->addWords(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    goto :goto_0

    .line 1959
    :sswitch_data_2a
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
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
    .line 1858
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1858
    check-cast p1, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

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
    .line 1858
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeWords(I)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2106
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 2107
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2109
    return-object p0
.end method

.method public setTranslatedTitle(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 2003
    if-nez p1, :cond_8

    .line 2004
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2006
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 2007
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    .line 2009
    return-object p0
.end method

.method setTranslatedTitle(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 2018
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->bitField0_:I

    .line 2019
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->translatedTitle_:Ljava/lang/Object;

    .line 2021
    return-void
.end method

.method public setWords(ILcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2054
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 2055
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2057
    return-object p0
.end method

.method public setWords(ILcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Word;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2044
    if-nez p2, :cond_8

    .line 2045
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2047
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->ensureWordsIsMutable()V

    .line 2048
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$TextInformation$Builder;->words_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2050
    return-object p0
.end method
