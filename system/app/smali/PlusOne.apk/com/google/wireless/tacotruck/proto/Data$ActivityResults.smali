.class public final Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ActivityResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActivityResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

.field private static final serialVersionUID:J


# instance fields
.field private activity_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private shownActivitiesBlob_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 40137
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    .line 40138
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->initFields()V

    .line 40139
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39683
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 39754
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedIsInitialized:B

    .line 39780
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedSerializedSize:I

    .line 39684
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39678
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39685
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39754
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedIsInitialized:B

    .line 39780
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedSerializedSize:I

    .line 39685
    return-void
.end method

.method static synthetic access$54100(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39678
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$54102(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39678
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$54202(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39678
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->shownActivitiesBlob_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$54302(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39678
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 1

    .prologue
    .line 39689
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    return-object v0
.end method

.method private getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 39739
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 39740
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 39741
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 39743
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 39746
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 39751
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    .line 39752
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 39753
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 1

    .prologue
    .line 39872
    #calls: Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->access$53900()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 39875
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;)Lcom/google/wireless/tacotruck/proto/Data$ActivityResults$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;
    .registers 3
    .parameter "index"

    .prologue
    .line 39711
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    return-object v0
.end method

.method public getActivityCount()I
    .registers 2

    .prologue
    .line 39708
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getActivityList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39701
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    return-object v0
.end method

.method public getActivityOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 39715
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;

    return-object v0
.end method

.method public getActivityOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivityOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39705
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39678
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;
    .registers 2

    .prologue
    .line 39693
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 39782
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedSerializedSize:I

    .line 39783
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    move v2, v1

    .line 39795
    .end local v1           #size:I
    .local v2, size:I
    :goto_7
    return v2

    .line 39785
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_8
    const/4 v1, 0x0

    .line 39786
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_22

    .line 39787
    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 39786
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 39790
    :cond_22
    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_32

    .line 39791
    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v1, v3

    .line 39794
    :cond_32
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedSerializedSize:I

    move v2, v1

    .line 39795
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_7
.end method

.method public getShownActivitiesBlob()Ljava/lang/String;
    .registers 5

    .prologue
    .line 39725
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->shownActivitiesBlob_:Ljava/lang/Object;

    .line 39726
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 39727
    check-cast v1, Ljava/lang/String;

    .line 39735
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 39729
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 39731
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 39732
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 39733
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->shownActivitiesBlob_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 39735
    goto :goto_8
.end method

.method public hasShownActivitiesBlob()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39722
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 39756
    iget-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedIsInitialized:B

    .line 39757
    .local v1, isInitialized:B
    const/4 v4, -0x1

    if-eq v1, v4, :cond_c

    if-ne v1, v2, :cond_a

    .line 39766
    :goto_9
    return v2

    :cond_a
    move v2, v3

    .line 39757
    goto :goto_9

    .line 39759
    :cond_c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getActivityCount()I

    move-result v4

    if-ge v0, v4, :cond_24

    .line 39760
    invoke-virtual {p0, v0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getActivity(I)Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/wireless/tacotruck/proto/Data$PerfectStreamActivity;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_21

    .line 39761
    iput-byte v3, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedIsInitialized:B

    move v2, v3

    .line 39762
    goto :goto_9

    .line 39759
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 39765
    :cond_24
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->memoizedIsInitialized:B

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
    .line 39802
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
    const/4 v2, 0x1

    .line 39771
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getSerializedSize()I

    .line 39772
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 39773
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->activity_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39772
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 39775
    :cond_1b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_29

    .line 39776
    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Data$ActivityResults;->getShownActivitiesBlobBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 39778
    :cond_29
    return-void
.end method
