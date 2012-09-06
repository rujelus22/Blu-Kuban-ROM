.class public final Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlusEventItem.java"

# interfaces
.implements Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/embeds/PlusEventItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlusEventDisplayContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private descriptionHtml_:Ljava/lang/Object;

.field private descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

.field private eventTimeRange_:Ljava/lang/Object;

.field private eventTimeStart_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private videoEmbedUrl_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 5421
    new-instance v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;-><init>(Z)V

    sput-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    .line 5422
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    invoke-direct {v0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->initFields()V

    .line 5423
    return-void
.end method

.method private constructor <init>(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 4771
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 4930
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->memoizedIsInitialized:B

    .line 4959
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->memoizedSerializedSize:I

    .line 4772
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;Lcom/google/protos/embeds/PlusEventItem$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4766
    invoke-direct {p0, p1}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;-><init>(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 4773
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4930
    iput-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->memoizedIsInitialized:B

    .line 4959
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->memoizedSerializedSize:I

    .line 4773
    return-void
.end method

.method static synthetic access$6402(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4766
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeStart_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6502(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4766
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeRange_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6602(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4766
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionHtml_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6702(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Lcom/google/apps/tacotown/proto/data/ViewSegments;)Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4766
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    return-object p1
.end method

.method static synthetic access$6802(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4766
    iput-object p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->videoEmbedUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6902(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4766
    iput p1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .registers 1

    .prologue
    .line 4777
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    return-object v0
.end method

.method private getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4870
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionHtml_:Ljava/lang/Object;

    .line 4871
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4872
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4874
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionHtml_:Ljava/lang/Object;

    .line 4877
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

.method private getEventTimeRangeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4838
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeRange_:Ljava/lang/Object;

    .line 4839
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4840
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4842
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeRange_:Ljava/lang/Object;

    .line 4845
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

.method private getEventTimeStartBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4806
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeStart_:Ljava/lang/Object;

    .line 4807
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4808
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4810
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeStart_:Ljava/lang/Object;

    .line 4813
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

.method private getVideoEmbedUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 4912
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->videoEmbedUrl_:Ljava/lang/Object;

    .line 4913
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 4914
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4916
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->videoEmbedUrl_:Ljava/lang/Object;

    .line 4919
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
    .line 4924
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeStart_:Ljava/lang/Object;

    .line 4925
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeRange_:Ljava/lang/Object;

    .line 4926
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionHtml_:Ljava/lang/Object;

    .line 4927
    invoke-static {}, Lcom/google/apps/tacotown/proto/data/ViewSegments;->getDefaultInstance()Lcom/google/apps/tacotown/proto/data/ViewSegments;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    .line 4928
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->videoEmbedUrl_:Ljava/lang/Object;

    .line 4929
    return-void
.end method

.method public static newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 1

    .prologue
    .line 5063
    #calls: Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->create()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->access$6200()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 5066
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;->mergeFrom(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 4766
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;
    .registers 2

    .prologue
    .line 4781
    sget-object v0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->defaultInstance:Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;

    return-object v0
.end method

.method public getDescriptionHtml()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4856
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionHtml_:Ljava/lang/Object;

    .line 4857
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4858
    check-cast v1, Ljava/lang/String;

    .line 4866
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4860
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4862
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4863
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4864
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionHtml_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4866
    goto :goto_8
.end method

.method public getDescriptionSegments()Lcom/google/apps/tacotown/proto/data/ViewSegments;
    .registers 2

    .prologue
    .line 4888
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    return-object v0
.end method

.method public getEventTimeRange()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4824
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeRange_:Ljava/lang/Object;

    .line 4825
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4826
    check-cast v1, Ljava/lang/String;

    .line 4834
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4828
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4830
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4831
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4832
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeRange_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4834
    goto :goto_8
.end method

.method public getEventTimeStart()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4792
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeStart_:Ljava/lang/Object;

    .line 4793
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4794
    check-cast v1, Ljava/lang/String;

    .line 4802
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4796
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4798
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4799
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4800
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->eventTimeStart_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4802
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4961
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->memoizedSerializedSize:I

    .line 4962
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 4986
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 4964
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 4965
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 4966
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getEventTimeStartBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4969
    :cond_1a
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 4970
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getEventTimeRangeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4973
    :cond_29
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 4974
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4977
    :cond_39
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 4978
    iget-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4981
    :cond_48
    iget v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5a

    .line 4982
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getVideoEmbedUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4985
    :cond_5a
    iput v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->memoizedSerializedSize:I

    move v1, v0

    .line 4986
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getVideoEmbedUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 4898
    iget-object v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->videoEmbedUrl_:Ljava/lang/Object;

    .line 4899
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 4900
    check-cast v1, Ljava/lang/String;

    .line 4908
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 4902
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4904
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4905
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 4906
    iput-object v2, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->videoEmbedUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 4908
    goto :goto_8
.end method

.method public hasDescriptionHtml()Z
    .registers 3

    .prologue
    .line 4853
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

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

.method public hasDescriptionSegments()Z
    .registers 3

    .prologue
    .line 4885
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

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

.method public hasEventTimeRange()Z
    .registers 3

    .prologue
    .line 4821
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

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

.method public hasEventTimeStart()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 4789
    iget v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasVideoEmbedUrl()Z
    .registers 3

    .prologue
    .line 4895
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 4932
    iget-byte v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->memoizedIsInitialized:B

    .line 4933
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 4936
    :goto_8
    return v1

    .line 4933
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 4935
    :cond_b
    iput-byte v1, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4766
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 2

    .prologue
    .line 5064
    invoke-static {}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->newBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 4766
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->toBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;
    .registers 2

    .prologue
    .line 5068
    invoke-static {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->newBuilder(Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;)Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent$Builder;

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
    .line 4993
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 4941
    invoke-virtual {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getSerializedSize()I

    .line 4942
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 4943
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getEventTimeStartBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4945
    :cond_13
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 4946
    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getEventTimeRangeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4948
    :cond_20
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 4949
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getDescriptionHtmlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4951
    :cond_2e
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 4952
    iget-object v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->descriptionSegments_:Lcom/google/apps/tacotown/proto/data/ViewSegments;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 4954
    :cond_3b
    iget v0, p0, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4b

    .line 4955
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/protos/embeds/PlusEventItem$PlusEventDisplayContent;->getVideoEmbedUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4957
    :cond_4b
    return-void
.end method
