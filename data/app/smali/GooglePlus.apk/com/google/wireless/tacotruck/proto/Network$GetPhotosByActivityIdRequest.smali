.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotosByActivityIdRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

.field private static final serialVersionUID:J


# instance fields
.field private activityId_:Ljava/lang/Object;

.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z

.field private returnUrls_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43326
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    .line 43327
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->initFields()V

    .line 43328
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 42787
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 42880
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->memoizedIsInitialized:B

    .line 42909
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->memoizedSerializedSize:I

    .line 42788
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42782
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 42789
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 42880
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->memoizedIsInitialized:B

    .line 42909
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->memoizedSerializedSize:I

    .line 42789
    return-void
.end method

.method static synthetic access$59702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42782
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->activityId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$59802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42782
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnUrls_:Z

    return p1
.end method

.method static synthetic access$59902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42782
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$60002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42782
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$60102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42782
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$60202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42782
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    return p1
.end method

.method private getActivityIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 42822
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->activityId_:Ljava/lang/Object;

    .line 42823
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 42824
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 42826
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->activityId_:Ljava/lang/Object;

    .line 42829
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

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    .registers 1

    .prologue
    .line 42793
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 42874
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->activityId_:Ljava/lang/Object;

    .line 42875
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnUrls_:Z

    .line 42876
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnComments_:Z

    .line 42877
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnShapes_:Z

    .line 42878
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 42879
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 1

    .prologue
    .line 43013
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->access$59500()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 43016
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActivityId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 42808
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->activityId_:Ljava/lang/Object;

    .line 42809
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 42810
    check-cast v1, Ljava/lang/String;

    .line 42818
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 42812
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 42814
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 42815
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 42816
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->activityId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 42818
    goto :goto_8
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 42782
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;
    .registers 2

    .prologue
    .line 42797
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;

    return-object v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 42870
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42850
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42860
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnShapes_:Z

    return v0
.end method

.method public getReturnUrls()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42840
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnUrls_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 42911
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->memoizedSerializedSize:I

    .line 42912
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 42936
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 42914
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 42915
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 42916
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42919
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 42920
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnUrls_:Z

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 42923
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 42924
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnComments_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 42927
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 42928
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnShapes_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 42931
    :cond_44
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 42932
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 42935
    :cond_54
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 42936
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasActivityId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 42805
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 42867
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

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

.method public hasReturnComments()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42847
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42857
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

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

.method public hasReturnUrls()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42837
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 42882
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->memoizedIsInitialized:B

    .line 42883
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 42886
    :goto_8
    return v1

    .line 42883
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 42885
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42782
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2

    .prologue
    .line 43014
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 42782
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;
    .registers 2

    .prologue
    .line 43018
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest$Builder;

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
    .line 42943
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

    .line 42891
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getSerializedSize()I

    .line 42892
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 42893
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->getActivityIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 42895
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 42896
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnUrls_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 42898
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 42899
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnComments_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 42901
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 42902
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->returnShapes_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 42904
    :cond_37
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 42905
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotosByActivityIdRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 42907
    :cond_45
    return-void
.end method
