.class public final Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetPhotoConsumptionStreamRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private focusGroupId_:Ljava/lang/Object;

.field private gaiaGroupId_:Ljava/lang/Object;

.field private maxPhotoCountPerAlbum_:I

.field private maxPhotoCount_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offset_:I

.field private photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

.field private returnComments_:Z

.field private returnShapes_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30608
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    .line 30609
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->initFields()V

    .line 30610
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 29873
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30021
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->memoizedIsInitialized:B

    .line 30059
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->memoizedSerializedSize:I

    .line 29874
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 29875
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30021
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->memoizedIsInitialized:B

    .line 30059
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->memoizedSerializedSize:I

    .line 29875
    return-void
.end method

.method static synthetic access$41502(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCount_:I

    return p1
.end method

.method static synthetic access$41602(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCountPerAlbum_:I

    return p1
.end method

.method static synthetic access$41702(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->offset_:I

    return p1
.end method

.method static synthetic access$41802(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnComments_:Z

    return p1
.end method

.method static synthetic access$41902(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->focusGroupId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42002(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->gaiaGroupId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$42102(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnShapes_:Z

    return p1
.end method

.method static synthetic access$42202(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;)Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object p1
.end method

.method static synthetic access$42302(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29868
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    .registers 1

    .prologue
    .line 29879
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    return-object v0
.end method

.method private getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29948
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->focusGroupId_:Ljava/lang/Object;

    .line 29949
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29950
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29952
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->focusGroupId_:Ljava/lang/Object;

    .line 29955
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

.method private getGaiaGroupIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 29980
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->gaiaGroupId_:Ljava/lang/Object;

    .line 29981
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 29982
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 29984
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->gaiaGroupId_:Ljava/lang/Object;

    .line 29987
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 30012
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCount_:I

    .line 30013
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCountPerAlbum_:I

    .line 30014
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->offset_:I

    .line 30015
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnComments_:Z

    .line 30016
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->focusGroupId_:Ljava/lang/Object;

    .line 30017
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->gaiaGroupId_:Ljava/lang/Object;

    .line 30018
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnShapes_:Z

    .line 30019
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    .line 30020
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 1

    .prologue
    .line 30175
    #calls: Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->access$41300()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30178
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;->mergeFrom(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 29868
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;
    .registers 2

    .prologue
    .line 29883
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;

    return-object v0
.end method

.method public getFocusGroupId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29934
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->focusGroupId_:Ljava/lang/Object;

    .line 29935
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29936
    check-cast v1, Ljava/lang/String;

    .line 29944
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29938
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29940
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29941
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29942
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->focusGroupId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29944
    goto :goto_8
.end method

.method public getGaiaGroupId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 29966
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->gaiaGroupId_:Ljava/lang/Object;

    .line 29967
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 29968
    check-cast v1, Ljava/lang/String;

    .line 29976
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 29970
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 29972
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 29973
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 29974
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->gaiaGroupId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 29976
    goto :goto_8
.end method

.method public getMaxPhotoCount()I
    .registers 2

    .prologue
    .line 29894
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCount_:I

    return v0
.end method

.method public getMaxPhotoCountPerAlbum()I
    .registers 2

    .prologue
    .line 29904
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCountPerAlbum_:I

    return v0
.end method

.method public getOffset()I
    .registers 2

    .prologue
    .line 29914
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->offset_:I

    return v0
.end method

.method public getPhotoOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;
    .registers 2

    .prologue
    .line 30008
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    return-object v0
.end method

.method public getReturnComments()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29924
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnComments_:Z

    return v0
.end method

.method public getReturnShapes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29998
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnShapes_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 30061
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->memoizedSerializedSize:I

    .line 30062
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    move v1, v0

    .line 30098
    .end local v0           #size:I
    .local v1, size:I
    :goto_b
    return v1

    .line 30064
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_c
    const/4 v0, 0x0

    .line 30065
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 30066
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCount_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 30069
    :cond_1a
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_27

    .line 30070
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCountPerAlbum_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 30073
    :cond_27
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_35

    .line 30074
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->offset_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 30077
    :cond_35
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_42

    .line 30078
    iget-boolean v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnComments_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 30081
    :cond_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_54

    .line 30082
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30085
    :cond_54
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_66

    .line 30086
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getGaiaGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30089
    :cond_66
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_76

    .line 30090
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnShapes_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 30093
    :cond_76
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_85

    .line 30094
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 30097
    :cond_85
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 30098
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_b
.end method

.method public hasFocusGroupId()Z
    .registers 3

    .prologue
    .line 29931
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

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

.method public hasGaiaGroupId()Z
    .registers 3

    .prologue
    .line 29963
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasMaxPhotoCount()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 29891
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasMaxPhotoCountPerAlbum()Z
    .registers 3

    .prologue
    .line 29901
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

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

.method public hasOffset()Z
    .registers 3

    .prologue
    .line 29911
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

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

.method public hasPhotoOptions()Z
    .registers 3

    .prologue
    .line 30005
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

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
    .line 29921
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

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

.method public hasReturnShapes()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29995
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

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

    .line 30023
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->memoizedIsInitialized:B

    .line 30024
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 30027
    :goto_8
    return v1

    .line 30024
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 30026
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29868
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 30176
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 29868
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;
    .registers 2

    .prologue
    .line 30180
    invoke-static {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->newBuilder(Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;)Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest$Builder;

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
    .line 30105
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
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 30032
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getSerializedSize()I

    .line 30033
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 30034
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCount_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 30036
    :cond_13
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1e

    .line 30037
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->maxPhotoCountPerAlbum_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 30039
    :cond_1e
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2a

    .line 30040
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->offset_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 30042
    :cond_2a
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_35

    .line 30043
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnComments_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30045
    :cond_35
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_45

    .line 30046
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getFocusGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30048
    :cond_45
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_55

    .line 30049
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->getGaiaGroupIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30051
    :cond_55
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_63

    .line 30052
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->returnShapes_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30054
    :cond_63
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_70

    .line 30055
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetPhotoConsumptionStreamRequest;->photoOptions_:Lcom/google/wireless/tacotruck/proto/Network$PhotoOptions;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 30057
    :cond_70
    return-void
.end method
