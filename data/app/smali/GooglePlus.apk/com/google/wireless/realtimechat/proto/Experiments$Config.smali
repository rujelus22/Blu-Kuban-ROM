.class public final Lcom/google/wireless/realtimechat/proto/Experiments$Config;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Experiments.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Experiments$ConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Experiments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$Config;

.field private static final serialVersionUID:J


# instance fields
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

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2154
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    .line 2155
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->initFields()V

    .line 2156
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 1805
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1842
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->memoizedIsInitialized:B

    .line 1859
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->memoizedSerializedSize:I

    .line 1806
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;Lcom/google/wireless/realtimechat/proto/Experiments$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1800
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;-><init>(Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 1807
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1842
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->memoizedIsInitialized:B

    .line 1859
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->memoizedSerializedSize:I

    .line 1807
    return-void
.end method

.method static synthetic access$2200(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1800
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/wireless/realtimechat/proto/Experiments$Config;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1800
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Experiments$Config;
    .registers 1

    .prologue
    .line 1811
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1840
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    .line 1841
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 1

    .prologue
    .line 1947
    #calls: Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->create()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->access$2000()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1950
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->newBuilder()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Experiments$Config;
    .registers 2

    .prologue
    .line 1815
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Experiments$Config;

    return-object v0
.end method

.method public getExperimentMapping(I)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;
    .registers 3
    .parameter "index"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMapping;

    return-object v0
.end method

.method public getExperimentMappingCount()I
    .registers 2

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

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
    .line 1822
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    return-object v0
.end method

.method public getExperimentMappingOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMappingOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMappingOrBuilder;

    return-object v0
.end method

.method public getExperimentMappingOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Experiments$ExperimentMappingOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1826
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    .line 1861
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->memoizedSerializedSize:I

    .line 1862
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_7

    move v2, v1

    .line 1870
    .end local v1           #size:I
    .local v2, size:I
    :goto_6
    return v2

    .line 1864
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_7
    const/4 v1, 0x0

    .line 1865
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 1866
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 1865
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1869
    :cond_22
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->memoizedSerializedSize:I

    move v2, v1

    .line 1870
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1844
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->memoizedIsInitialized:B

    .line 1845
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1848
    :goto_8
    return v1

    .line 1845
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1847
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 2

    .prologue
    .line 1948
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->newBuilder()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->toBuilder()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;
    .registers 2

    .prologue
    .line 1952
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->newBuilder(Lcom/google/wireless/realtimechat/proto/Experiments$Config;)Lcom/google/wireless/realtimechat/proto/Experiments$Config$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1877
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1853
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->getSerializedSize()I

    .line 1854
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1855
    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Experiments$Config;->experimentMapping_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1854
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1857
    :cond_1b
    return-void
.end method
