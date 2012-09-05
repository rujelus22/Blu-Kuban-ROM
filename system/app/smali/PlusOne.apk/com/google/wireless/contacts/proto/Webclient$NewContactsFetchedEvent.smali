.class public final Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Webclient.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NewContactsFetchedEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

.field private isFirst_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private noData_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1153
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    .line 1154
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->initFields()V

    .line 1155
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 757
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 806
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->memoizedIsInitialized:B

    .line 829
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->memoizedSerializedSize:I

    .line 758
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;Lcom/google/wireless/contacts/proto/Webclient$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;-><init>(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 759
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 806
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->memoizedIsInitialized:B

    .line 829
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->memoizedSerializedSize:I

    .line 759
    return-void
.end method

.method static synthetic access$1402(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;Lcom/google/wireless/contacts/proto/Webclient$FetchStage;)Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->isFirst_:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    iput-boolean p1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->noData_:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 752
    iput p1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    .registers 1

    .prologue
    .line 763
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 802
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$FetchStage;->getDefaultInstance()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    .line 803
    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->isFirst_:Z

    .line 804
    iput-boolean v1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->noData_:Z

    .line 805
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 1

    .prologue
    .line 925
    #calls: Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->create()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->access$1200()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 928
    invoke-static {}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->newBuilder()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;)Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;
    .registers 2

    .prologue
    .line 767
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->defaultInstance:Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;

    return-object v0
.end method

.method public getFetchStage()Lcom/google/wireless/contacts/proto/Webclient$FetchStage;
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    return-object v0
.end method

.method public getIsFirst()Z
    .registers 2

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->isFirst_:Z

    return v0
.end method

.method public getNoData()Z
    .registers 2

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->noData_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 831
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->memoizedSerializedSize:I

    .line 832
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 848
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 834
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 835
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 836
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 839
    :cond_17
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_24

    .line 840
    iget-boolean v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->isFirst_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 843
    :cond_24
    iget v2, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_33

    .line 844
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->noData_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 847
    :cond_33
    iput v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->memoizedSerializedSize:I

    move v1, v0

    .line 848
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasFetchStage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 775
    iget v1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasIsFirst()Z
    .registers 3

    .prologue
    .line 785
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

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

.method public hasNoData()Z
    .registers 3

    .prologue
    .line 795
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 808
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->memoizedIsInitialized:B

    .line 809
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 812
    :goto_8
    return v1

    .line 809
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 811
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 855
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

    .line 817
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->getSerializedSize()I

    .line 818
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 819
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->fetchStage_:Lcom/google/wireless/contacts/proto/Webclient$FetchStage;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 821
    :cond_10
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1b

    .line 822
    iget-boolean v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->isFirst_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 824
    :cond_1b
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_28

    .line 825
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/contacts/proto/Webclient$NewContactsFetchedEvent;->noData_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 827
    :cond_28
    return-void
.end method
