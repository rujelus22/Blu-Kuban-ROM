.class public final Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SearchRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

.field private searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48226
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    .line 48227
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->initFields()V

    .line 48228
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 47766
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 47815
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedIsInitialized:B

    .line 47844
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedSerializedSize:I

    .line 47767
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47761
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 47768
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 47815
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedIsInitialized:B

    .line 47844
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedSerializedSize:I

    .line 47768
    return-void
.end method

.method static synthetic access$67602(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;)Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47761
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    return-object p1
.end method

.method static synthetic access$67702(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;)Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47761
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    return-object p1
.end method

.method static synthetic access$67802(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;)Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47761
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    return-object p1
.end method

.method static synthetic access$67902(Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47761
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    .registers 1

    .prologue
    .line 47772
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 47811
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    .line 47812
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    .line 47813
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    .line 47814
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    .registers 1

    .prologue
    .line 47940
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;->access$67400()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityRequestData()Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;
    .registers 2

    .prologue
    .line 47807
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 47761
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;
    .registers 2

    .prologue
    .line 47776
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;

    return-object v0
.end method

.method public getPeopleRequestData()Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;
    .registers 2

    .prologue
    .line 47797
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    return-object v0
.end method

.method public getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;
    .registers 2

    .prologue
    .line 47787
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 47846
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedSerializedSize:I

    .line 47847
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 47863
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 47849
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 47850
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 47851
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47854
    :cond_17
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 47855
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47858
    :cond_24
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 47859
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 47862
    :cond_33
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 47863
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasActivityRequestData()Z
    .registers 3

    .prologue
    .line 47804
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasPeopleRequestData()Z
    .registers 3

    .prologue
    .line 47794
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

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

.method public hasSearchQuery()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 47784
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47817
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedIsInitialized:B

    .line 47818
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 47827
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 47818
    goto :goto_9

    .line 47820
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->hasSearchQuery()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 47821
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getSearchQuery()Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 47822
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedIsInitialized:B

    move v1, v2

    .line 47823
    goto :goto_9

    .line 47826
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 47870
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 47832
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->getSerializedSize()I

    .line 47833
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 47834
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->searchQuery_:Lcom/google/wireless/tacotruck/proto/Data$SearchQuery;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47836
    :cond_10
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 47837
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->peopleRequestData_:Lcom/google/wireless/tacotruck/proto/Data$PeopleRequestData;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47839
    :cond_1b
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 47840
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SearchRequest;->activityRequestData_:Lcom/google/wireless/tacotruck/proto/Data$ActivityRequestData;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 47842
    :cond_28
    return-void
.end method
