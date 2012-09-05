.class public final Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$PlusOneDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;",
        ">;",
        "Lcom/google/wireless/tacotruck/proto/Data$PlusOneDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private countData_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;"
        }
    .end annotation
.end field

.field private plusoneId_:Ljava/lang/Object;

.field private plusonedByViewer_:Z

.field private totalPlusoneCount_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 9692
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 9881
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 9970
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 9693
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->maybeForceBuilderInitialization()V

    .line 9694
    return-void
.end method

.method static synthetic access$12300(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9687
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12400()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 1

    .prologue
    .line 9687
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 9733
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    .line 9734
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 9735
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 9738
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 1

    .prologue
    .line 9699
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCountDataIsMutable()V
    .registers 3

    .prologue
    .line 9884
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    .line 9885
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 9886
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9888
    :cond_16
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 9697
    return-void
.end method


# virtual methods
.method public addAllCountData(Ljava/lang/Iterable;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;)",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;"
        }
    .end annotation

    .prologue
    .line 9951
    .local p1, values:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;>;"
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 9952
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 9954
    return-object p0
.end method

.method public addCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 9944
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 9945
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9947
    return-object p0
.end method

.method public addCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9927
    if-nez p2, :cond_8

    .line 9928
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9930
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 9931
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 9933
    return-object p0
.end method

.method public addCountData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "builderForValue"

    .prologue
    .line 9937
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 9938
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9940
    return-object p0
.end method

.method public addCountData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9917
    if-nez p1, :cond_8

    .line 9918
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9920
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 9921
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9923
    return-object p0
.end method

.method public build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 3

    .prologue
    .line 9724
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    .line 9725
    .local v0, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 9726
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 9728
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 6

    .prologue
    .line 9742
    new-instance v1, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V

    .line 9743
    .local v1, result:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9744
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 9745
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 9746
    or-int/lit8 v2, v2, 0x1

    .line 9748
    :cond_10
    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusonedByViewer_:Z
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$12602(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Z)Z

    .line 9749
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 9750
    or-int/lit8 v2, v2, 0x2

    .line 9752
    :cond_1c
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->totalPlusoneCount_:I
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$12702(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)I

    .line 9753
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_36

    .line 9754
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 9755
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v3, v3, -0x5

    iput v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9757
    :cond_36
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$12802(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/util/List;)Ljava/util/List;

    .line 9758
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_43

    .line 9759
    or-int/lit8 v2, v2, 0x4

    .line 9761
    :cond_43
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->plusoneId_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$12902(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9762
    #setter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$13002(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;I)I

    .line 9763
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 9687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 9703
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 9704
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    .line 9705
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9706
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    .line 9707
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9708
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 9709
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9710
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 9711
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9712
    return-object p0
.end method

.method public clearCountData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 9957
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 9958
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9960
    return-object p0
.end method

.method public clearPlusoneId()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 9994
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9995
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 9997
    return-object p0
.end method

.method public clearPlusonedByViewer()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 9853
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9854
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    .line 9856
    return-object p0
.end method

.method public clearTotalPlusoneCount()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 2

    .prologue
    .line 9874
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9875
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    .line 9877
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 9687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 9687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3

    .prologue
    .line 9716
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

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
    .line 9687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->clone()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCountData(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;
    .registers 3
    .parameter "index"

    .prologue
    .line 9897
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    return-object v0
.end method

.method public getCountDataCount()I
    .registers 2

    .prologue
    .line 9894
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCountDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9891
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 9687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 9687
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    .registers 2

    .prologue
    .line 9720
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    return-object v0
.end method

.method public getPlusoneId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 9975
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 9976
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 9977
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9978
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 9981
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPlusonedByViewer()Z
    .registers 2

    .prologue
    .line 9844
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    return v0
.end method

.method public getTotalPlusoneCount()I
    .registers 2

    .prologue
    .line 9865
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    return v0
.end method

.method public hasPlusoneId()Z
    .registers 3

    .prologue
    .line 9972
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPlusonedByViewer()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9841
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasTotalPlusoneCount()Z
    .registers 3

    .prologue
    .line 9862
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
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
    .line 9687
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

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
    .line 9687
    invoke-virtual {p0, p1, p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 6
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9799
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 9800
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_44

    .line 9805
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9807
    :sswitch_d
    return-object p0

    .line 9812
    :sswitch_e
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9813
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    goto :goto_0

    .line 9817
    :sswitch_1b
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9818
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    goto :goto_0

    .line 9822
    :sswitch_28
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;

    move-result-object v0

    .line 9823
    .local v0, subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 9824
    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->buildPartial()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->addCountData(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    goto :goto_0

    .line 9828
    .end local v0           #subBuilder:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;
    :sswitch_37
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9829
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    goto :goto_0

    .line 9800
    :sswitch_data_44
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1b
        0x1a -> :sswitch_28
        0x22 -> :sswitch_37
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "other"

    .prologue
    .line 9767
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 9787
    :cond_6
    :goto_6
    return-object p0

    .line 9768
    :cond_7
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusonedByViewer()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 9769
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 9771
    :cond_14
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasTotalPlusoneCount()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 9772
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getTotalPlusoneCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    .line 9774
    :cond_21
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$12800(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 9775
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 9776
    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$12800(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    .line 9777
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9784
    :cond_3f
    :goto_3f
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9785
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;

    goto :goto_6

    .line 9779
    :cond_4d
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 9780
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    #getter for: Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->countData_:Ljava/util/List;
    invoke-static {p1}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->access$12800(Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3f
.end method

.method public setCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 5
    .parameter "index"
    .parameter "builderForValue"

    .prologue
    .line 9911
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 9912
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData$Builder;->build()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9914
    return-object p0
.end method

.method public setCountData(ILcom/google/wireless/tacotruck/proto/Data$PlusOneData$CountData;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 4
    .parameter "index"
    .parameter "value"

    .prologue
    .line 9901
    if-nez p2, :cond_8

    .line 9902
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9904
    :cond_8
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->ensureCountDataIsMutable()V

    .line 9905
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->countData_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9907
    return-object p0
.end method

.method public setPlusoneId(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9985
    if-nez p1, :cond_8

    .line 9986
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9988
    :cond_8
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9989
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusoneId_:Ljava/lang/Object;

    .line 9991
    return-object p0
.end method

.method public setPlusonedByViewer(Z)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9847
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9848
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->plusonedByViewer_:Z

    .line 9850
    return-object p0
.end method

.method public setTotalPlusoneCount(I)Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 9868
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->bitField0_:I

    .line 9869
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData$Builder;->totalPlusoneCount_:I

    .line 9871
    return-object p0
.end method
