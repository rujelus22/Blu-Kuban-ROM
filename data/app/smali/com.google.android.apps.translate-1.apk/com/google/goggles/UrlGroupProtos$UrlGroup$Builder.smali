.class public final Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UrlGroupProtos.java"

# interfaces
.implements Lcom/google/goggles/UrlGroupProtos$UrlGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/UrlGroupProtos$UrlGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/UrlGroupProtos$UrlGroup;",
        "Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;",
        ">;",
        "Lcom/google/goggles/UrlGroupProtos$UrlGroupOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private url_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$Url;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 802
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 911
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    .line 803
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->maybeForceBuilderInitialization()V

    .line 804
    return-void
.end method

.method static synthetic access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 1

    .prologue
    .line 797
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->create()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    .line 838
    invoke-virtual {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 839
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 842
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 1

    .prologue
    .line 809
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    invoke-direct {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;-><init>()V

    return-object v0
.end method

.method private ensureUrlIsMutable()V
    .registers 3

    .prologue
    .line 914
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 915
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    .line 916
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    .line 918
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 807
    return-void
.end method


# virtual methods
.method public addAllUrl(Ljava/lang/Iterable;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/goggles/UrlGroupProtos$Url;",
            ">;)",
            "Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;"
        }
    .end annotation

    .prologue
    .line 981
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 982
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 984
    return-object p0
.end method

.method public addUrl(ILcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 975
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->build()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 977
    return-object p0
.end method

.method public addUrl(ILcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 957
    if-nez p2, :cond_8

    .line 958
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 960
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 961
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 963
    return-object p0
.end method

.method public addUrl(Lcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 4
    .parameter

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 968
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->build()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    return-object p0
.end method

.method public addUrl(Lcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 3
    .parameter

    .prologue
    .line 947
    if-nez p1, :cond_8

    .line 948
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 950
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 951
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 953
    return-object p0
.end method

.method public build()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3

    .prologue
    .line 828
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    .line 829
    invoke-virtual {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 830
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 832
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->build()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 4

    .prologue
    .line 846
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;-><init>(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;Lcom/google/goggles/UrlGroupProtos$1;)V

    .line 847
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    .line 848
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1d

    .line 849
    iget-object v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    .line 850
    iget v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    .line 852
    :cond_1d
    iget-object v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    #setter for: Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->access$1102(Lcom/google/goggles/UrlGroupProtos$UrlGroup;Ljava/util/List;)Ljava/util/List;

    .line 853
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 2

    .prologue
    .line 813
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 814
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    .line 815
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    .line 816
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->clear()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->clear()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearUrl()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 2

    .prologue
    .line 987
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    .line 988
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    .line 990
    return-object p0
.end method

.method public clone()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 3

    .prologue
    .line 820
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->create()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->clone()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->clone()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->clone()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

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
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->clone()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 2

    .prologue
    .line 824
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->getDefaultInstance()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 797
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public getUrl(I)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3
    .parameter

    .prologue
    .line 927
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url;

    return-object v0
.end method

.method public getUrlCount()I
    .registers 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$Url;",
            ">;"
        }
    .end annotation

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 872
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->getUrlCount()I

    move-result v2

    if-ge v0, v2, :cond_16

    .line 873
    invoke-virtual {p0, v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->getUrl(I)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/goggles/UrlGroupProtos$Url;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_13

    .line 878
    :goto_12
    return v1

    .line 872
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 878
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public mergeFrom(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 4
    .parameter

    .prologue
    .line 857
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->getDefaultInstance()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 868
    :cond_6
    :goto_6
    return-object p0

    .line 858
    :cond_7
    #getter for: Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->access$1100(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 859
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 860
    #getter for: Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->access$1100(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    .line 861
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->bitField0_:I

    goto :goto_6

    .line 863
    :cond_26
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 864
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    #getter for: Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->access$1100(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 886
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 887
    sparse-switch v0, :sswitch_data_1e

    .line 892
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    :sswitch_d
    return-object p0

    .line 899
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$Url;->newBuilder()Lcom/google/goggles/UrlGroupProtos$Url$Builder;

    move-result-object v0

    .line 900
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 901
    invoke-virtual {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->buildPartial()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->addUrl(Lcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    goto :goto_0

    .line 887
    nop

    :sswitch_data_1e
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 797
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 797
    check-cast p1, Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    invoke-virtual {p0, p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

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
    .line 797
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeUrl(I)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 3
    .parameter

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 994
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 996
    return-object p0
.end method

.method public setUrl(ILcom/google/goggles/UrlGroupProtos$Url$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 941
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 942
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/goggles/UrlGroupProtos$Url$Builder;->build()Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 944
    return-object p0
.end method

.method public setUrl(ILcom/google/goggles/UrlGroupProtos$Url;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 931
    if-nez p2, :cond_8

    .line 932
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 934
    :cond_8
    invoke-direct {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->ensureUrlIsMutable()V

    .line 935
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->url_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 937
    return-object p0
.end method
