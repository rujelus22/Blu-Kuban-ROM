.class public final Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Data$ExpandedDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExpandedData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

.field private static final serialVersionUID:J


# instance fields
.field private actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

.field private bitField0_:I

.field private comment_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;"
        }
    .end annotation
.end field

.field private likingUserId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

.field private media_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 4516
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    .line 4517
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->initFields()V

    .line 4518
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3671
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3779
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedIsInitialized:B

    .line 3817
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedSerializedSize:I

    .line 3672
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;Lcom/google/wireless/tacotruck/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3666
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;-><init>(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3673
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3779
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedIsInitialized:B

    .line 3817
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedSerializedSize:I

    .line 3673
    return-void
.end method

.method static synthetic access$4800(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$Location;)Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3666
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5202(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$ReshareData;)Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    return-object p1
.end method

.method static synthetic access$5302(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;Lcom/google/wireless/tacotruck/proto/Data$ActionState;)Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3666
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3666
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 1

    .prologue
    .line 3677
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 3772
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    .line 3773
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    .line 3774
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 3775
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    .line 3776
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ReshareData;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    .line 3777
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ActionState;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    .line 3778
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 1

    .prologue
    .line 3930
    #calls: Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->create()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->access$4600()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3933
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->newBuilder()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;)Lcom/google/wireless/tacotruck/proto/Data$ExpandedData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
    .registers 2

    .prologue
    .line 3768
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    return-object v0
.end method

.method public getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
    .registers 3
    .parameter "index"

    .prologue
    .line 3720
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Comment;

    return-object v0
.end method

.method public getCommentCount()I
    .registers 2

    .prologue
    .line 3717
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCommentList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3710
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public getCommentOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3724
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;

    return-object v0
.end method

.method public getCommentOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$CommentOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3714
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3666
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;
    .registers 2

    .prologue
    .line 3681
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;

    return-object v0
.end method

.method public getLikingUserId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 3748
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLikingUserIdCount()I
    .registers 2

    .prologue
    .line 3745
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLikingUserIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3742
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    return-object v0
.end method

.method public getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
    .registers 2

    .prologue
    .line 3734
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    return-object v0
.end method

.method public getMedia(I)Lcom/google/wireless/tacotruck/proto/Data$Media;
    .registers 3
    .parameter "index"

    .prologue
    .line 3699
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media;

    return-object v0
.end method

.method public getMediaCount()I
    .registers 2

    .prologue
    .line 3696
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMediaList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3689
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    return-object v0
.end method

.method public getMediaOrBuilder(I)Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 3703
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;

    return-object v0
.end method

.method public getMediaOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/tacotruck/proto/Data$MediaOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3693
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    return-object v0
.end method

.method public getReshareData()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
    .registers 2

    .prologue
    .line 3758
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 3819
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedSerializedSize:I

    .line 3820
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_9

    move v3, v2

    .line 3853
    .end local v2           #size:I
    .local v3, size:I
    :goto_8
    return v3

    .line 3822
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_9
    const/4 v2, 0x0

    .line 3823
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_23

    .line 3824
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3823
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 3827
    :cond_23
    const/4 v1, 0x0

    :goto_24
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3c

    .line 3828
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3827
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 3831
    :cond_3c
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_4a

    .line 3832
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3836
    :cond_4a
    const/4 v0, 0x0

    .line 3837
    .local v0, dataSize:I
    const/4 v1, 0x0

    :goto_4c
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_68

    .line 3838
    iget-object v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 3837
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 3841
    :cond_68
    add-int/2addr v2, v0

    .line 3842
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getLikingUserIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 3844
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_82

    .line 3845
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3848
    :cond_82
    iget v4, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_91

    .line 3849
    const/4 v4, 0x6

    iget-object v5, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 3852
    :cond_91
    iput v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedSerializedSize:I

    move v3, v2

    .line 3853
    .end local v2           #size:I
    .restart local v3       #size:I
    goto/16 :goto_8
.end method

.method public hasActionState()Z
    .registers 3

    .prologue
    .line 3765
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

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

.method public hasLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3731
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasReshareData()Z
    .registers 3

    .prologue
    .line 3755
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3781
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedIsInitialized:B

    .line 3782
    .local v0, isInitialized:B
    const/4 v3, -0x1

    if-eq v0, v3, :cond_c

    if-ne v0, v1, :cond_a

    .line 3791
    :goto_9
    return v1

    :cond_a
    move v1, v2

    .line 3782
    goto :goto_9

    .line 3784
    :cond_c
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3785
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/wireless/tacotruck/proto/Data$Location;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_20

    .line 3786
    iput-byte v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedIsInitialized:B

    move v1, v2

    .line 3787
    goto :goto_9

    .line 3790
    :cond_20
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->memoizedIsInitialized:B

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
    .line 3860
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3796
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->getSerializedSize()I

    .line 3797
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 3798
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->media_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3797
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3800
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 3801
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->comment_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3800
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 3803
    :cond_34
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_40

    .line 3804
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->location_:Lcom/google/wireless/tacotruck/proto/Data$Location;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3806
    :cond_40
    const/4 v0, 0x0

    :goto_41
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 3807
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->likingUserId_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v4, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 3806
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 3809
    :cond_5b
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_67

    .line 3810
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->reshareData_:Lcom/google/wireless/tacotruck/proto/Data$ReshareData;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3812
    :cond_67
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_73

    .line 3813
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Data$ExpandedData;->actionState_:Lcom/google/wireless/tacotruck/proto/Data$ActionState;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 3815
    :cond_73
    return-void
.end method
